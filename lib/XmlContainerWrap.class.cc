// =====================================================================================
// 
//       Filename:  XmlContainerWrap.class.cc
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  22/10/09 15:28:59
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#include "xml_serialisation/XmlContainerWrap.class.h"
#include "callback_log/LOG.h"

using namespace XML_SERIALISATION;
using namespace CALLBACK_LOG;
using namespace std;

XmlContainerWrap::XmlContainerWrap(const string& _wrap_label):
   wrap_label(_wrap_label)
{}

void XmlContainerWrap::add_item(const XmlSerialisableObject& item)
{
   item_list.push_back(&item);
}

XmlField XmlContainerWrap::xml_description() const
{
   XmlField tmp(wrap_label);

   for(vector<const XmlSerialisableObject*>::const_iterator
	 i = item_list.begin(); i !=  item_list.end(); ++i)
      tmp.add_field((*i)->xml_description());

   tmp("count") = item_list.size();

   return tmp;
}
