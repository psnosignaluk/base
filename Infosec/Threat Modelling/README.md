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

### Threat Model Manifesto

> Threat modeling is analyzing representations of a system to highlight concerns about security and privacy
> characteristics.

[Link](https://www.threatmodelingmanifesto.org/).

When threat modelling:
* What are we working on?
* What can go wrong?
* What are we going to do about it?
* Did we do a good enough job?

#### TMM Values

| Value                                         | Versus |
|-----------------------------------------------|--------|
| A culture of finding and fixing design issues | Conducting checkbox compliance |
| People and collaboration                      | Over processes, methodologies and tools |
| A journey of understanding                    | Over a security or privacy snapshot |
| Doing threat modelling                        | Over talking about threat modelling |
| Continuous refinement | Over a single delivery |

#### TMM Principles

* The best use of threat modeling is to improve the security and privacy of a system through early and frequent analysis.
* Threat modeling must align with an organization’s development practices and follow design changes in iterations that are each scoped to manageable portions of the system.
* The outcomes of threat modeling are meaningful when they are of value to stakeholders.
* Dialog is key to establishing the common understandings that lead to value, while documents record those understandings, and enable measurement.

| Pattern             | Benefit                                                                                  |
|---------------------|------------------------------------------------------------------------------------------|
| Systematic Approach | Achieve thoroughness and reproducibility by applying security and privacy knowledge in a structured manner. |
| Informed Creativity                    | Allow for creativity by including both craft and science.                                |
| Varied Viewpoints | Assemble a diverse team with appropriate subject matter experts and cross-functional collaboration. |
| Useful Toolkit | Support your approach with tools that allow you to increase your productivity, enhance your workflows, enable repeatability and provide measurability. |
| Theory into Practice | Use successfully field-tested techniques aligned to local needs, and that are informed by the latest thinking on the benefits and limits of those techniques. |


