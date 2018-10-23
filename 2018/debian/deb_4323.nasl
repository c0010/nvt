###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_4323.nasl 12009 2018-10-22 08:22:26Z cfischer $
#
# Auto-generated from advisory DSA 4323-1 using nvtgen 1.0
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
  script_oid("1.3.6.1.4.1.25623.1.0.704323");
  script_version("$Revision: 12009 $");
  # TODO: No CVE assigned yet.
  script_name("Debian Security Advisory DSA 4323-1 (drupal7 - security update)");
  script_tag(name:"last_modification", value:"$Date: 2018-10-22 10:22:26 +0200 (Mon, 22 Oct 2018) $");
  script_tag(name:"creation_date", value:"2018-10-18 00:00:00 +0200 (Thu, 18 Oct 2018)");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://www.debian.org/security/2018/dsa-4323.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB9\.[0-9]+");
  script_tag(name:"affected", value:"drupal7 on Debian Linux");
  script_tag(name:"insight", value:"Drupal is a dynamic web site platform which allows an individual or
community of users to publish, manage and organize a variety of
content, Drupal integrates many popular features of content
management systems, weblogs, collaborative tools and discussion-based
community software into one easy-to-use package.");
  script_tag(name:"solution", value:"For the stable distribution (stretch), this problem has been fixed in
version 7.52-2+deb9u5.

We recommend that you upgrade your drupal7 packages.

For the detailed security status of drupal7 please refer to
its security tracker page at:
https://security-tracker.debian.org/tracker/drupal7");
  script_tag(name:"summary",  value:"Two vulnerabilities were found in Drupal, a fully-featured content
management framework, which could result in arbitrary code execution or
an open redirect. For additional information, please refer to the
upstream advisory at https://www.drupal.org/sa-core-2018-006");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"drupal7", ver:"7.52-2+deb9u5", rls_regex:"DEB9\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}