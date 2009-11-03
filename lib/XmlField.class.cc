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
   children.push_back(x);
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
   using namespace boost::lambda;

   int count = count_if(children.begin(),children.end(),
	 bind(&XmlField::get_name,_1) == ref_name);

   if(count == 0)
      LOG(CALLBACK_LOG::EXCEPTION,
	    boost::format
	    ("The xml field %s has no sub-field with name %s\n")
	    % name % ref_name);
   else if(count == 1)
      return *(
	    find_if(children.begin(),children.end(),
	       bind(&XmlField::get_name,_1) == ref_name )
      );
   else
      LOG(CALLBACK_LOG::EXCEPTION,boost::format
	    ("More than one sub-field with name %s found in field %s\n")
	    % name % ref_name);
}

void XmlField::open_tag(ostream& os, unsigned int indent) const
{
   string ind_str(indent*XmlFieldShiftWidth,' ');
   os << ind_str << '<' << name << '>' << endl;
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
   os << '<' << name << '>';

   if(value_set)
      os << value;
   else
      if(XmlField::pretty_print) 
	 os << endl;

   size_t N = children.size();
   size_t ctr = 0;

   for(list<XmlField>::const_iterator
	 i = children.begin(); i!=children.end(); ++i)
   {
      i->print(os,indent+1);
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
