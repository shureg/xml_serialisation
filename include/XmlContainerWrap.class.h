// =====================================================================================
// 
//       Filename:  XmlContainerWrap.class.h
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  22/10/09 15:28:55
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#ifndef  XMLCONTAINERWRAP_CLASS_INC
#define  XMLCONTAINERWRAP_CLASS_INC

#include "xml_serialisation/XmlField.class.h"
#include "xml_serialisation/XmlSerialisableObject.class.h"
#include <string>
#include <list>

namespace XML_SERIALISATION
{
   class XmlContainerWrap: public XmlSerialisableObject
   {
   public:

      XmlContainerWrap(const std::string&);

      void add_item(const XmlSerialisableObject&);

      XmlField xml_description() const;

   protected:
      
      const std::string wrap_label; 

      std::list<const XmlSerialisableObject*> item_list;

   private:

      XmlContainerWrap();
   };
}

#endif   // ----- #ifndef XMLCONTAINERWRAP_CLASS_INC  -----
