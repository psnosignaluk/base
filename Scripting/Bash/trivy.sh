#!/usr/bin/env bash

##############################################################################
# Trivy                                                                      #
##############################################################################

# Scan file systems for vulnerabilities, ignoring unfixed and skipping secret scanning
trivy --scanners vuln fs --ignore-unfixed .

# Scan images for OS vulnerabilties
trivy --scanners vuln image --vuln-type os --ignore-unfixed fluent/fluent-bit:3.0.6
