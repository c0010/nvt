###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_cisco_esa_cisco-sa-20170607-esa1.nasl 11962 2018-10-18 10:51:32Z mmartin $
#
# Cisco Email Security Appliance Attachment Filter Bypass Vulnerability
#
# Authors:
# Christian Kuersteiner <christian.kuersteiner@greenbone.net>
#
# Copyright:
# Copyright (c) 2017 Greenbone Networks GmbH
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

CPE = "cpe:/h:cisco:email_security_appliance";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.106855");
  script_cve_id("CVE-2017-6671");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:P/A:N");

  script_version("$Revision: 11962 $");

  script_name("Cisco Email Security Appliance Attachment Filter Bypass Vulnerability");

  script_xref(name:"URL", value:"https://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-20170607-esa1");

  script_tag(name:"vuldetect", value:"Check the version.");

  script_tag(name:"solution", value:"See the referenced vendor advisory for a solution.");

  script_tag(name:"summary", value:"A vulnerability in the email message scanning of Cisco AsyncOS Software for
Cisco Email Security Appliance (ESA) could allow an unauthenticated, remote attacker to bypass configured filters
on the device.");

  script_tag(name:"insight", value:"The vulnerability is due to improper input validation of an email with an
attachment and modified Multipurpose Internet Mail Extensions (MIME) header. An attacker could exploit this
vulnerability by sending a malformed email message with an attachment.");

  script_tag(name:"impact", value:"A successful exploit could allow the attacker to bypass configured message
filters to drop the email. The email may not be RFC compliant. However, some mail clients could still allow users
to read the email, which may not have been properly filtered by the device.");

  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  script_tag(name:"last_modification", value:"$Date: 2018-10-18 12:51:32 +0200 (Thu, 18 Oct 2018) $");
  script_tag(name:"creation_date", value:"2017-06-08 11:08:56 +0700 (Thu, 08 Jun 2017)");
  script_category(ACT_GATHER_INFO);
  script_family("CISCO");
  script_copyright("This script is Copyright (C) 2017 Greenbone Networks GmbH");
  script_dependencies("gb_cisco_esa_version.nasl");
  script_mandatory_keys("cisco_esa/installed");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if (!version = get_app_version(cpe: CPE))
  exit(0);

affected = make_list(
                '9.7.1-066',
                '10.0.1-087' );

foreach af (affected) {
  if (version == af) {
    report = report_fixed_ver(installed_version: version, fixed_version: "See advisory");
    security_message(port: 0, data: report);
    exit(0);
  }
}

exit(99);
