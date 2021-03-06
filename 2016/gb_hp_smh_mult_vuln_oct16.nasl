###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_hp_smh_mult_vuln_oct16.nasl 11702 2018-10-01 07:31:38Z asteins $
#
# HP System Management Homepage Multiple Vulnerabilities (Oct-2016)
#
# Authors:
# Christian Kuersteiner <christian.kuersteiner@greenbone.net>
#
# Copyright:
# Copyright (c) 2016 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version
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

CPE = "cpe:/a:hp:system_management_homepage";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.106390");
  script_version("$Revision: 11702 $");
  script_tag(name:"last_modification", value:"$Date: 2018-10-01 09:31:38 +0200 (Mon, 01 Oct 2018) $");
  script_tag(name:"creation_date", value:"2016-11-15 10:22:35 +0700 (Tue, 15 Nov 2016)");
  script_tag(name:"cvss_base", value:"8.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:C");

  script_cve_id("CVE-2016-2105", "CVE-2016-2106", "CVE-2016-2107", "CVE-2016-2109", "CVE-2016-3739",
"CVE-2016-4070", "CVE-2016-4071", "CVE-2016-4072", "CVE-2016-4342", "CVE-2016-4343", "CVE-2016-4393",
"CVE-2016-4394", "CVE-2016-4395", "CVE-2016-4396", "CVE-2016-4537", "CVE-2016-4538", "CVE-2016-4539",
"CVE-2016-4540", "CVE-2016-4541", "CVE-2016-4542", "CVE-2016-4543", "CVE-2016-5385", "CVE-2016-5387",
"CVE-2016-5388");

  script_tag(name:"qod_type", value:"remote_banner");

  script_tag(name:"solution_type", value:"VendorFix");

  script_name("HP System Management Homepage Multiple Vulnerabilities (Oct-2016)");

  script_category(ACT_GATHER_INFO);

  script_copyright("This script is Copyright (C) 2016 Greenbone Networks GmbH");
  script_family("Web application abuses");
  script_dependencies("secpod_hp_smh_detect.nasl");
  script_mandatory_keys("HP/SMH/installed");

  script_tag(name:"summary", value:"HP System Management Homepage is prone to multiple vulnerabilities.");

  script_tag(name:"vuldetect", value:"Checks the version.");

  script_tag(name:"insight", value:"Multiple potential security vulnerabilities have been identified in HPE
System Management Homepage (SMH) on Windows and Linux.");

  script_tag(name:"impact", value:"The vulnerabilities could be remotely exploited using man-in-the-middle
(MITM) attacks resulting in cross-site scripting (XSS), arbitrary code execution, Denial of Service (DoS),
and/or unauthorized disclosure of information.");

  script_tag(name:"affected", value:"HPE System Management Homepage all versions prior to v7.6");

  script_tag(name:"solution", value:"Update to v7.6.0 or later");

  script_xref(name:"URL", value:"https://h20564.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c05320149");

  exit(0);
}

include("host_details.inc");
include("version_func.inc");

if (!port = get_app_port(cpe: CPE))
  exit(0);

if (!version = get_app_version(cpe: CPE, port: port))
  exit(0);

if (version_is_less(version: version, test_version: "7.6.0")) {
  report = report_fixed_ver(installed_version: version, fixed_version: "7.6.0");
  security_message(port: port, data: report);
  exit(0);
}

exit(0);
