# OpenVAS Vulnerability Test
# $Id: deb_3816.nasl 9488 2018-04-16 05:42:12Z cfischer $
# Auto-generated from advisory DSA 3816-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2017 Greenbone Networks GmbH http://greenbone.net
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
    script_oid("1.3.6.1.4.1.25623.1.0.703816");
    script_version("$Revision: 9488 $");
    script_cve_id("CVE-2017-2619");
    script_name("Debian Security Advisory DSA 3816-1 (samba - security update)");
    script_tag(name: "last_modification", value: "$Date: 2018-04-16 07:42:12 +0200 (Mon, 16 Apr 2018) $");
    script_tag(name: "creation_date", value: "2017-03-23 00:00:00 +0100 (Thu, 23 Mar 2017)");
    script_tag(name:"cvss_base", value:"6.0");
    script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:S/C:P/I:P/A:P");
    script_tag(name: "solution_type", value: "VendorFix");
    script_tag(name: "qod_type", value: "package");

    script_xref(name: "URL", value: "http://www.debian.org/security/2017/dsa-3816.html");

    script_category(ACT_GATHER_INFO);

    script_copyright("Copyright (c) 2017 Greenbone Networks GmbH http://greenbone.net");
    script_family("Debian Local Security Checks");
    script_dependencies("gather-package-list.nasl");
    script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
    script_tag(name: "affected",  value: "samba on Debian Linux");
        script_tag(name: "insight",   value: "Samba is an implementation of the SMB/CIFS protocol for Unix systems,
providing support for cross-platform file and printer sharing with
Microsoft Windows, OS X, and other Unix systems. Samba can also function
as an NT4-style domain controller, and can integrate with both NT4 domains
and Active Directory realms as a member server.");
    script_tag(name: "solution",  value: "For the stable distribution (jessie), this problem has been fixed in
version 2:4.2.14+dfsg-0+deb8u4.

For the unstable distribution (sid), this problem has been fixed in
version 2:4.5.6+dfsg-2.

We recommend that you upgrade your samba packages.");
    script_tag(name: "summary",   value: "Jann Horn of Google discovered a time-of-check, time-of-use race
condition in Samba, a SMB/CIFS file, print, and login server for Unix. A
malicious client can take advantage of this flaw by exploting a symlink
race to access areas of the server file system not exported under a
share definition.");
    script_tag(name: "vuldetect", value: "This check tests the installed software version using the apt package manager.");

    exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"ctdb", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libnss-winbind", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpam-smbpass", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libpam-winbind", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libparse-pidl-perl", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libsmbclient", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libsmbclient-dev", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libsmbsharemodes-dev", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libsmbsharemodes0", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libwbclient-dev", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"libwbclient0", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-samba", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"registry-tools", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-common", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-common-bin", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-dbg", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-dev", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-doc", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-dsdb-modules", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-libs", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-testsuite", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"samba-vfs-modules", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"smbclient", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"winbind", ver:"2:4.2.14+dfsg-0+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
