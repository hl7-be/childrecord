# Eye Movement and Position - Child Report v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eye Movement and Position**

## CodeSystem: Eye Movement and Position (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-eye-movement-and-position | *Version*:0.1.0 |
| Active as of 2026-03-19 | *Computable Name*:CSEyeMovementAndPosition |

 
Custom codes for eye movement and position conditions not available in SNOMED CT. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSEyeMovementAndPosition](ValueSet-vs-eye-movement-and-position.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-eye-movement-and-position",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-eye-movement-and-position",
  "version" : "0.1.0",
  "name" : "CSEyeMovementAndPosition",
  "title" : "Eye Movement and Position",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-19T20:22:22+00:00",
  "publisher" : "HL7 Belgium",
  "contact" : [{
    "name" : "HL7 Belgium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7belgium.org"
    },
    {
      "system" : "email",
      "value" : "hl7belgium@hl7belgium.org"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@ehealth.fgov.be",
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
