# Neonatal Hearing Screening Results - Child Report v1.0.1

## ValueSet: Neonatal Hearing Screening Results 

 
This value set includes codes for neonatal hearing screening results. 

 **References** 

* [Child Report model](StructureDefinition-BeModelChildReport.md)
* [BeChildReport](StructureDefinition-be-childreport.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-neonatal-hearing-screening-results",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-neonatal-hearing-screening-results",
  "version" : "1.0.1",
  "name" : "VSNeonatalHearingScreeningResults",
  "title" : "Neonatal Hearing Screening Results",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-07T14:05:45+00:00",
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
  "description" : "This value set includes codes for neonatal hearing screening results.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "280413001",
        "display" : "Normal result"
      },
      {
        "code" : "280415008",
        "display" : "Abnormal result"
      },
      {
        "code" : "455371000124106",
        "display" : "Invalid result"
      },
      {
        "code" : "373121007",
        "display" : "Test not done"
      }]
    }]
  }
}

```
