###############################################################################
# OpenVAS Vulnerability Test
# $Id: gb_gogs_detect.nasl 10901 2018-08-10 14:09:57Z cfischer $
#
# Gogs (Go Git Service) Detection
#
# Authors:
# Christian Kuersteiner <christian.kuersteiner@greenbone.net>
#
# Copyright:
# Copyright (c) 2015 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version
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
  script_oid("1.3.6.1.4.1.25623.1.0.105951");
  script_version("$Revision: 10901 $");
  script_tag(name:"last_modification", value:"$Date: 2018-08-10 16:09:57 +0200 (Fri, 10 Aug 2018) $");
  script_tag(name:"creation_date", value:"2015-02-06 14:11:41 +0700 (Fri, 06 Feb 2015)");
  script_tag(name:"cvss_base", value:"0.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:N");
  script_name("Gogs (Go Git Service) Detection");
  script_category(ACT_GATHER_INFO);
  script_copyright("This script is Copyright (C) 2015 Greenbone Networks GmbH");
  script_family("Product detection");
  script_dependencies("find_service.nasl", "http_version.nasl");
  script_require_ports("Services/www", 3000);
  script_exclude_keys("Settings/disable_cgi_scanning");

  script_tag(name:"summary", value:"The script sends a connection request to the server and
  attempts to detect Gogs (Go Git Service) and extract the version number from the reply.");

  script_tag(name:"qod_type", value:"remote_banner");

  exit(0);
}


include("http_func.inc");
include("http_keepalive.inc");
include("cpe.inc");
include("host_details.inc");

port = get_http_port( default:3000 );

foreach dir( make_list_unique( "/", "/gogs", cgi_dirs( port:port ) ) ) {

  install = dir;
  if( dir == "/" ) dir = "";

  url = dir + "/user/login";
  req = http_get( item:url, port:port );
  res = http_keepalive_send_recv( port:port, data:req );

  if( res !~ 'HTTP/1.. 200' ) continue;

  if( "Gogs - Go Git Service" >< res ) {

    version = "unknown";

    ver = eregmatch( string:res, pattern:"GoGits.*Version: ([0-9.]+)" );
    if ( ! isnull( ver[1] ) ) {
      version = chomp( ver[1] );
    } else {
      ver = eregmatch( string:res, pattern:"Gogs Version: ([0-9.]+)" );
      if( ! isnull( ver[1] ) ) {
        version = chomp( ver[1] );
      }
    }

    set_kb_item( name:"www/" + port + "/gogs", value:version );
    set_kb_item( name:"gogs/installed", value:TRUE );

    cpe = build_cpe( value:version, exp:"^([0-9.]+)", base: "cpe:/a:gogits:gogs:" );
    if( isnull( cpe ) )
      cpe = 'cpe:/a:gogits:gogs';

    register_product( cpe:cpe, location:install, port:port );

    log_message( data:build_detection_report( app:"Gogs (Go Git Service)",
                                              version:version,
                                              install:install,
                                              cpe:cpe,
                                              concluded:ver[0] ),
                                              port:port );

    goVersion = "unknown";

    goVer = eregmatch( string:res, pattern:'version">Go([0-9.]+)' );
    if( goVer[1] ) goVersion = goVer[1];

    cpe = build_cpe( value:goVersion, exp:"^([0-9.]+)", base: "cpe:/a:golang:go:" );
    if( isnull( cpe ) )
      cpe = 'cpe:/a:golang:go';

    register_product( cpe:cpe, location:install, port:port );

    log_message( data:build_detection_report( app:"Go Programming Language",
                                              version:goVersion,
                                              install:install,
                                              cpe:cpe,
                                              concluded:goVer[0] ),
                                              port:port );
  }
}

exit( 0 );
