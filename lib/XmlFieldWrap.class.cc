// =====================================================================================
// 
//       Filename:  XmlFieldWrap.class.cc
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  09/10/2010 03:55:09 PM
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#include "xml_serialisation/XmlFieldWrap.class.h"

using namespace XML_SERIALISATION;

XmlFieldWrap::XmlFieldWrap(XmlField& xmlf): xmlf(xmlf)
{}

XmlField XmlFieldWrap::xml_description() const
{
   return xmlf;
}
