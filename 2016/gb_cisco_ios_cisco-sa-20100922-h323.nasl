###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_cisco_ios_cisco-sa-20100922-h323.nasl 11596 2018-09-25 09:49:46Z asteins $
#
# Cisco IOS Software H.323 Denial of Service Vulnerabilities
#
# Authors:
# Michael Meyer <michael.meyer@greenbone.net>
#
# Copyright:
# Copyright (c) 2016 Greenbone Networks GmbH
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
###############################################################################

CPE = "cpe:/o:cisco:ios";

if (description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.105633");
  script_cve_id("CVE-2010-2828");
  script_tag(name:"cvss_base", value:"7.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_version("$Revision: 11596 $");

  script_name("Cisco IOS Software H.323 Denial of Service Vulnerabilities");

  script_xref(name:"URL", value:"http://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-20100922-h323");
   script_xref(name:"URL", value:"http://tools.cisco.com/security/center/content/CiscoSecurityBundle/cisco-sa-20100922-bundle");
 script_xref(name:"URL", value:"http://tools.cisco.com/security/center/content/CiscoSecurityBundle/cisco-sa-20100922-bundle");


  script_tag(name:"vuldetect", value:"Check the version.");

  script_tag(name:"solution", value:"See the referenced vendor advisory for a solution.");
  script_tag(name:"summary", value:"The H.323 implementation in Cisco IOS�
Software contains two vulnerabilities that may be exploited remotely to cause a
denial of service (DoS) condition on a device that is running a vulnerable
version of Cisco IOS Software.

 Cisco has released software updates that address these vulnerabilities. There are no workarounds to mitigate these vulnerabilities
other than disabling H.323 on the vulnerable device.
http://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-20100922-h323.

Note:  The September 22, 2010, Cisco IOS Software Security Advisory bundled
publication includes six Cisco Security Advisories. Five of the advisories
address vulnerabilities in Cisco IOS Software, and one advisory addresses
vulnerabilities in Cisco Unified Communications Manager. Each advisory lists
the releases that correct the vulnerability or vulnerabilities detailed in the
advisory. The table at the following URL lists releases that correct all Cisco
IOS Software vulnerabilities that have been published on September 22, 2010, or
earlier:
http://www.cisco.com/en/US/products/products_security_advisory09186a0080b4a315.shtml
 Individual publication links are in `Cisco Event Response:
Semiannual Cisco IOS Software Security Advisory Bundled Publication` at the
following link:
http://www.cisco.com/web/about/security/intelligence/Cisco_ERP_sep10.html");

  script_tag(name:"qod_type", value:"package");
  script_tag(name:"solution_type", value:"VendorFix");

  script_tag(name:"last_modification", value:"$Date: 2018-09-25 11:49:46 +0200 (Tue, 25 Sep 2018) $");
  script_tag(name:"creation_date", value:"2016-05-03 17:32:21 +0200 (Tue, 03 May 2016)");
  script_category(ACT_GATHER_INFO);
  script_family("CISCO");
  script_copyright("This script is Copyright (C) 2016 Greenbone Networks GmbH");
  script_dependencies("gb_ssh_cisco_ios_get_version.nasl");
  script_mandatory_keys("cisco_ios/version");
 exit(0);
}

include("host_details.inc");
include("version_func.inc");

if( ! version = get_app_version( cpe:CPE ) ) exit( 0 );

affected = make_list(
		'12.1(5)T11',
		'12.1(5)T12',
		'12.1(5)T15',
		'12.1(5)T18',
		'12.1(5)T20',
		'12.1(5)T3',
		'12.1(5)T4',
		'12.1(5)T5',
		'12.1(5)T6',
		'12.1(5)T7',
		'12.1(5)T8',
		'12.1(5)T8a',
		'12.1(5)T8b',
		'12.1(3)XI',
		'12.1(3a)XI1',
		'12.1(3a)XI3',
		'12.1(3a)XI4',
		'12.1(3a)XI5',
		'12.1(3a)XI6',
		'12.1(3a)XI7',
		'12.1(3a)XI8',
		'12.1(3a)XI9',
		'12.1(5)XM',
		'12.1(5)XM1',
		'12.1(5)XM2',
		'12.1(5)XM3',
		'12.1(5)XM4',
		'12.1(5)XM5',
		'12.1(5)XM8',
		'12.1(5)YB',
		'12.1(5)YB1',
		'12.1(5)YB4',
		'12.1(5)YB5',
		'12.2(1b)',
		'12.2(1c)',
		'12.2(1d)',
		'12.2(3b)',
		'12.2(5a)',
		'12.2(5c)',
		'12.2(5d)',
		'12.2(6)',
		'12.2(6b)',
		'12.2(6c)',
		'12.2(6e)',
		'12.2(6i)',
		'12.2(7)',
		'12.2(7b)',
		'12.2(7c)',
		'12.2(7e)',
		'12.2(10a)',
		'12.2(10b)',
		'12.2(10d)',
		'12.2(10g)',
		'12.2(12)',
		'12.2(12e)',
		'12.2(12f)',
		'12.2(12g)',
		'12.2(12h)',
		'12.2(12i)',
		'12.2(12j)',
		'12.2(12k)',
		'12.2(12l)',
		'12.2(12m)',
		'12.2(13a)',
		'12.2(13b)',
		'12.2(13c)',
		'12.2(13e)',
		'12.2(16)',
		'12.2(16a)',
		'12.2(16c)',
		'12.2(16f)',
		'12.2(17)',
		'12.2(17a)',
		'12.2(17b)',
		'12.2(17e)',
		'12.2(19)',
		'12.2(19a)',
		'12.2(19b)',
		'12.2(19c)',
		'12.2(21)',
		'12.2(21a)',
		'12.2(21b)',
		'12.2(23a)',
		'12.2(23f)',
		'12.2(24a)',
		'12.2(26)',
		'12.2(26a)',
		'12.2(26b)',
		'12.2(27)',
		'12.2(27b)',
		'12.2(28)',
		'12.2(28b)',
		'12.2(28c)',
		'12.2(29a)',
		'12.2(31)',
		'12.2(32)',
		'12.2(34)',
		'12.2(37)',
		'12.2(40)',
		'12.2(4)B',
		'12.2(4)B2',
		'12.2(4)B3',
		'12.2(4)B4',
		'12.2(4)B5',
		'12.2(4)B7',
		'12.2(15)B',
		'12.2(16)B',
		'12.2(16)B1',
		'12.2(16)B2',
		'12.2(4)BW',
		'12.2(4)BW1',
		'12.2(16)BX',
		'12.2(16)BX2',
		'12.2(8)BY',
		'12.2(8)BY1',
		'12.2(15)CZ',
		'12.2(15)CZ1',
		'12.2(15)CZ2',
		'12.2(15)CZ3',
		'12.2(2)DD1',
		'12.2(2)DD2',
		'12.2(1)DX',
		'12.2(1)DX1',
		'12.2(1)M0',
		'12.2(6c)M1',
		'12.2(12b)M1',
		'12.2(15)MC1a',
		'12.2(15)MC1b',
		'12.2(9)S',
		'12.2(14)S',
		'12.2(14)S1',
		'12.2(14)S10',
		'12.2(14)S11',
		'12.2(14)S12',
		'12.2(14)S13',
		'12.2(14)S14',
		'12.2(14)S16',
		'12.2(14)S17',
		'12.2(14)S18',
		'12.2(14)S8',
		'12.2(14)S9',
		'12.2(18)S1',
		'12.2(18)S10',
		'12.2(18)S11',
		'12.2(18)S13',
		'12.2(18)S2',
		'12.2(18)S3',
		'12.2(18)S5',
		'12.2(18)S6',
		'12.2(18)S7',
		'12.2(18)S8',
		'12.2(18)S9',
		'12.2(20)S1',
		'12.2(20)S10',
		'12.2(20)S11',
		'12.2(20)S12',
		'12.2(20)S3',
		'12.2(20)S9',
		'12.2(22)S',
		'12.2(22)S1',
		'12.2(22)S2',
		'12.2(25)S1',
		'12.2(25)S10',
		'12.2(25)S11',
		'12.2(25)S12',
		'12.2(25)S13',
		'12.2(25)S2',
		'12.2(25)S3',
		'12.2(25)S6',
		'12.2(25)S7',
		'12.2(25)S8',
		'12.2(28)SB',
		'12.2(28)SB2',
		'12.2(28)SB3',
		'12.2(28)SB4',
		'12.2(28)SB6',
		'12.2(28)SB9',
		'12.2(31)SB3',
		'12.2(31)SB5',
		'12.2(27)SBC',
		'12.2(27)SBC3',
		'12.2(27)SBC4',
		'12.2(31)SG1',
		'12.2(18)SV3',
		'12.2(22)SV1',
		'12.2(23)SV1',
		'12.2(25)SV2',
		'12.2(27)SV5',
		'12.2(25)SW3',
		'12.2(25)SW4',
		'12.2(25)SW4a',
		'12.2(25)SW5',
		'12.2(25)SW7',
		'12.2(25)SW9',
		'12.2(99)SX1003',
		'12.2(18)SXD1',
		'12.2(18)SXF7',
		'12.2(14)SZ1',
		'12.2(14)SZ2',
		'12.2(14)SZ5',
		'12.2(14)SZ6',
		'12.2(2)T2',
		'12.2(2)T3',
		'12.2(2)T4',
		'12.2(4)T',
		'12.2(4)T1',
		'12.2(4)T2',
		'12.2(4)T3',
		'12.2(8)T',
		'12.2(8)T10',
		'12.2(8)T2',
		'12.2(8)T4',
		'12.2(8)T5',
		'12.2(8)T8',
		'12.2(11)T11',
		'12.2(11)T4',
		'12.2(11)T6',
		'12.2(11)T8',
		'12.2(13)T',
		'12.2(13)T1',
		'12.2(13)T1a',
		'12.2(13)T10',
		'12.2(13)T13',
		'12.2(13)T14',
		'12.2(13)T2',
		'12.2(13)T5',
		'12.2(13)T8',
		'12.2(15)T',
		'12.2(15)T10',
		'12.2(15)T11',
		'12.2(15)T12',
		'12.2(15)T13',
		'12.2(15)T14',
		'12.2(15)T15',
		'12.2(15)T16',
		'12.2(15)T2',
		'12.2(15)T4',
		'12.2(15)T4e',
		'12.2(15)T8',
		'12.2(2)XA',
		'12.2(2)XA1',
		'12.2(2)XA3',
		'12.2(2)XA5',
		'12.2(2)XB1',
		'12.2(2)XB10',
		'12.2(2)XB12',
		'12.2(2)XB15',
		'12.2(2)XB2',
		'12.2(2)XB8',
		'12.2(1a)XC1',
		'12.2(1a)XC2',
		'12.2(2)XC',
		'12.2(2)XC2',
		'12.2(1)XD',
		'12.2(1)XD1',
		'12.2(1)XD2',
		'12.2(1)XD4',
		'12.2(2)XG',
		'12.2(2)XG1',
		'12.2(2)XH',
		'12.2(2)XH2',
		'12.2(2)XI',
		'12.2(2)XJ',
		'12.2(2)XK',
		'12.2(4)XL',
		'12.2(4)XL2',
		'12.2(4)XL3',
		'12.2(4)XL5',
		'12.2(4)XM4',
		'12.2(2)XN',
		'12.2(2)XQ',
		'12.2(2)XQ1',
		'12.2(1)XS',
		'12.2(1)XS1',
		'12.2(2)XT',
		'12.2(2)XT2',
		'12.2(2)XT3',
		'12.2(4)XV',
		'12.2(4)XV4',
		'12.2(4)XV4a',
		'12.2(4)XV5',
		'12.2(4)XW',
		'12.2(4)YA',
		'12.2(4)YA2',
		'12.2(4)YA6',
		'12.2(4)YA8',
		'12.2(4)YA9',
		'12.2(4)YB',
		'12.2(2)YC',
		'12.2(2)YC1',
		'12.2(2)YC2',
		'12.2(2)YC3',
		'12.2(2)YC4',
		'12.2(8)YD',
		'12.2(8)YD1',
		'12.2(8)YD2',
		'12.2(8)YD3',
		'12.2(4)YF',
		'12.2(8)YJ',
		'12.2(8)YJ1',
		'12.2(2)YK',
		'12.2(2)YK1',
		'12.2(8)YM',
		'12.2(11)YT1',
		'12.2(11)YT2',
		'12.2(11)YV',
		'12.2(8)YW',
		'12.2(8)YW1',
		'12.2(8)YW2',
		'12.2(11)YX',
		'12.2(11)YX1',
		'12.2(8)YY',
		'12.2(8)YY1',
		'12.2(8)YY2',
		'12.2(8)YY3',
		'12.2(8)YY4',
		'12.2(11)YZ',
		'12.2(11)YZ1',
		'12.2(11)YZ2',
		'12.2(8)ZB1',
		'12.2(8)ZB2',
		'12.2(8)ZB3',
		'12.2(8)ZB4',
		'12.2(8)ZB4a',
		'12.2(8)ZB5',
		'12.2(8)ZB7',
		'12.2(8)ZB8',
		'12.2(11)ZC',
		'12.2(13)ZC',
		'12.2(13)ZD1',
		'12.2(13)ZE',
		'12.2(13)ZF',
		'12.2(13)ZF1',
		'12.2(13)ZF2',
		'12.2(13)ZH',
		'12.2(13)ZH4',
		'12.2(13)ZH5',
		'12.2(13)ZH6',
		'12.2(13)ZH7',
		'12.2(13)ZH8',
		'12.2(15)ZJ1',
		'12.2(15)ZJ3',
		'12.2(15)ZJ5',
		'12.2(15)ZL',
		'12.2(15)ZL1',
		'12.2(13)ZP1',
		'12.2(13)ZP2',
		'12.2(13)ZP4',
		'12.2(18)ZU1',
		'12.2(18)ZU2',
		'12.3(1)',
		'12.3(1a)',
		'12.3(3a)',
		'12.3(3c)',
		'12.3(3e)',
		'12.3(3f)',
		'12.3(3g)',
		'12.3(3i)',
		'12.3(5a)',
		'12.3(5b)',
		'12.3(5c)',
		'12.3(5f)',
		'12.3(6)',
		'12.3(6a)',
		'12.3(6b)',
		'12.3(6c)',
		'12.3(6f)',
		'12.3(9c)',
		'12.3(9d)',
		'12.3(9e)',
		'12.3(10)',
		'12.3(10a)',
		'12.3(10b)',
		'12.3(10c)',
		'12.3(10d)',
		'12.3(10e)',
		'12.3(10f)',
		'12.3(12a)',
		'12.3(12b)',
		'12.3(12c)',
		'12.3(12e)',
		'12.3(13)',
		'12.3(15)',
		'12.3(15a)',
		'12.3(16)',
		'12.3(16a)',
		'12.3(17a)',
		'12.3(17b)',
		'12.3(18)',
		'12.3(21)',
		'12.3(3)B',
		'12.3(3)B1',
		'12.3(5a)B2',
		'12.3(5a)B3',
		'12.3(5a)B4',
		'12.3(5a)B5',
		'12.3(2)T1',
		'12.3(2)T2',
		'12.3(2)T3',
		'12.3(2)T4',
		'12.3(2)T5',
		'12.3(2)T7',
		'12.3(4)T1',
		'12.3(4)T11',
		'12.3(4)T2',
		'12.3(4)T4',
		'12.3(4)T6',
		'12.3(4)T8',
		'12.3(7)T',
		'12.3(7)T11',
		'12.3(7)T12',
		'12.3(7)T2',
		'12.3(7)T3',
		'12.3(7)T6',
		'12.3(7)T7',
		'12.3(7)T9',
		'12.3(8)T11',
		'12.3(8)T3',
		'12.3(8)T6',
		'12.3(8)T7',
		'12.3(8)T9',
		'12.3(11)T',
		'12.3(11)T10',
		'12.3(11)T11',
		'12.3(11)T2',
		'12.3(11)T3',
		'12.3(11)T4',
		'12.3(11)T5',
		'12.3(11)T6',
		'12.3(11)T9',
		'12.3(14)T',
		'12.3(14)T1',
		'12.3(14)T3',
		'12.3(14)T5',
		'12.3(14)T7',
		'12.3(4)TPC11b',
		'12.3(2)XB',
		'12.3(2)XB1',
		'12.3(2)XB3',
		'12.3(2)XC1',
		'12.3(2)XC3',
		'12.3(4)XD1',
		'12.3(4)XD3',
		'12.3(2)XE',
		'12.3(2)XE1',
		'12.3(2)XF',
		'12.3(4)XG',
		'12.3(4)XG2',
		'12.3(4)XG4',
		'12.3(7)XI2',
		'12.3(7)XI3',
		'12.3(7)XI5',
		'12.3(7)XI7',
		'12.3(7)XI7a',
		'12.3(7)XI7b',
		'12.3(7)XI8',
		'12.3(7)XJ',
		'12.3(7)XJ1',
		'12.3(7)XJ2',
		'12.3(4)XK',
		'12.3(4)XK1',
		'12.3(4)XK3',
		'12.3(4)XK4',
		'12.3(11)XL',
		'12.3(11)XL1',
		'12.3(7)XR3',
		'12.3(7)XR4',
		'12.3(7)XR5',
		'12.3(8)XU3',
		'12.3(8)XU4',
		'12.3(8)XW',
		'12.3(8)XW2',
		'12.3(8)XW3',
		'12.3(8)XX',
		'12.3(8)XX1',
		'12.3(8)XY1',
		'12.3(8)XY2',
		'12.3(8)XY4',
		'12.3(8)XY7',
		'12.3(2)XZ1',
		'12.3(2)XZ2',
		'12.3(11)YF2',
		'12.3(11)YF3',
		'12.3(8)YG',
		'12.3(8)YG2',
		'12.3(8)YG3',
		'12.3(8)YG4',
		'12.3(11)YK2',
		'12.3(14)YM10',
		'12.3(14)YM3',
		'12.3(14)YM7',
		'12.3(14)YM8',
		'12.3(14)YM9',
		'12.3(14)YQ1',
		'12.3(14)YQ2',
		'12.3(14)YQ3',
		'12.3(14)YQ5',
		'12.3(14)YQ6',
		'12.3(14)YQ7',
		'12.3(14)YT',
		'12.3(14)YT1',
		'12.3(14)YU1',
		'12.3(8)ZA',
		'12.4(1a)',
		'12.4(1b)',
		'12.4(1c)',
		'12.4(3a)',
		'12.4(3b)',
		'12.4(3c)',
		'12.4(3g)',
		'12.4(5)',
		'12.4(5a)',
		'12.4(5b)',
		'12.4(7a)',
		'12.4(7c)',
		'12.4(7e)',
		'12.4(8)',
		'12.4(8a)',
		'12.4(8b)',
		'12.4(8c)',
		'12.4(10a)',
		'12.4(10b)',
		'12.4(12)',
		'12.4(12a)',
		'12.4(13)',
		'12.4(22)GC1',
		'12.4(24)GC1',
		'12.4(2)MR',
		'12.4(4)MR',
		'12.4(6)MR',
		'12.4(6)MR1',
		'12.4(9)MR',
		'12.4(11)MR',
		'12.4(12)MR',
		'12.4(12)MR1',
		'12.4(12)MR2',
		'12.4(16)MR',
		'12.4(16)MR1',
		'12.4(16)MR2',
		'12.4(19)MR',
		'12.4(19)MR1',
		'12.4(19)MR2',
		'12.4(19)MR3',
		'12.4(20)MR',
		'12.4(20)MR2',
		'12.4(2)T1',
		'12.4(2)T2',
		'12.4(2)T3',
		'12.4(4)T',
		'12.4(4)T1',
		'12.4(4)T2',
		'12.4(4)T3',
		'12.4(4)T5',
		'12.4(4)T7',
		'12.4(6)T',
		'12.4(6)T1',
		'12.4(6)T10',
		'12.4(6)T11',
		'12.4(6)T2',
		'12.4(6)T3',
		'12.4(6)T4',
		'12.4(6)T5',
		'12.4(6)T6',
		'12.4(6)T7',
		'12.4(6)T8',
		'12.4(6)T9',
		'12.4(9)T',
		'12.4(9)T1',
		'12.4(9)T2',
		'12.4(9)T3',
		'12.4(9)T4',
		'12.4(9)T5',
		'12.4(9)T6',
		'12.4(9)T7',
		'12.4(11)T',
		'12.4(11)T1',
		'12.4(11)T2',
		'12.4(11)T3',
		'12.4(11)T4',
		'12.4(15)T',
		'12.4(15)T1',
		'12.4(15)T10',
		'12.4(15)T11',
		'12.4(15)T12',
		'12.4(15)T13',
		'12.4(15)T2',
		'12.4(15)T3',
		'12.4(15)T4',
		'12.4(15)T5',
		'12.4(15)T6',
		'12.4(15)T7',
		'12.4(15)T8',
		'12.4(15)T9',
		'12.4(20)T',
		'12.4(20)T1',
		'12.4(20)T2',
		'12.4(20)T3',
		'12.4(20)T4',
		'12.4(20)T5',
		'12.4(22)T',
		'12.4(22)T1',
		'12.4(22)T2',
		'12.4(22)T3',
		'12.4(22)T4',
		'12.4(22)T5',
		'12.4(24)T',
		'12.4(24)T1',
		'12.4(24)T2',
		'12.4(24)T3',
		'12.4(2)XA',
		'12.4(2)XA1',
		'12.4(2)XA2',
		'12.4(2)XB',
		'12.4(2)XB1',
		'12.4(2)XB2',
		'12.4(2)XB4',
		'12.4(4)XC',
		'12.4(4)XC1',
		'12.4(4)XC2',
		'12.4(4)XC3',
		'12.4(4)XC4',
		'12.4(4)XC5',
		'12.4(4)XC6',
		'12.4(4)XC7',
		'12.4(4)XD4',
		'12.4(6)XE',
		'12.4(6)XE1',
		'12.4(6)XE2',
		'12.4(6)XE3',
		'12.4(9)XG2',
		'12.4(11)XJ',
		'12.4(11)XJ2',
		'12.4(11)XJ3',
		'12.4(11)XJ4',
		'12.4(15)XL',
		'12.4(15)XL1',
		'12.4(15)XL2',
		'12.4(15)XL3',
		'12.4(15)XL4',
		'12.4(15)XL5',
		'12.4(15)XM1',
		'12.4(15)XM2',
		'12.4(6)XP',
		'12.4(6)XT',
		'12.4(6)XT1',
		'12.4(6)XT2',
		'12.4(11)XV',
		'12.4(11)XV1',
		'12.4(11)XW',
		'12.4(11)XW1',
		'12.4(11)XW10',
		'12.4(11)XW2',
		'12.4(11)XW3',
		'12.4(11)XW4',
		'12.4(11)XW5',
		'12.4(11)XW6',
		'12.4(11)XW7',
		'12.4(11)XW8',
		'12.4(11)XW9',
		'12.4(15)XY',
		'12.4(15)XY1',
		'12.4(15)XY2',
		'12.4(15)XY3',
		'12.4(15)XY4',
		'12.4(15)XY5',
		'12.4(15)XZ',
		'12.4(15)XZ1',
		'12.4(15)XZ2',
		'12.4(20)YA',
		'12.4(20)YA1',
		'12.4(20)YA2',
		'12.4(20)YA3',
		'12.4(22)YB',
		'12.4(22)YB1',
		'12.4(22)YB2',
		'12.4(22)YB3',
		'12.4(22)YB4',
		'12.4(22)YB5',
		'12.4(22)YB6',
		'15.0(1)M',
		'15.0(1)M1',
		'15.0(1)M2',
		'15.0(1)XA',
		'15.0(1)XA1',
		'15.0(1)XA2',
		'15.0(1)XA3',
		'15.0(1)XA4',
		'15.1(1)T' );

foreach af ( affected )
{
  if( version == af )
  {
    report = report_fixed_ver(  installed_version:version, fixed_version: "See advisory" );
    security_message( port:0, data:report );
    exit( 0 );
  }
}

exit( 99 );
