# Ophthalmologist Treatment statuses - Child Record v0.1.0

## CodeSystem: Ophthalmologist Treatment statuses (Experimental) 

 
Ophthalmologist Treatment statuses 

This Code system is referenced in the definition of the following value sets:

* [VSOphthalmologistTreatments](ValueSet-VSOphthalmologistTreatments.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSOphthalmologistTreatments",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSOphthalmologistTreatments",
  "version" : "0.1.0",
  "name" : "CSOphthalmologistTreatments",
  "title" : "Ophthalmologist Treatment statuses",
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
  "description" : "Ophthalmologist Treatment statuses",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "glasses"
    },
    {
      "code" : "occlusion"
    },
    {
      "code" : "operation"
    },
    {
      "code" : "other-treatment"
    }
  ]
}

```
