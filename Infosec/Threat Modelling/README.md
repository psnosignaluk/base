# Threat Modelling

## Techniques

### STRIDE

| Threat Category        | Violates          | Examples                                                                                       |
|------------------------|-------------------|------------------------------------------------------------------------------------------------|
| Spoofing               | Authenticity      | Attacker steals the authentication token of a legitimate user and uses it to impersonate them. |
| Tampering              | Integity          | An attacker abuses an application to perform unintended updates to a database.                 |
| Repudiation            | Non-repudiability | An attacker gains access to and modifies logs to cover their actions.                          |
| Information Disclosure | Confidentiality   | An attacker extracts data from a database containing private information.                      |
| Denial of Service      | Availability      | An attacker prevents legitimate users from accessing an application.                           |
| Elevation of Privileges | Authorization | An attacker tampers with a JWT to change the role of a legitimate user |

