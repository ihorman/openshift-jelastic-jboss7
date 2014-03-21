#!/bin/bash

# Simple deploy and undeploy scenarios for JBoss7

WGET=$(which wget);

function _deploy(){
     [ "x${context}" == "xroot" ] && context="ROOT";
     [ -f "${WEBROOT}/${context}.war" ] && { rm -f "${WEBROOT}/${context}.war"; rm -f "${WEBROOT}/${context}.war.*" ; };
     $WGET --no-check-certificate --content-disposition -O "${WEBROOT}/${context}.war" "$package_url";
}

function _undeploy(){
     [ "x${context}" == "xroot" ] && context="ROOT";
     [ -f "${WEBROOT}/${context}.war" ] &&  { rm -f "${WEBROOT}/${context}.war"; rm -f "${WEBROOT}/${context}.war.*" ; };
}

