###############################################################################
# OpenVAS Vulnerability Test
# $Id: deb_dla_1151.nasl 10219 2018-06-15 12:00:55Z cfischer $
#
# Auto-generated from advisory DLA 1151-2 using nvtgen 1.0
# Script version:2.0
# #
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
  script_oid("1.3.6.1.4.1.25623.1.0.891151");
  script_version("$Revision: 10219 $");
  script_cve_id("CVE-2017-14990");
  script_name("Debian LTS Advisory ([SECURITY] [DLA 1151-2] wordpress regression update)");
  script_tag(name:"last_modification", value:"$Date: 2018-06-15 14:00:55 +0200 (Fri, 15 Jun 2018) $");
  script_tag(name:"creation_date", value:"2018-02-07 00:00:00 +0100 (Wed, 07 Feb 2018)");
  script_tag(name:"cvss_base", value:"4.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:S/C:P/I:N/A:N");
  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  script_xref(name:"URL", value:"https://lists.debian.org/debian-lts-announce/2017/11/msg00015.html");

  script_category(ACT_GATHER_INFO);

  script_copyright("Copyright (c) 2018 Greenbone Networks GmbH http://greenbone.net");
  script_family("Debian Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages", re:"ssh/login/release=DEB7\.[0-9]+");
  script_tag(name:"affected", value:"wordpress on Debian Linux");
  script_tag(name:"insight", value:"WordPress is a full featured web blogging tool:

* Instant publishing (no rebuilding)
* Comment pingback support with spam protection
* Non-crufty URLs
* Themable
* Plugin support");
  script_tag(name:"solution", value:"For Debian 7 'Wheezy', these problems have been fixed in version
3.6.1+dfsg-1~deb7u19.

We recommend that you upgrade your wordpress packages.");
  script_tag(name:"summary",  value:"The fix for CVE-2017-14990 issued as DLA-1151-1 was incomplete and
caused a regression. It was discovered that an additional database
upgrade and further code changes would be necessary. At the moment
these changes are deemed as too intrusive and thus the initial patch
for CVE-2017-14990 has been removed again. For reference, the original
advisory text follows.

WordPress stores cleartext wp_signups.activation_key values (but
stores the analogous wp_users.user_activation_key values as hashes),
which might make it easier for remote attackers to hijack unactivated
user accounts by leveraging database read access (such as access
gained through an unspecified SQL injection vulnerability).");
  script_tag(name:"vuldetect", value:"This check tests the installed software version using the apt package manager.");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"wordpress", ver:"3.6.1+dfsg-1~deb7u19", rls_regex:"DEB7\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"wordpress-l10n", ver:"3.6.1+dfsg-1~deb7u19", rls_regex:"DEB7\.[0-9]+", remove_arch:TRUE )) != NULL) {
    report += res;
}

if (report != "") {
  security_message(data:report);
} else if (__pkg_match) {
  exit(99);
}
