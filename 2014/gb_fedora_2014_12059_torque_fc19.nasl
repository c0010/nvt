###############################################################################
# OpenVAS Vulnerability Test
#
# Fedora Update for torque FEDORA-2014-12059
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2014 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.868413");
  script_version("$Revision: 6692 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-12 11:57:43 +0200 (Wed, 12 Jul 2017) $");
  script_tag(name:"creation_date", value:"2014-10-19 05:57:39 +0200 (Sun, 19 Oct 2014)");
  script_cve_id("CVE-2013-4319", "CVE-2013-4495");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_name("Fedora Update for torque FEDORA-2014-12059");
  script_tag(name: "summary", value: "Check the version of torque");
  script_tag(name: "vuldetect", value: "Get the installed version with the help of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "TORQUE (Tera-scale Open-source Resource and QUEue manager) is a resource
manager providing control over batch jobs and distributed compute nodes.
TORQUE is based on OpenPBS version 2.3.12 and incorporates scalability,
fault tolerance, and feature extension patches provided by USC, NCSA, OSC,
the U.S. Dept of Energy, Sandia, PNNL, U of Buffalo, TeraGrid, and many
other leading edge HPC organizations.

This package holds just a few shared files and directories.
");
  script_tag(name: "affected", value: "torque on Fedora 19");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");
  script_xref(name: "FEDORA", value: "2014-12059");
  script_xref(name: "URL" , value: "https://lists.fedoraproject.org/pipermail/package-announce/2014-October/141126.html");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2014 Greenbone Networks GmbH");
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

if(release == "FC19")
{

  if ((res = isrpmvuln(pkg:"torque", rpm:"torque~3.0.4~5.fc19", rls:"FC19")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}