###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_fedora_2017_c28bfe0986_libexif_fc26.nasl 8396 2018-01-12 11:39:41Z gveerendra $
#
# Fedora Update for libexif FEDORA-2017-c28bfe0986
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
  script_oid("1.3.6.1.4.1.25623.1.0.873986");
  script_version("$Revision: 8396 $");
  script_tag(name:"last_modification", value:"$Date: 2018-01-12 12:39:41 +0100 (Fri, 12 Jan 2018) $");
  script_tag(name:"creation_date", value:"2018-01-10 07:42:52 +0100 (Wed, 10 Jan 2018)");
  script_cve_id("CVE-2016-6328");
  script_tag(name:"cvss_base", value:"10.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_tag(name:"qod_type", value:"package");
  script_name("Fedora Update for libexif FEDORA-2017-c28bfe0986");
  script_tag(name: "summary", value: "Check the version of libexif");
  script_tag(name: "vuldetect", value: "Get the installed version with the help 
of detect NVT and check if the version is vulnerable or not.");
  script_tag(name: "insight", value: "Most digital cameras produce EXIF files, 
which are JPEG files with extra tags that contain information about the image. 
The EXIF library allows you to parse an EXIF file and read the data from those 
tags.");
  script_tag(name: "affected", value: "libexif on Fedora 26");
  script_tag(name: "solution", value: "Please Install the Updated Packages.");

  script_xref(name: "FEDORA", value: "2017-c28bfe0986");
  script_xref(name: "URL" , value: "https://lists.fedoraproject.org/archives/list/package-announce%40lists.fedoraproject.org/message/LLRWP2MKLYBU5ABX2HI42B3IBVUIGL6M");
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

  if ((res = isrpmvuln(pkg:"libexif", rpm:"libexif~0.6.21~14.fc26", rls:"FC26")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
