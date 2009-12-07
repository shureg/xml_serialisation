// =====================================================================================
// 
//       Filename:  XmlWrap.class.h
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  20/10/09 17:43:04
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#ifndef  XMLWRAP_CLASS_INC
#define  XMLWRAP_CLASS_INC

#include "xml_serialisation/XmlSerialisableObject.class.h"
#include <string>

namespace XML_SERIALISATION
{
   class XmlWrap: public XmlSerialisableObject
   {
   public:

      XmlWrap(const std::string&, const XmlSerialisableObject&);

      XmlWrap(const XmlSerialisableObject&);

      XmlField xml_description() const;

   protected:

      const XmlSerialisableObject& xml_so;

      const std::string wrap_label;

      const bool label_set;

   };
}

#endif   // ----- #ifndef XMLWRAP_CLASS_INC  -----
