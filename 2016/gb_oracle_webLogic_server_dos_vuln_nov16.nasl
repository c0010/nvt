###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_oracle_webLogic_server_dos_vuln_nov16.nasl 11725 2018-10-02 10:50:50Z asteins $
#
# Oracle WebLogic Server Denial of Service Vulnerability - Nov16
#
# Authors:
# Shakeel <bshakeel@secpod.com>
#
# Copyright:
# Copyright (C) 2016 Greenbone Networks GmbH, http://www.greenbone.net
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
CPE = "cpe:/a:bea:weblogic_server";

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.809713");
  script_version("$Revision: 11725 $");
  script_cve_id("CVE-2016-5488");
  script_bugtraq_id(93627);
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_tag(name:"last_modification", value:"$Date: 2018-10-02 12:50:50 +0200 (Tue, 02 Oct 2018) $");
  script_tag(name:"creation_date", value:"2016-11-02 17:11:57 +0530 (Wed, 02 Nov 2016)");
  script_tag(name:"qod_type", value:"remote_banner_unreliable");
  script_name("Oracle WebLogic Server Denial of Service Vulnerability - Nov16");

  script_tag(name:"summary", value:"The host is running Oracle WebLogic Server
  and is prone to denial of service vulnerability.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable version is present on the target host.");

  script_tag(name:"insight", value:"The flaw exists due to some unspecified
  error in the Web Container component within the Oracle WebLogic Server.");

  script_tag(name:"impact", value:"Successful exploitation will allow remote
  attackers to cause a partial denial of service condition.");

  script_tag(name:"affected", value:"Oracle WebLogic Server versions 10.3.6.0
  and 12.1.3.0 are affected.");

  script_tag(name:"solution", value:"Apply update from the link mentioned below,
  http://www.oracle.com/technetwork/security-advisory/cpuoct2016-2881722.html");

  script_tag(name:"solution_type", value:"VendorFix");

  script_xref(name:"URL", value:"http://www.oracle.com/technetwork/security-advisory/cpuoct2016-2881722.html");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("oracle_webLogic_server_detect.nasl");
  script_mandatory_keys("OracleWebLogicServer/installed");
  script_require_ports("Services/www", 7001);
  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if(!webPort = get_app_port(cpe:CPE)){
  exit(0);
}

if(!webVer = get_app_version(cpe:CPE, port:webPort)){
  exit(0);
}

if(version_is_equal(version:webVer, test_version:"10.3.6.0")||
   version_is_equal(version:webVer, test_version:"12.1.3.0"))
{
  report = report_fixed_ver(installed_version:webVer, fixed_version:"Apply the appropriate patch");
  security_message(data:report, port:webPort);
  exit(0);
}
