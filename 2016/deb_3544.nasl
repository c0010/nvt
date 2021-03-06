# OpenVAS Vulnerability Test
# $Id: deb_3544.nasl 8115 2017-12-14 07:30:22Z teissa $
# Auto-generated from advisory DSA 3544-1 using nvtgen 1.0
# Script version: 1.0
#
# Author:
# Greenbone Networks
#
# Copyright:
# Copyright (c) 2016 Greenbone Networks GmbH http://greenbone.net
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
    script_oid("1.3.6.1.4.1.25623.1.0.703544");
    script_version("$Revision: 8115 $");
    script_cve_id("CVE-2016-2512", "CVE-2016-2513");
    script_name("Debian Security Advisory DSA 3544-1 (python-django - security update)");
    script_tag(name: "last_modification", value: "$Date: 2017-12-14 08:30:22 +0100 (Thu, 14 Dec 2017) $");
    script_tag(name: "creation_date", value: "2016-04-07 00:00:00 +0200 (Thu, 07 Apr 2016)");
    script_tag(name:"cvss_base", value:"4.3");
    script_tag(name:"cvss_base_vector", value:"AV:N/AC:M/Au:N/C:N/I:P/A:N");
    script_tag(name: "solution_type", value: "VendorFix");
    script_tag(name: "qod_type", value: "package");

    script_xref(name: "URL", value: "http://www.debian.org/security/2016/dsa-3544.html");


    script_category(ACT_GATHER_INFO);

    script_copyright("Copyright (c) 2016 Greenbone Networks GmbH http://greenbone.net");
    script_family("Debian Local Security Checks");
    script_dependencies("gather-package-list.nasl");
    script_mandatory_keys("ssh/login/debian_linux", "ssh/login/packages");
    script_tag(name: "affected",  value: "python-django on Debian Linux");
    script_tag(name: "insight",   value: "Django is a high-level web application
framework that loosely follows the model-view-controller design pattern.");
    script_tag(name: "solution",  value: "For the oldstable distribution (wheezy),
these problems have been fixed in version 1.4.5-1+deb7u16.

For the stable distribution (jessie), these problems have been fixed in
version 1.7.7-1+deb8u4.

For the testing distribution (stretch), these problems have been fixed
in version 1.9.4-1.

For the unstable distribution (sid), these problems have been fixed in
version 1.9.4-1.

We recommend that you upgrade your python-django packages.");
    script_tag(name: "summary",   value: "Several vulnerabilities were discovered
in Django, a high-level Python web development framework. The Common Vulnerabilities
and Exposures project identifies the following problems:

CVE-2016-2512 
Mark Striemer discovered that some user-supplied redirect URLs
containing basic authentication credentials are incorrectly handled,
potentially allowing a remote attacker to perform a malicious
redirect or a cross-site scripting attack.

CVE-2016-2513 
Sjoerd Job Postmus discovered that Django allows user enumeration
through timing difference on password hasher work factor upgrades.");
    script_tag(name: "vuldetect", value: "This check tests the installed software
version using the apt package manager.");
    exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-deb.inc");

res = "";
report = "";
if ((res = isdpkgvuln(pkg:"python-django", ver:"1.4.5-1+deb7u16", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-django-doc", ver:"1.4.5-1+deb7u16", rls_regex:"DEB7.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-django", ver:"1.9.4-1", rls_regex:"DEB9.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-django-common", ver:"1.9.4-1", rls_regex:"DEB9.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-django-doc", ver:"1.9.4-1", rls_regex:"DEB9.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python3-django", ver:"1.9.4-1", rls_regex:"DEB9.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-django", ver:"1.7.7-1+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-django-common", ver:"1.7.7-1+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python-django-doc", ver:"1.7.7-1+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}
if ((res = isdpkgvuln(pkg:"python3-django", ver:"1.7.7-1+deb8u4", rls_regex:"DEB8.[0-9]+")) != NULL) {
    report += res;
}

if (report != "") {
    security_message(data:report);
} else if (__pkg_match) {
    exit(99); # Not vulnerable.
}
