# Eye Screening Results - Child Report v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eye Screening Results**

## ValueSet: Eye Screening Results (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-screening-results | *Version*:0.1.0 |
| Draft as of 2026-03-19 | *Computable Name*:VSEyeScreeningOutcome |

 
A value set that includes codes for eye screening results. 

 **References** 

* [Child Report Logical Model](StructureDefinition-BeModelChildReport.md)
* [Child Report Logical Model](StructureDefinition-BeModelChildReport.md)
* [BeVlChildReport](StructureDefinition-BeVlChildReport.md)
* [BeVlChildReport](StructureDefinition-BeVlChildReport.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-eye-screening-results",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-screening-results",
  "version" : "0.1.0",
  "name" : "VSEyeScreeningOutcome",
  "title" : "Eye Screening Results",
  "status" : "draft",
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
  "description" : "A value set that includes codes for eye screening results.",
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
