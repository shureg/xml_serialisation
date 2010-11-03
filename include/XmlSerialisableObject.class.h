// =====================================================================================
// 
//       Filename:  XmlSerialisableObject.class.h
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  20/10/09 17:46:32
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#ifndef  XMLSERIALISABLEOBJECT_CLASS_INC
#define  XMLSERIALISABLEOBJECT_CLASS_INC

#include "xml_serialisation/XmlField.class.h"
#include <iostream>
#include <string>
#include <sstream>

namespace XML_SERIALISATION
{
   class XmlSerialisableObject
   {
   public:

      virtual XmlField xml_description() const = 0;

      virtual ~XmlSerialisableObject(){}

      const std::string to_string() const
      {
	 std::ostringstream oss;
	 oss << this->xml_description();
	 return oss.str();
      }
   };
}

inline std::ostream& operator<<(std::ostream& os, const XML_SERIALISATION::XmlSerialisableObject& x)
{
   os << x.xml_description();

   return os;
}

#endif   // ----- #ifndef XMLSERIALISABLEOBJECT_CLASS_INC  -----
