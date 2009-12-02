// =====================================================================================
// 
//       Filename:  test.cxx
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  23/10/09 12:53:15
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#include "xml_serialisation/XmlField.class.h"
#include <iostream>

using namespace XML_SERIALISATION;
using namespace std;

int main(int argc, char** argv)
{
   XmlField tmp("Test");
   tmp.add_field("value",0);
   tmp("id") = 1;
   tmp("index") = "blah";

   cout << tmp;

   return 0;
}
