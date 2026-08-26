# Eye Movement and Position - Child Report v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eye Movement and Position**

## CodeSystem: Eye Movement and Position 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-eye-movement-and-position | *Version*:1.0.0 |
| Active as of 2026-04-10 | *Computable Name*:CSEyeMovementAndPosition |

 
Custom codes for eye movement and position conditions not available in SNOMED CT. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEyeMovementAndPosition](ValueSet-vs-eye-movement-and-position.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-eye-movement-and-position",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-eye-movement-and-position",
  "version" : "1.0.0",
  "name" : "CSEyeMovementAndPosition",
  "title" : "Eye Movement and Position",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-10T11:30:30+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be"
    },
    {
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net"
    }]
  },
  {
    "name" : "Message-Structure",
    "telecom" : [{
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net",
      "use" : "work"
    }]
  }],
  "description" : "Custom codes for eye movement and position conditions not available in SNOMED CT.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "intermittent-strabismus",
    "display" : "Intermittent strabismus"
  },
  {
    "code" : "continuous-strabismus",
    "display" : "Continuous strabismus"
  }]
}

```
