// =====================================================================================
// 
//       Filename:  XmlWrap.class.cc
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  20/10/09 17:43:06
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#include "xml_serialisation/XmlWrap.class.h"

using namespace XML_SERIALISATION;
using namespace std;

XmlWrap::XmlWrap(const std::string& _wrap_label, 
      const XmlSerialisableObject& _xml_so):
   xml_so(_xml_so), wrap_label(_wrap_label), label_set(true)
{}

XmlWrap::XmlWrap(const XmlSerialisableObject& _xml_so):
   xml_so(_xml_so), wrap_label(""), label_set(false)
{} 

XmlField XmlWrap::xml_description() const
{
   if(label_set)
   {
      XmlField tmp(wrap_label);
      tmp.add_field( xml_so.xml_description() );
      return tmp;
   }
   else
      return xml_so.xml_description();
}
