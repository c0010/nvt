###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_fedora_2017_700915e34f_openvpn_fc26.nasl 7455 2017-10-17 09:40:59Z asteins $
#
# Fedora Update for openvpn FEDORA-2017-700915e34f
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2017 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.873482");
  script_version("$Revision: 7455 $");
  script_tag(name:"last_modification", value:"$Date: 2017-10-17 11:40:59 +0200 (Tue, 17 Oct 2017) $");
  script_tag(name:"creation_date", value:"2017-10-07 09:16:01 +0200 (Sat, 07 Oct 2017)");
  script_cve_id("CVE-2017-12166");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("Fedora Update for openvpn FEDORA-2017-700915e34f");
  script_tag(name: "summary", value: "Check the version of openvpn");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "OpenVPN is a robust and highly flexible 
tunneling application that uses all of the encryption, authentication, and 
certification features of the OpenSSL library to securely tunnel IP networks 
over a single UDP or TCP port.  It can use the Marcus Franz Xaver Johannes 
Oberhumers LZO library for compression.");
  script_tag(name: "affected", value: "openvpn on Fedora 26");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "FEDORA", value: "2017-700915e34f");
  script_xref(name: "URL" , value: "https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/QT5LHSTWDIJSDPIMPI5BFTUUYRCOROCV");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2017 Greenbone Networks GmbH");
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

if(release == "FC26")
{

  if ((res = isrpmvuln(pkg:"openvpn", rpm:"openvpn~2.4.4~1.fc26", rls:"FC26")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
