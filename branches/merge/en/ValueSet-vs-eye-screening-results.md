# Eye Screening Results - Child Report v1.0.2

## ValueSet: Eye Screening Results 

 
A value set that includes codes for eye screening results. 

 **References** 

* [Child Report model](StructureDefinition-BeModelChildReport.md)
* [BeChildReport](StructureDefinition-be-childreport.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-eye-screening-results",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-screening-results",
  "version" : "1.0.2",
  "name" : "VSEyeScreeningOutcome",
  "title" : "Eye Screening Results",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-26T12:27:03+00:00",
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
  "description" : "A value set that includes codes for eye screening results.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
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
