# Eye Movement and Position - Child Report v1.0.0

## CodeSystem: Eye Movement and Position 

 
Custom codes for eye movement and position conditions not available in SNOMED CT. 

This Code system is referenced in the definition of the following value sets:

* [VSEyeMovementAndPosition](ValueSet-vs-eye-movement-and-position.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-04-28T12:40:36+00:00",
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
