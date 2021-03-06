// =====================================================================================
// 
//       Filename:  XmlFile.class.cc
// 
//    Description:  
// 
//        Version:  1.0
//        Created:  05/21/2010 01:56:17 PM
//       Revision:  none
//       Compiler:  g++
// 
//         Author:  Alexander Kabanov (aak), alexander.kabanov@gmail.com
//        Company:  
// 
// =====================================================================================

#include "xml_serialisation/XmlFile.class.h"
#include "callback_log/LOG.h"
#include "boost/make_shared.hpp"

using XML_SERIALISATION::XmlFile;

using XML_SERIALISATION::XmlField;

using namespace std;

using namespace boost;

XmlFile::XmlFile()
{}

XmlFile::XmlFile(const string& filename, const string& top_name):
   xfs(make_shared<ofstream>(filename.c_str(), ios::app)), top_name(top_name)
{
   *xfs << "<" << top_name << ">\n";
}

void XmlFile::assign(const string& filename, const string& _top_name)
{
   if( xfs && xfs->is_open() )
   {
      LOG(WARNING, boost::format(
	       "Call to XmlFile::assign( %s, %s ): "\
	       "reassigning an XmlFile object with an open file: "\
	       "file will be committed and closed first\n")
	    % filename % top_name
	    );
      commit();
      xfs->close();
   }

   top_name = _top_name;

   if (!xfs)
      xfs = make_shared<ofstream>();

   xfs->open(filename.c_str(),ios::app);

   *xfs << "<" << top_name << ">\n";
}

void XmlFile::insert(const XmlField& xml)
{
   if( !( xfs && xfs->is_open() ) )
      LOG(EXCEPTION, boost::format(
	       "XmlFile::insert cannot be called when no output file is open\n")
	    );

   *xfs << xml;
}

void XmlFile::commit()
{
   if ( !( xfs && xfs->is_open() ) )
      LOG(EXCEPTION, boost::format(
	       "Calling XmlFile::commit() for top_name %s when no file is open\n")
	    );

   *xfs << "</" << top_name << ">\n";

   xfs->close();
}
