###############################################################################
# OpenVAS Vulnerability Test
#
# CentOS Update for nss CESA-2015:1980 centos5
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
  script_oid("1.3.6.1.4.1.25623.1.0.882316");
  script_version("$Revision: 6657 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-10 13:50:44 +0200 (Mon, 10 Jul 2017) $");
  script_tag(name:"creation_date", value:"2015-11-05 06:16:15 +0100 (Thu, 05 Nov 2015)");
  script_cve_id("CVE-2015-7181", "CVE-2015-7182", "CVE-2015-7183");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_tag(name:"qod_type", value:"package");
  script_name("CentOS Update for nss CESA-2015:1980 centos5 ");
  script_tag(name: "summary", value: "Check the version of nss");
  script_tag(name: "vuldetect", value: "Get the installed version with the help of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "Network Security Services (NSS) is a set of libraries designed to support
cross-platform development of security-enabled client and server
applications. Netscape Portable Runtime (NSPR) provides platform
independence for non-GUI operating system facilities.

A use-after-poison flaw and a heap-based buffer overflow flaw were found in
the way NSS parsed certain ASN.1 structures. An attacker could use these
flaws to cause NSS to crash or execute arbitrary code with the permissions
of the user running an application compiled against the NSS library.
(CVE-2015-7181, CVE-2015-7182)

A heap-based buffer overflow was found in NSPR. An attacker could use this
flaw to cause NSPR to crash or execute arbitrary code with the permissions
of the user running an application compiled against the NSPR library.
(CVE-2015-7183)

Red Hat would like to thank the Mozilla project for reporting these issues.
Upstream acknowledges Tyson Smith, David Keeler and Ryan Sleevi as the
original reporter.

All nss and nspr users are advised to upgrade to these updated packages,
which contain backported patches to correct these issues.
");
  script_tag(name: "affected", value: "nss on CentOS 5");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");
  script_xref(name: "CESA", value: "2015:1980");
  script_xref(name: "URL" , value: "http://lists.centos.org/pipermail/centos-announce/2015-November/021473.html");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("CentOS Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/centos", "ssh/login/rpms");
  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "CentOS5")
{

  if ((res = isrpmvuln(pkg:"nss", rpm:"nss~3.19.1~2.el5_11", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"nss-devel", rpm:"nss-devel~3.19.1~2.el5_11", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"nss-pkcs11-devel", rpm:"nss-pkcs11-devel~3.19.1~2.el5_11", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"nss-tools", rpm:"nss-tools~3.19.1~2.el5_11", rls:"CentOS5")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}