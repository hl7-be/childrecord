# Eye Screening Results - Child Record v0.1.0

## CodeSystem: Eye Screening Results (Experimental) 

 
Codes for recording the results of eye screening tests. These codes are used to indicate whether a screening test was passed, failed, not possible to perform, or not testable in children. 

This Code system is referenced in the definition of the following value sets:

* [VSEyeScreeningOutcome](ValueSet-eye-screening-results.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSEyeScreeningResults",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSEyeScreeningResults",
  "version" : "0.1.0",
  "name" : "CSEyeScreeningResults",
  "title" : "Eye Screening Results",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-11-26T09:32:29+00:00",
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
  "description" : "Codes for recording the results of eye screening tests. These codes are used to indicate whether a screening test was passed, failed, not possible to perform, or not testable in children.",
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
      "code" : "refer"
    },
    {
      "code" : "pass"
    },
    {
      "code" : "measurement-not-possible"
    },
    {
      "code" : "child-not-testable"
    }
  ]
}

```
