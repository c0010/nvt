###############################################################################
# OpenVAS Vulnerability Test
# $Id: secpod_ms10-036.nasl 8287 2018-01-04 07:28:11Z teissa $
#
# Microsoft Office COM Validation Remote Code Execution Vulnerability (983235)
#
# Authors:
# Antu Sanadi <santu@secpod.com>
#
# Copyright:
# Copyright (c) 2010 SecPod, http://www.secpod.com
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

tag_impact = "Successful exploitation could allow an attacker to execute arbitrary code on
  the remote system.
  Impact Level: Application";
tag_affected = "Microsoft Office 2003 SP3.
  Microsoft Office Word 2007 SP2 and prior.
  Microsoft Office Word 2003 SP3 and prior.
  Microsoft Office Excel 2003 SP3 and prior.
  Microsoft Office Excel 2007 SP2 and prior.
  Microsoft Office Visio 2007 SP2 and prior.
  Microsoft Office Visio 2003 SP3 and prior.
  2007 Microsoft Office System SP2 and prior.
  Microsoft Office Publisher 2003 SP3 and prior.
  Microsoft Office Publisher 2003 SP3 and prior.
  Microsoft Office PowerPoint 2003 SP3 and prior.
  Microsoft Office PowerPoint 2007 SP2 and prior.";
tag_insight = "The flaw is caused by an error when validating COM (Component Object Model)
  object instantiation, which could allow attackers to execute arbitrary code
  by tricking a user into opening a specially crafted Excel, PowerPoint,
  Publisher, Visio, or Word file.";
tag_solution = "Run Windows Update and update the listed hotfixes or download and
  update mentioned hotfixes in the advisory from the below link.
  http://www.microsoft.com/technet/security/bulletin/ms10-036.mspx";
tag_summary = "This host is missing a critical security update according to
  Microsoft Bulletin MS10-036.";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.902192");
  script_version("$Revision: 8287 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-04 08:28:11 +0100 (Thu, 04 Jan 2018) $");
  script_tag(name:"creation_date", value:"2010-06-09 17:19:57 +0200 (Wed, 09 Jun 2010)");
  script_cve_id("CVE-2010-1263");
  script_bugtraq_id(40574);
  script_tag(name:"cvss_base", value:"9.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_name("Microsoft Office COM Validation Remote Code Execution Vulnerability (983235)");
  script_xref(name : "URL" , value : "http://www.vupen.com/english/advisories/2010/1393");
  script_xref(name : "URL" , value : "http://www.microsoft.com/technet/security/bulletin/ms10-036.mspx");

  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2010 SecPod");
  script_family("Windows : Microsoft Bulletins");
  script_dependencies("secpod_office_products_version_900032.nasl", "secpod_ms_office_detection_900025.nasl");
  script_mandatory_keys("MS/Office/Ver", "MS/Office/Prdts/Installed");
  script_require_ports(139, 445);

  script_tag(name : "impact" , value : tag_impact);
  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name : "summary" , value : tag_summary);
  script_tag(name:"qod_type", value:"registry");
  script_tag(name:"solution_type", value:"VendorFix");
  exit(0);
}


include("smb_nt.inc");
include("secpod_reg.inc");
include("version_func.inc");
include("secpod_smb_func.inc");

function FileVer (file, path)
{
  share = ereg_replace(pattern:"([A-Za-z]):.*", replace:"\1$", string:path);
  if(share =~ "[a-z]\$")
    share = toupper(share);
  file = ereg_replace(pattern:"[A-Za-z]:(.*)", replace:"\1", string:path + file);
  ver = GetVer(file:file, share:share);
  return ver;
}

if(hotfix_check_sp(xp:4, win2k:5, win2003:3) <= 0){
  exit(0);
}


## Check for Office 2003 SP3 or 2007
officeVer = get_kb_item("MS/Office/Ver");
if(!officeVer && !(officeVer =~ "^[11|12].*")){
  exit(0);
}

