# Neonatal Hearing Screening Results - Child Record v0.1.0

## CodeSystem: Neonatal Hearing Screening Results (Experimental) 

 
Codes for the results of neonatal hearing screening tests. 

This Code system is referenced in the definition of the following value sets:

* [VSNeonatalHearingScreeningResults](ValueSet-VSNeonatalHearingScreeningResults.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSNeonatalHearingScreeningResults",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSNeonatalHearingScreeningResults",
  "version" : "0.1.0",
  "name" : "CSNeonatalHearingScreeningResults",
  "title" : "Neonatal Hearing Screening Results",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-11-26T09:38:23+00:00",
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
  "description" : "Codes for the results of neonatal hearing screening tests.",
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
      "code" : "pass"
    },
    {
      "code" : "refer"
    },
    {
      "code" : "aborted-test"
    },
    {
      "code" : "not-performed"
    }
  ]
}

```
