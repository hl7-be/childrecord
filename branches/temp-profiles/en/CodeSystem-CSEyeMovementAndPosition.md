# Eye Movement and Position - Child Record v0.1.0

## CodeSystem: Eye Movement and Position (Experimental) 

 
A code system for various eye movement and position conditions. 

This Code system is referenced in the definition of the following value sets:

* [VSEyeMovementAndPosition](ValueSet-VSEyeMovementAndPosition.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEyeMovementAndPosition",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSEyeMovementAndPosition",
  "version" : "0.1.0",
  "name" : "CSEyeMovementAndPosition",
  "title" : "Eye Movement and Position",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-11-20T07:39:28+00:00",
  "publisher" : "HL7 Belgium",
  "contact" : [
    {
      "name" : "HL7 Belgium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.hl7belgium.org"
        },
        {
          "system" : "email",
          "value" : "hl7belgium@hl7belgium.org"
        }
      ]
    },
    {
      "name" : "Message Structure eHealth",
      "telecom" : [
        {
          "system" : "email",
          "value" : "message-structure@ehealth.fgov.be",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "A code system for various eye movement and position conditions.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "intermittent-strabismus"
    },
    {
      "code" : "continuous-strabismus"
    },
    {
      "code" : "nystagmus"
    }
  ]
}

```