offPath = registry_get_sz(key:"SOFTWARE\Microsoft\Windows\CurrentVersion",
                         item:"CommonFilesDir");
if(offPath)
{
  offPath += "\Microsoft Shared";
  dllVer = FileVer(file:"\OFFICE11\Mso.dll", path:offPath);
  if(isnull(dllVer))
  {
    Ver = FileVer(file:"\OFFICE12\Mso.dll", path:offPath);
    if(Ver){
      dllVer = Ver;
    }
  }

  ## Grep for Mso.dll version 11.0 < 11.0.8324.0, 12 < 12.0.6535.5002
  if(version_in_range(version:dllVer, test_version:"11.0", test_version2:"11.0.8323") ||
     version_in_range(version:dllVer, test_version:"12.0", test_version2:"12.0.6535.5001"))
  {
    security_message(0);
    exit(0);
  }
}


## Check for Office Visio
ovPath = registry_get_sz(key:"SOFTWARE\Microsoft\Windows\CurrentVersion" + 
                             "\App Paths\visio.exe", item:"Path");
if(ovPath)
{
  share = ereg_replace(pattern:"([A-Z]):.*", replace:"\1$", string:ovPath);
  file =  ereg_replace(pattern:"[A-Z]:(.*)", replace:"\1",
                     string:ovPath + "visio.exe");

  visioVer = GetVer(file:file, share:share);
  if(!isnull(visioVer))
  { 
    ## Grep for visio.exe version 11 < 11.0.8207.0, 12 < 12.0.6529.5000
    if(version_in_range(version:visioVer, test_version:"11.0", test_version2:"11.0.8206") ||
       version_in_range(version:visioVer, test_version:"12.0", test_version2:"12.0.6529.4999"))
    {
      security_message(0);
      exit(0);
    }
  }
}

## Microsoft Office Excel 2003/2007
xlVer = get_kb_item("SMB/Office/Excel/Version");
if(!isnull(xlVer))
{ 
  ## Grep for Excel.exe version 11 < 11.0.8324.0, 12 < 12.0.6535.5002
  if(version_in_range(version:xlVer, test_version:"11.0", test_version2:"11.0.8323") ||
     version_in_range(version:xlVer, test_version:"12.0", test_version2:"12.0.6535.5001"))
  {
    security_message(0);
    exit(0);
  }
}

## Microsoft Office Power Point 2003/2007
ppntVer = get_kb_item("SMB/Office/PowerPnt/Version");
if(!isnull(ppntVer))
{
  ## Grep for Powerpnt.exe version 11 < 11.0.8324.0, 12 < 12.0.6500.5000 
  if(version_in_range(version:ppntVer, test_version:"11.0", test_version2:"11.0.8323.0") ||
     version_in_range(version:ppntVer, test_version:"12.0", test_version2:"12.0.6500.4999"))
  {
    security_message(0);
    exit(0);
  }
}

## Grep for Office Publisher Version from KB
pubVer = get_kb_item("SMB/Office/Publisher/Version");
if(!isnull(pubVer))
{
  ## Grep for Mspub.exe version 11 < 11.0.8324.0, 12 < 12.0.6535.5002
  if(version_in_range(version:pubVer, test_version:"11.0",test_version2:"11.0.8323.0") ||
     version_in_range(version:pubVer, test_version:"12.0",test_version2:"12.0.6535.5001"))
  {
    security_message(0);
    exit(0);
  }
}

## Microsoft Office Word 2003/2007
winwordVer= get_kb_item("SMB/Office/Word/Version");
if(!isnull(winwordVer))
{
  # Grep for version Winword.exe 12 < 12.0.6535.5000, 11< 11.0.8324.0
  if(version_in_range(version:winwordVer, test_version:"11.0", test_version2:"11.0.8323.0") ||
     version_in_range(version:winwordVer, test_version:"12.0", test_version2:"12.0.6535.4999"))
  {
    security_message(0);
    exit(0);
  }
}
