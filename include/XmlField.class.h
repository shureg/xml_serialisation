// =====================================================================================
// 
//       Filename:  XmlField.class.h
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  15/06/09 11:22:25
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#ifndef  _GLT_XMLFIELD_CLASS_INC
#define  _GLT_XMLFIELD_CLASS_INC

#include <string>
#include <list>
#include <iostream>
#include "boost/lexical_cast.hpp"
#include "boost/signals.hpp"
#include "callback_log/LOG.h"
#include <algorithm>
#include <sstream>
#include "boost/lambda/lambda.hpp"
#include <map>

using namespace CALLBACK_LOG;

namespace XML_SERIALISATION
{
   extern const unsigned long XmlFieldShiftWidth;

   class XmlField
   {
   public:

      typedef std::multimap<std::string, XmlField>::iterator 
	 field_iterator;
      typedef std::multimap<std::string, XmlField>::const_iterator 
	 const_field_iterator;

      class attribute_value
      {
      public:

	 template<typename T> attribute_value& operator = (T);

	 operator const std::string () const;

      protected:

	 std::string value;
      };

      XmlField(const std::string&);

      template<typename T> XmlField(const std::string&, T);

      void add_field(const XmlField&);

      void add_field(const std::string&);

      template<typename T> void add_field(const std::string&, T);

      template<typename T> void add_attribute(const std::string&, T);

      template<class InputIterator> void add_field(
	    const std::string&, 
	    InputIterator first, InputIterator last,
	    const std::string& separator);

      //! Child element accessor
      XmlField& operator[] (const std::string&);

      const XmlField& operator[] (const std::string&) const;

      //! Child element accessor with checking
      XmlField& get_field(const std::string&);

      std::pair<const_field_iterator, const_field_iterator>
	 get_field_range(const std::string&) const;

      const bool field_exists(const std::string&) const;

      const XmlField* validate_path(
	    std::list<std::string>::const_iterator path_begin,
	    std::list<std::string>::const_iterator path_end
	    ) const;

      //! Attribute accessor/creator
      XmlField::attribute_value& operator() (const std::string&);

      const std::string& get_name() const;

      void print(std::ostream&, unsigned int) const;

      unsigned long get_children_number() const;

      void open_tag(std::ostream&,unsigned int=0) const;

      void close_tag(std::ostream&,unsigned int=0) const;

      static bool pretty_print;

      operator const std::string () const;

      //! Returns a row of attributes
      /*! Returns a delimiter-separated row of attributes
       *  that can be used in flat text file represenataion
       *  (e.g. CSV)
       */
      const std::string 
	 attribute_row(
	       const std::list<std::string>& header,
	       const std::string& delimiter = ",") const;

      std::vector<std::list<XmlField>::const_iterator>
	 find_fields(const std::string&) const;

      const std::map<std::string, XmlField::attribute_value>& 
	 get_attributes() const;

      typedef std::map<std::string, attribute_value> attribute_map;

   protected:

      std::string name;

      std::string value;

      std::map<std::string,XmlField::attribute_value> attributes;

      std::multimap<std::string,XmlField> children;

      bool value_set;

      std::list<const_field_iterator> fifo;

      const bool is_valid_field_name(const std::string&) const;

      void check_field_name(const std::string&) const;

      const std::string attribute_string() const;

   private:

      XmlField();
   };

   template<typename T> 
      XmlField::XmlField(const std::string& _name, T _value)
   {
      check_field_name(_name);

      name = _name;

      try
      {
	 value = boost::lexical_cast<std::string>(_value);
      }
      catch(const boost::bad_lexical_cast&)
      {
	 LOG(EXCEPTION,boost::format(
		  "A boost::bad_lexical_cast exception has been thrown "\
		  "whilst trying to cast the value of "\
		  "the \"%s\" field to an std::string") % name);
      }
      catch(...)
      {
	 LOG(EXCEPTION,boost::format(
		  "An unspecified exception has been thrown "\
		  "whilst trying to cast the value of "\
		  "the \"%s\" field to an std::string") % name);
      }

      value_set = true;
   }

   template<typename T>
      XmlField::attribute_value& XmlField::attribute_value::operator = 
      (T _value)
   {

      try
      {
	 value = boost::lexical_cast<std::string>(_value);
      }
      catch(const boost::bad_lexical_cast&)
      {
	 LOG(EXCEPTION,boost::format(
		  "A boost::bad_lexical_cast exception has been thrown "\
		  "whilst trying to cast the value of "\
		  "an attribute to an std::string"));
      }
      catch(...)
      {
	 LOG(EXCEPTION,boost::format(
		  "An unspecified exception has been thrown "\
		  "whilst trying to cast the value of "\
		  "an attribute to an std::string"));
      }

      return *this;
   }

   template<typename T> 
      inline void XmlField::add_attribute(const std::string& _name, T _value)
   {
      check_field_name(_name);

      attributes[_name] = _value;

   }

   template<typename T> 
      inline void XmlField::add_field(const std::string& _name, T _value)
   {
      check_field_name(_name);

      XmlField tmp(_name,_value);

      add_field(tmp);
   }

   template<class InputIterator>
      inline void XmlField::add_field(
	    const std::string& _name,
	    InputIterator first, InputIterator last,
	    const std::string& separator)
      {
	 check_field_name(_name);

	 std::ostringstream oss;

	 using boost::lambda::_1;
	 using boost::lambda::constant;

	 std::for_each(first,last, oss << _1 << constant(separator));

	 std::string raw_list_str = oss.str();

	 XmlField tmp(_name,
	       raw_list_str);

	 add_field(tmp);
      }
}

inline std::ostream& operator << (
      std::ostream& os, const XML_SERIALISATION::XmlField& x)
{
   x.print(os,0);

   return os;
}
#endif   // ----- #ifndef _GLT_XMLFIELD_CLASS_INC  -----
