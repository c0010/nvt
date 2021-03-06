###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_nmap_qscan_net.nasl 11537 2018-09-21 19:46:46Z cfischer $
#
# Autogenerated NSE wrapper
#
# Authors:
# NSE-Script: Kris Katterjohn
# NASL-Wrapper: autogenerated
#
# Copyright:
# NSE-Script: The Nmap Security Scanner (http://nmap.org)
# Copyright (C) 2011 Greenbone Networks GmbH, http://www.greenbone.net
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2
# (or any later version), as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
###############################################################################

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.104158");
  script_version("$Revision: 11537 $");
  script_tag(name:"last_modification", value:"$Date: 2018-09-21 21:46:46 +0200 (Fri, 21 Sep 2018) $");
  script_tag(name:"creation_date", value:"2011-06-01 16:32:46 +0200 (Wed, 01 Jun 2011)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("Nmap NSE net: qscan");
  script_category(ACT_INIT);
  script_tag(name:"qod_type", value:"remote_analysis");
  script_copyright("NSE-Script: The Nmap Security Scanner; NASL-Wrapper: Greenbone Networks GmbH");
  script_family("Nmap NSE net");
  script_dependencies("nmap_nse_net.nasl");
  script_mandatory_keys("Tools/Launch/nmap_nse_net");

  script_add_preference(name:"delay", value:"", type:"entry");
  script_add_preference(name:"numtrips", value:"", type:"entry");
  script_add_preference(name:"confidence", value:"", type:"entry");
  script_add_preference(name:"numclosed", value:"", type:"entry");
  script_add_preference(name:"numopen", value:"", type:"entry");

  script_tag(name:"summary", value:"Repeatedly probe open and/or closed ports on a host to obtain a series         of round-
trip time values for each port.  These values are used to         group collections of ports which
are statistically different from other         groups.  Ports being in different groups (or
'families') may be due to         network mechanisms such as port forwarding to machines behind a
NAT.

        In order to group these ports into different families, some statistical         values must
be computed.  Among these values are the mean and standard         deviation of the round-trip times
for each port.  Once all of the times         have been recorded and these values have been
computed, the Student's         t-test is used to test the statistical significance of the
differences         between each port's data.  Ports which have round-trip times that are
statistically the same are grouped together in the same family.

        This script is based on Doug Hoyte's Qscan documentation and patches         for Nmap.


SYNTAX:

delay:  Average delay between packet sends. This is a number followed by 'ms' for milliseconds or 's' for seconds. ('m' and 'h' are also supported but are too long for timeouts.) The actual delay will randomly vary between 50% and 150% of the time specified. Default:'200ms'.


numtrips:  Number of round-trip times to try to get.


confidence:  Confidence level:'0.75', '0.9', '0.95', '0.975', '0.99', '0.995', or '0.9995'.


numclosed:  Maximum number of closed ports to probe (default 1). A negative number disables the limit.



numopen:  Maximum number of open ports to probe (default 8). A negative number disables the limit.");

  exit(0);
}

include("nmap.inc");

phase = 0;
if (defined_func("scan_phase")) {
  phase = scan_phase();
}

if (phase == 1) {
    argv = make_array();

    pref = script_get_preference("delay");
    if (!isnull(pref) && pref != "") {
        argv["delay"] = string('"', pref, '"');
    }
    pref = script_get_preference("numtrips");
    if (!isnull(pref) && pref != "") {
        argv["numtrips"] = string('"', pref, '"');
    }
    pref = script_get_preference("confidence");
    if (!isnull(pref) && pref != "") {
        argv["confidence"] = string('"', pref, '"');
    }
    pref = script_get_preference("numclosed");
    if (!isnull(pref) && pref != "") {
        argv["numclosed"] = string('"', pref, '"');
    }
    pref = script_get_preference("numopen");
    if (!isnull(pref) && pref != "") {
        argv["numopen"] = string('"', pref, '"');
    }
    nmap_nse_register(script:"qscan", args:argv);
} else if (phase == 2) {
    res = nmap_nse_get_results(script:"qscan");
    foreach portspec (keys(res)) {
        output_banner = 'Result found by Nmap Security Scanner (qscan.nse) http://nmap.org:\n\n';
        if (portspec == "0") {
            log_message(data:output_banner + res[portspec], port:0);
        } else {
            v = split(portspec, sep:"/", keep:0);
            proto = v[0];
            port = v[1];
            log_message(data:output_banner + res[portspec], port:port, protocol:proto);
        }
    }
}
