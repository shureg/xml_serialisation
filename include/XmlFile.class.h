// =====================================================================================
// 
//       Filename:  XmlFile.class.h
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  05/21/2010 01:50:07 PM
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#ifndef  XMLFILE_CLASS_INC
#define  XMLFILE_CLASS_INC

#include "xml_serialisation/XmlField.class.h"

#include <fstream>

namespace XML_SERIALISATION
{
   class XmlFile
   {

   public:

      XmlFile();

      XmlFile(const char* filename, const char* top_name);

      void assign(const char* filename, const char* top_name);

      void insert(const XmlField& xml);

      void commit();

   protected:

      std::ofstream xfs;

      const char* top_name;
   };
}

#endif   // ----- #ifndef XMLFILE_CLASS_INC  -----
