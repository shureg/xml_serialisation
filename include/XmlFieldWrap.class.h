// =====================================================================================
// 
//       Filename:  XmlFieldWrap.class.h
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  09/10/2010 03:50:44 PM
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#ifndef  XMLFIELDWRAP_CLASS_INC
#define  XMLFIELDWRAP_CLASS_INC

#include "xml_serialisation/XmlSerialisableObject.class.h"
#include "xml_serialisation/XmlField.class.h"

namespace XML_SERIALISATION
{
   class XmlFieldWrap: public XmlSerialisableObject
   {
   public:

      explicit XmlFieldWrap(XmlField& xmlf);

      XmlField xml_description() const;

   protected:

      XmlField& xmlf;

   private:

      XmlFieldWrap();
   };
}

#endif   // ----- #ifndef XMLFIELDWRAP_CLASS_INC  -----
