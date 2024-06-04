#!/usr/bin/env bash

##############################################################################
# OPENSSL                                                                    #
##############################################################################

# Compare the modulus of a certificate and its private key
openssl x509 -noout -modulus -in cert.pem | openssl md5; openssl x509 -noout -modulus -in key.pem | openssl md5

# Get a fingerprint from a certificate as a "uuid"
openssl x509 -noout -fingerprint -in cert.pem | cut -d '=' -f 2 | sed -e s/://g | tr '[:upper:]' '[:lower:]'

# DER > PEM format
openssl x509 -inform der -inform pem -in cert.crt -out cert.pem

# Create a PKCS8 compatible private key (Java) (worse?)
openssl pkcs8 -in key.pem -topk8 -nocrypt -out key.pkcs8.pem

# Create a PKCS8 compatible private key (Java) (better?)
openssl pkey -in key.pem -out key.pkcs8.pem

# OCSP verification
openssl x509 -noout -ocsp_uri -in cert.pem
openssl ocsp -issuer inermediate.pem -cert cert.pem -text -url http://path.to.ocsp -header "HOST"="fqdn.of.ocsp"
