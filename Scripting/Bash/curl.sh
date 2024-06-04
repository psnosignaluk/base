#!/usr/bin/env bash

##############################################################################
# cURL                                                                       #
##############################################################################

# Repeatedly probe an endpoint for its status code
while true; do echo -n "$(date): HTTP " && curl -s -o /dev/null -w "%{http_code}" https://endpoint.tld && echo && sleep 300; done
