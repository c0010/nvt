###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for perl-YAML-LibYAML FEDORA-2014-16143
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2015 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
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

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.868863");
  script_version("$Revision: 6630 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-10 08:34:32 +0200 (Mon, 10 Jul 2017) $");
  script_tag(name:"creation_date", value:"2015-01-05 15:06:10 +0100 (Mon, 05 Jan 2015)");
  script_cve_id("CVE-2014-9130", "CVE-2013-6393", "CVE-2014-2525");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_name("Fedora Update for perl-YAML-LibYAML FEDORA-2014-16143");
  script_tag(name: "summary", value: "Check the version of perl-YAML-LibYAML");
  script_tag(name: "vuldetect", value: "Get the installed version with the help of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "Kirill Siminov's 'libyaml' is arguably the best YAML implementation. The C
library is written precisely to the YAML 1.1 specification. It was originally
bound to Python and was later bound to Ruby.
");
  script_tag(name: "affected", value: "perl-YAML-LibYAML on Fedora 21");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");
  script_xref(name: "FEDORA", value: "2014-16143");
  script_xref(name: "URL" , value: "https://lists.fedoraproject.org/pipermail/package-announce/2014-December/145949.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("Fedora Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/fedora", "ssh/login/rpms");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "FC21")
{

  if ((res = isrpmvuln(pkg:"perl-YAML-LibYAML", rpm:"perl-YAML-LibYAML~0.54~1.fc21", rls:"FC21")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}