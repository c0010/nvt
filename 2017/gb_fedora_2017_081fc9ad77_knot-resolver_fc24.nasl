###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_fedora_2017_081fc9ad77_knot-resolver_fc24.nasl 6797 2017-07-25 06:01:21Z santu $
#
# Fedora Update for knot-resolver FEDORA-2017-081fc9ad77
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
  script_oid("1.3.6.1.4.1.25623.1.0.872896");
  script_version("$Revision: 6797 $");
  script_tag(name:"last_modification", value:"$Date: 2017-07-25 08:01:21 +0200 (Tue, 25 Jul 2017) $");
  script_tag(name:"creation_date", value:"2017-07-21 07:33:40 +0200 (Fri, 21 Jul 2017)");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("Fedora Update for knot-resolver FEDORA-2017-081fc9ad77");
  script_tag(name: "summary", value: "Check the version of knot-resolver");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "The Knot DNS Resolver is a caching full 
resolver implementation written in C and LuaJIT, including both a resolver 
library and a daemon. Modular architecture of the library keeps the core tiny and 
efficient, and provides a state-machine like API for extensions.

The package is pre-configured as local caching resolver.
To start using it, just start the local DNS socket:


BEWARE:
Because of 'https://bugzilla.redhat.com/show_bug.cgi?id=1366968'
you need to switch your system to SELinux permissive mode.
");
  script_tag(name: "affected", value: "knot-resolver on Fedora 24");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "FEDORA", value: "2017-081fc9ad77");
  script_xref(name: "URL" , value: "https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/TD5CAO574NIZW4TDUDII4LYFWKI62JPR");
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

if(release == "FC24")
{

  if ((res = isrpmvuln(pkg:"knot-resolver", rpm:"knot-resolver~1.3.1~1.fc24", rls:"FC24")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
