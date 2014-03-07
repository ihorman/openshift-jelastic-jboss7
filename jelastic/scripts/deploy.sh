#!/bin/bash

# Simple deploy and undeploy scenarios for Jetty8

WGET=$(which wget);

function _deploy(){
     [ "x${context}" == "xROOT" ] && context="root";
     [ -f "${WEBROOT}/${context}.war" ] &&  rm -f "${WEBROOT}/${context}.war";
     $WGET --no-check-certificate --content-disposition -O "${WEBROOT}/${context}.war" "$package_url";
}

function _undeploy(){
     [ "x${context}" == "xROOT" ] && context="root";
     [ -f "${WEBROOT}/${context}.war" ] && rm -f "${WEBROOT}/${context}.war";
}

