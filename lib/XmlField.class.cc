// =====================================================================================
// 
//       Filename:  XmlField.class.cc
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  15/06/09 11:42:37
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#include "xml_serialisation/XmlField.class.h"
#include <algorithm>
#include "boost/lambda/lambda.hpp"
#include "boost/lambda/bind.hpp"
#include <sstream>
#include <iterator>

using namespace XML_SERIALISATION;

using namespace CALLBACK_LOG;

using namespace std;

const unsigned long XML_SERIALISATION::XmlFieldShiftWidth(3);

bool XmlField::pretty_print(true);

XmlField::XmlField(const string& _name): value_set(false)
{
   check_field_name(_name);
   name = _name;
}

void XmlField::add_field(const string& _name)
{
   check_field_name(_name);

   XmlField tmp(_name);

   add_field(tmp);
}

void XmlField::add_field(const XmlField& x)
{
   children.insert( pair<string,XmlField>(x.get_name(),x) );
}

const string& XmlField::get_name() const
{
   return name;
}

const bool XmlField::is_valid_field_name(const string& candidate_name) const
{
   const char* bad_chars = " \n\t\"'$#%;";

   size_t res = candidate_name.find_first_of(bad_chars);

   return (res == string::npos);
}

void XmlField::check_field_name(const string& candidate_name) const
{
   if( !is_valid_field_name(candidate_name) )
      LOG(EXCEPTION, boost::format("The field name <%s> is not a valid XML name\n")
	    % candidate_name);
}

XmlField& XmlField::operator[] (const string& ref_name)
{
   return children.find(ref_name)->second;
}

const XmlField& XmlField::operator[] (const string& ref_name) const
{
   return children.find(ref_name)->second;
}

XmlField& XmlField::get_field(const string& ref_name)
{
   int count = children.count(ref_name);

   if(count == 0)
      LOG(CALLBACK_LOG::EXCEPTION,
	    boost::format
	    ("The xml field %s has no sub-field with name %s\n")
	    % name % ref_name);
   else if(count == 1)
      return children.find(ref_name)->second;
   else
      LOG(CALLBACK_LOG::EXCEPTION,boost::format
	    ("More than one sub-field with name %s found in field %s\n")
	    % ref_name % name);
}

pair<XmlField::const_field_iterator, XmlField::const_field_iterator>
   XmlField::get_field_range(const std::string& ref_name) const
{
   return children.equal_range(ref_name);
}

const bool XmlField::field_exists(const string& ref_name) const
{
   return (children.count(ref_name) > 0);
}

 const XmlField* XmlField::validate_path(
      list<string>::const_iterator path_begin,
      list<string>::const_iterator path_end) const
{
   const XmlField* current_field = this;

   list<string>::const_iterator xp = path_begin;

   while( xp != path_end && current_field->field_exists(*xp) )
      current_field = &(*current_field)[*(xp++)];

   if( xp == path_end)
      return current_field;
   else
      return 0;
}

const map<string,XmlField::attribute_value>& XmlField::get_attributes() const
{
   return attributes;
}

XmlField::attribute_value& XmlField::operator() (const string& ref_attr)
{
   check_field_name(ref_attr);

   return attributes[ref_attr];
}

