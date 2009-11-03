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

using namespace CALLBACK_LOG;

namespace XML_SERIALISATION
{
   extern const unsigned long XmlFieldShiftWidth;

   class XmlField
   {
   public:

      XmlField(const std::string&);

      template<typename T> XmlField(const std::string&, T);

      void add_field(const XmlField&);

      void add_field(const std::string&);

      template<typename T> void add_field(const std::string&, T);

      XmlField& operator[] (const std::string&);

      const std::string& get_name() const;

      void print(std::ostream&, unsigned int) const;

      unsigned long get_children_number() const;

      void open_tag(std::ostream&,unsigned int=0) const;

      void close_tag(std::ostream&,unsigned int=0) const;

      static bool pretty_print;

      operator const std::string () const;

   protected:

      std::string name;

      std::string value;

      std::list<XmlField> children;

      bool value_set;

      const bool is_valid_field_name(const std::string&) const;

      void check_field_name(const std::string&) const;

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
		  "A boost::lexical cast exception has been thrown "\
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
      inline void XmlField::add_field(const std::string& _name, T _value)
   {
      check_field_name(_name);

      XmlField tmp(_name,_value);

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
