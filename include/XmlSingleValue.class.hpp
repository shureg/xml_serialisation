// =====================================================================================
// 
//       Filename:  XmlSingleValue.class.hpp
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  03/12/09 20:02:06
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#ifndef  XMLSINGLEVALUE_CLASS_INC
#define  XMLSINGLEVALUE_CLASS_INC

#include "XmlSerialisableObject.class.h"

namespace XML_SERIALISATION
{
   class XmlSingleValue: public XmlSerialisableObject
   {
   public:

      template<typename T> XmlSingleValue
	 (const std::string&, const std::string&, const T&, const bool);

      XmlField xml_description() const;

   protected:

      XmlField value_wrapper;

   private:

      XmlSingleValue();
   };

   template<typename T> XmlSingleValue::XmlSingleValue
      (const std::string& node_name, const std::string& value_name,
       const T& value, const bool is_attribute): value_wrapper(node_name)
   {
      if(is_attribute) value_wrapper(value_name) = value;
      else value_wrapper.add_field(value_name,value);
   }

   inline XmlField XmlSingleValue::xml_description() const
   {
      return value_wrapper;
   }
}

#endif   // ----- #ifndef XMLSINGLEVALUE_CLASS_INC  -----
