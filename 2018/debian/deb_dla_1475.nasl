###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_1475.nasl 11933 2018-10-17 07:09:44Z asteins $
#
# Auto-generated from advisory DLA 1475-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
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
  script_oid("1.3.6.1.4.1.25623.1.0.891475");
  script_version("$Revision: 11933 $");
  script_cve_id("CVE-2018-8019", "CVE-2018-8020");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1475-1] tomcat-native security update)");
  script_tag(name:"last_modification", value:"$Date: 2018-10-17 09:09:44 +0200 (Wed, 17 Oct 2018) $");
  script_tag(name:"creation_date", value:"2018-08-26 00:00:00 +0200 (Sun, 26 Aug 2018)");
  script_tag(name:"cvss_base", value:"4.3");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2018/08/msg00023.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB8\.[0-9]+");
  script_tag(name:"affected", value:"tomcat-native on Debian Linux");
  script_tag(name:"solution", value:"For Debian 8 'Jessie', these problems have been fixed in version
1.1.32~repack-2+deb8u2.

We recommend that you upgrade your tomcat-native packages.");
  script_tag(name:"summary",  value:"When using an OCSP responder Tomcat Native did not correctly handle
invalid responses. This allowed for revoked client certificates to be
incorrectly identified. It was therefore possible for users to
authenticate with revoked certificates when using mutual TLS. Users
not using OCSP checks are not affected by this vulnerability.");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"libtcnative-1", ver:"1.1.32~repack-2+deb8u2", rls_regex:"DEB8\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
