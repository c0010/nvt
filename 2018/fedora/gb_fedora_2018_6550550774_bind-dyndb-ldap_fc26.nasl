###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_fedora_2018_6550550774_bind-dyndb-ldap_fc26.nasl 8606 2018-01-31 13:07:06Z santu $
#
# Fedora Update for bind-dyndb-ldap FEDORA-2018-6550550774
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2018 Greenbone Networks GmbH, http://www.greenbone.net
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
  script_oid("1.3.6.1.4.1.25623.1.0.874080");
  script_version("$Revision: 8606 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-31 14:07:06 +0100 (Wed, 31 Jan 2018) $");
  script_tag(name:"creation_date", value:"2018-01-31 07:59:09 +0100 (Wed, 31 Jan 2018)");
  script_cve_id("CVE-2017-3145");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("Fedora Update for bind-dyndb-ldap FEDORA-2018-6550550774");
  script_tag(name: "summary", value: "Check the version of bind-dyndb-ldap");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "This package provides an LDAP back-end 
plug-in for BIND. It features support for dynamic updates and internal caching, 
to lift the load off of your LDAP server.
");
  script_tag(name: "affected", value: "bind-dyndb-ldap on Fedora 26");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "FEDORA", value: "2018-6550550774");
  script_xref(name: "URL" , value: "https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/JICSXP3TG3GSRP5BNUZJ5AYCG4Z45HV5");
  script_tag(name:"solution_type", value:"VendorFix");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2018 Greenbone Networks GmbH");
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

  if ((res = isrpmvuln(pkg:"bind-dyndb-ldap", rpm:"bind-dyndb-ldap~11.1~6.fc26", rls:"FC26")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
