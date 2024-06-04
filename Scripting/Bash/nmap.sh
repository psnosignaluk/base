#!/usr/bin/env bash

##############################################################################
# Nmap                                                                       #
##############################################################################

# Determine supported TLS versions and ciphers
nmap --script ssl-enum-ciphers -p 443 hostname.domain.tld
