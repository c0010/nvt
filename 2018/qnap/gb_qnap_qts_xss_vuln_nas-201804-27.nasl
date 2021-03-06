###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_qnap_qts_xss_vuln_nas-201804-27.nasl 12120 2018-10-26 11:13:20Z mmartin $
#
# QNAP QTS Cross-Site Scripting Vulnerability(nas-201804-27)
#
# Authors:
# Shakeel <bshakeel@secpod.com>
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.813195");
  script_version("$Revision: 12120 $");
  script_cve_id("CVE-2018-0711");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_tag(name:"last_modification", value:"$Date: 2018-10-26 13:13:20 +0200 (Fri, 26 Oct 2018) $");
  script_tag(name:"creation_date", value:"2018-05-18 09:52:09 +0530 (Fri, 18 May 2018)");
  script_name("QNAP QTS Cross-Site Scripting Vulnerability(nas-201804-27)");

  script_tag(name:"summary", value:"This host is running QNAP QTS and is prone
  to cross site scripting vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists as application does not
  properly filter HTML code from user-supplied input before displaying the input.");

  script_tag(name:"impact", value:"Successful exploitation will allow remote
  attackers to conduct cross-site scripting attacks.");

  script_tag(name:"affected", value:"QNAP QTS versions 4.3.3 build 20180126 and
  earlier, 4.3.4 build 20180315 and earlier.");

  script_tag(name:"solution", value:"Upgrade to QNAP QTS 4.3.3 build  20180402
  or 4.3.4 build 20180413 or later. For updates refer to Reference links.");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"remote_banner");
  script_xref(name:"URL", value:"https://www.qnap.com/zh-tw/security-advisory/nas-201804-27");
  script_category(ACT_GATHER_INFO);
  script_family("Web application abuses");
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
  script_dependencies("gb_qnap_nas_detect.nasl");
  script_mandatory_keys("qnap/qts", "qnap/version", "qnap/build", "qnap/port");
  script_require_ports("Services/www", 80, 8080);
  exit(0);
}

include("version_func.inc");

if(!version = get_kb_item("qnap/version")) exit(0);
if(!build = get_kb_item("qnap/build")) exit(0);
if(!port = get_kb_item("qnap/port")) exit(0);

cv = version + '.' + build;
if(version_is_less_equal( version:cv, test_version: "4.3.3.20180126"))
{
  fix = "4.3.3";
  fix_build = "20180402";
}

else if(cv =~ "^(4\.3\.4)" && version_is_less_equal(version:cv, test_version: "4.3.4.20180315"))
{
  fix = "4.3.4";
  fix_build = "20180315";
}

if(fix)
{
  report = report_fixed_ver(installed_version:version, installed_build:build, fixed_version:fix, fixed_build:fix_build);
  security_message( port: port, data: report );
  exit( 0 );
}
exit(99);