const string XmlField::string_format(const string& fmt) const
{
   string kv_sep, map_open, map_close, attr_sep, field_sep, 
	  k_quote, v_quote;

   ostringstream oss;

   if(fmt == string("XML_line"))
   {
      bool prev_pp = XmlField::pretty_print;
      XmlField::pretty_print = false;
      oss << *this;
      XmlField::pretty_print = prev_pp;
   }
   else if(fmt == string("qXML_line"))
   {
      bool prev_pp = XmlField::pretty_print;
      XmlField::pretty_print = false;
      oss << "'" << *this << "'";
      XmlField::pretty_print = prev_pp;
   }
   else
   {
      if( fmt == string("Python"))
      {
	 kv_sep = ": ";
	 map_open = "{ ";
	 map_close = " }";
	 attr_sep = ", ";
	 field_sep = ", ";
	 k_quote = "'";
	 v_quote = "'";
      }
      else
      {
	 LOG(EXCEPTION, boost::format(
		  "XmlField::string_format - unknown format "\
		  "specifier %s\n") % fmt
	    );
      }

      oss << k_quote << name << k_quote << kv_sep << map_open;

      bool list_started = false;

      if(value_set)
      {
	 oss << v_quote << value << v_quote;
	 list_started = true;
      }

      if (!attributes.empty())
      {
	 if(list_started)
	    oss << attr_sep;

	 map<string,attribute_value>::const_iterator attr0 =
	    attributes.begin();

	 oss << k_quote << attr0->first << k_quote << kv_sep <<
	    v_quote << (string) attr0->second << v_quote;

	 ++attr0;

	 for(map<string,attribute_value>::const_iterator
	       i = attr0; i != attributes.end(); ++i)
	 {
	    oss << attr_sep << k_quote << i->first << k_quote << kv_sep <<
	       v_quote << (string) i->second << v_quote;
	 }

	 list_started = true;
      }

      if(!children.empty())
      {
	 if(list_started)
	    oss << field_sep;

	 multimap<string, XmlField>::const_iterator fld0 =
	    children.begin();

	 oss << fld0->second.string_format(fmt);

	 ++fld0;

	 for(multimap<string,XmlField>::const_iterator
	       j = fld0; j !=  children.end(); ++j)
	    oss << field_sep << j->second.string_format(fmt);
      }

      oss << map_close;
   }
   
   return oss.str();
}

void XmlField::open_tag(ostream& os, unsigned int indent) const
{
   string ind_str(indent*XmlFieldShiftWidth,' ');
   os << ind_str << '<' << name << '>' << endl;
}

const string XmlField::attribute_string() const
{
   using namespace boost::lambda;
   using boost::lambda::bind;
   using boost::lambda::_1;

   typedef pair<string,string> nvp_t;

   ostringstream oss;

   std::for_each( attributes.begin(), attributes.end(),
	    oss  
	     << ret<string>(bind(&nvp_t::first,_1)) << constant("=\"") 
	     << ret<string>(bind(&nvp_t::second,_1)) << constant("\" ")
	 );

   return oss.str();
}

void XmlField::close_tag(ostream& os, unsigned int indent) const
{
   string ind_str(indent*XmlFieldShiftWidth,' ');
   os << ind_str << "</" << name << '>' << endl;
}

void XmlField::print(ostream& os, unsigned int indent) const
{
   LOG(DEBUG,boost::format(
	    "Entering the XmlField::print method for field %s with \
	    indent count %d and %d children\n") % name % indent % children.size()
	 );

   string ind_str_0(indent*XmlFieldShiftWidth,' ');
   string ind_str_1((indent+1)*XmlFieldShiftWidth,' ');
   
   if(XmlField::pretty_print) os << ind_str_0;
   
   os << '<' << name;

   if( !attributes.empty() )
      os << " " << attribute_string();
   
   os << '>';

   if(value_set)
      os << value;
   else
      if(XmlField::pretty_print) 
	 os << endl;

   for(multimap<string, XmlField>::const_iterator
	 i = children.begin(); i!=children.end(); ++i)
   {
      i->second.print(os,indent+1);
   }

   if(!value_set && XmlField::pretty_print) os << ind_str_0;
   os << "</" << name << '>';
   if(XmlField::pretty_print) os << endl;
}

XmlField::operator const string () const
{
   ostringstream oss;
   oss << *this;
   return oss.str();
}

unsigned long XmlField::get_children_number() const
{
   return children.size();
}

XmlField::attribute_value::operator const string() const
{
   return value;
}

const multimap<string, XmlField>& XmlField::get_children() const
{
   return children;
}

XmlField XmlField::operator+= (const XmlField& rhs)
{
   XmlField pre_inc = *this;

   map<string, attribute_value> rhs_attributes =
      rhs.get_attributes();

   multimap<string, XmlField> rhs_children =
      rhs.get_children();

   attributes.insert(rhs_attributes.begin(),rhs_attributes.end());

   children.insert(rhs_children.begin(),rhs_children.end());

   return pre_inc;
}

const string XmlField::attribute_row(
      const list<string>& header, const string& delimiter) const
{
   string row = "";
   map<string,XmlField::attribute_value>::const_iterator av;

   for( list<string>::const_iterator 
	 i = header.begin(); i !=  header.end(); ++i )
   {
      av = attributes.find(*i);
      if( av != attributes.end() )
	 row += (const string) av->second;

      row += delimiter;
   }

   return row;
}
