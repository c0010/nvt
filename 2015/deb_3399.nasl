# OpenVAS Vulnerability Test
# $Id: deb_3399.nasl 9355 2018-04-06 07:16:07Z cfischer $
# Auto-generated from advisory DSA 3399-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2015 Greenbone Networks GmbH http://greenbone.net
# Text descriptions are largely excerpted from the referenced
# advisory, and are Copyright (c) the respective author(s)
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
#


if(description)
{
    script_oid("1.3.6.1.4.1.25623.1.0.703399");
    script_version("$Revision: 9355 $");
    script_cve_id("CVE-2015-7981", "CVE-2015-8126");
    script_name("Debian Security Advisory DSA 3399-1 (libpng - security update)");
    script_tag(name: "last_modification", value: "$Date: 2018-04-06 09:16:07 +0200 (Fri, 06 Apr 2018) $");
    script_tag(name: "creation_date", value: "2015-11-18 00:00:00 +0100 (Wed, 18 Nov 2015)");
    script_tag(name:"cvss_base", value:"7.5");
    script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
    script_tag(name: "solution_type", value: "VendorFix");
    script_tag(name: "qod_type", value: "package");

    script_xref(name: "URL", value: "http://www.debian.org/security/2015/dsa-3399.html");


    script_category(ACT_GATHER_INFO);

    script_copyright("Copyright (c) 2015 Greenbone Networks GmbH http://greenbone.net");
    script_family("Debian Local Security Checks");
    script_dependencies("gather-package-list.nasl");
    script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
    script_tag(name: "affected",  value: "libpng on Debian Linux");
    script_tag(name: "insight",   value: "libpng is a library implementing an
interface for reading and writing PNG (Portable Network Graphics) format
files.");
    script_tag(name: "solution",  value: "For the oldstable distribution
(wheezy), these problems have been fixed in version 1.2.49-1+deb7u1.

For the stable distribution (jessie), these problems have been fixed in
version 1.2.50-2+deb8u1.

For the unstable distribution (sid), these problems have been fixed in
version 1.2.54-1.

We recommend that you upgrade your libpng packages.");
    script_tag(name: "summary",   value: "Several vulnerabilities have
been discovered in the libpng PNG library. The Common Vulnerabilities
and Exposures project identifies the following problems:

CVE-2015-7981 
Qixue Xiao discovered an out-of-bounds read vulnerability in the
png_convert_to_rfc1123 function. A remote attacker can potentially
take advantage of this flaw to cause disclosure of information from
process memory.

CVE-2015-8126 
Multiple buffer overflows were discovered in the png_set_PLTE and
png_get_PLTE functions. A remote attacker can take advantage of this
flaw to cause a denial of service (application crash) via a small
bit-depth value in an IHDR (image header) chunk in a PNG image.");
    script_tag(name: "vuldetect", value: "This check tests the installed
software version using the apt package manager.");
    exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"libpng12-0:amd64", ver:"1.2.49-1+deb7u1", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng12-0:i386", ver:"1.2.49-1+deb7u1", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng12-dev:amd64", ver:"1.2.49-1+deb7u1", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng12-dev:i386", ver:"1.2.49-1+deb7u1", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng3:amd64", ver:"1.2.49-1+deb7u1", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng3:i386", ver:"1.2.49-1+deb7u1", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng12-0:amd64", ver:"1.2.50-2+deb8u1", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng12-0:i386", ver:"1.2.50-2+deb8u1", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng12-dev:amd64", ver:"1.2.50-2+deb8u1", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng12-dev:i386", ver:"1.2.50-2+deb8u1", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng3:amd64", ver:"1.2.50-2+deb8u1", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpng3:i386", ver:"1.2.50-2+deb8u1", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
