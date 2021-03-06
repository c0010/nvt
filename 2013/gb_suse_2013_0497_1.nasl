###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_suse_2013_0497_1.nasl 9353 2018-04-06 07:14:20Z cfischer $
#
# SuSE Update for update openSUSE-SU-2013:0497-1 (update)
#
# Authors:
# System Generated Check
#
# Copyright:
# Copyright (C) 2013 Greenbone Networks GmbH, http://www.greenbone.net
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

include("revisions-lib.inc");

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.850455");
  script_version("$Revision: 9353 $");
  script_tag(name:"last_modification", value:"$Date: 2018-04-06 09:14:20 +0200 (Fri, 06 Apr 2018) $");
  script_tag(name:"creation_date", value:"2013-11-19 14:06:03 +0530 (Tue, 19 Nov 2013)");
  script_cve_id("CVE-2012-5526", "CVE-2012-6329", "CVE-2013-1667");
  script_tag(name:"cvss_base", value:"7.5");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_xref(name: "openSUSE-SU", value: "2013:0497_1");
  script_name("SuSE Update for update openSUSE-SU-2013:0497-1 (update)");

  tag_insight = "
  Perl was updated to fix 3 security issues:

  - fix rehash denial of service (compute time) [bnc#804415]
  [CVE-2013-1667]
  - improve CGI crlf escaping [bnc#789994] [CVE-2012-5526]
  - sanitize input in Maketext.pm to avoid code injection
  [bnc#797060] [CVE-2012-6329]

  In openSUSE 12.1 also the following non-security bug was
  fixed:
  - fix IPC::Open3 bug when '-' is used [bnc#755278]";

  tag_affected = "update on openSUSE 12.2, openSUSE 12.1";

  tag_solution = "Please Install the Updated Packages.";


  script_tag(name : "affected" , value : tag_affected);
  script_tag(name : "insight" , value : tag_insight);
  script_tag(name : "solution" , value : tag_solution);
  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  script_tag(name: "summary" , value: "Check for the Version of update");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2013 Greenbone Networks GmbH");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms");
  exit(0);
}


include("pkg-lib-rpm.inc");

release = get_kb_item("ssh/login/release");

res = "";
if(release == NULL){
  exit(0);
}

if(release == "openSUSE12.2")
{

  if ((res = isrpmvuln(pkg:"perl", rpm:"perl~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base", rpm:"perl-base~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-debuginfo", rpm:"perl-base-debuginfo~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-debuginfo", rpm:"perl-debuginfo~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-debugsource", rpm:"perl-debugsource~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-32bit", rpm:"perl-32bit~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-32bit", rpm:"perl-base-32bit~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-debuginfo-32bit", rpm:"perl-base-debuginfo-32bit~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-debuginfo-32bit", rpm:"perl-debuginfo-32bit~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-doc", rpm:"perl-doc~5.16.0~3.5.1", rls:"openSUSE12.2")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}


if(release == "openSUSE12.1")
{

  if ((res = isrpmvuln(pkg:"perl", rpm:"perl~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base", rpm:"perl-base~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-debuginfo", rpm:"perl-base-debuginfo~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-debuginfo", rpm:"perl-debuginfo~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-debugsource", rpm:"perl-debugsource~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-32bit", rpm:"perl-32bit~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-32bit", rpm:"perl-base-32bit~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-debuginfo-32bit", rpm:"perl-base-debuginfo-32bit~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-debuginfo-32bit", rpm:"perl-debuginfo-32bit~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-doc", rpm:"perl-doc~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-debuginfo-x86", rpm:"perl-base-debuginfo-x86~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-base-x86", rpm:"perl-base-x86~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-debuginfo-x86", rpm:"perl-debuginfo-x86~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if ((res = isrpmvuln(pkg:"perl-x86", rpm:"perl-x86~5.14.2~9.1", rls:"openSUSE12.1")) != NULL)
  {
    security_message(data:res);
    exit(0);
  }

  if (__pkg_match) exit(99); # Not vulnerable.
  exit(0);
}
