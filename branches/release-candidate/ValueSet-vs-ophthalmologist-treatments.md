# Ophthalmologist Treatments - Child Report v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmologist Treatments**

## ValueSet: Ophthalmologist Treatments 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-ophthalmologist-treatments | *Version*:1.0.0 |
| Active as of 2026-04-10 | *Computable Name*:VSOphthalmologistTreatments |

 
This value set includes codes for ophthalmologist treatment status. 

 **References** 

* [Child Report model](StructureDefinition-BeModelChildReport.md)
* [BeChildReport](StructureDefinition-be-childreport.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "vs-ophthalmologist-treatments",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-ophthalmologist-treatments",
  "version" : "1.0.0",
  "name" : "VSOphthalmologistTreatments",
  "title" : "Ophthalmologist Treatments",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-10T08:36:54+00:00",
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
  "description" : "This value set includes codes for ophthalmologist treatment status.",
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
        "code" : "183131009",
        "display" : "Prescription of spectacles"
      },
      {
        "code" : "448748005",
        "display" : "Application of eye patch"
      },
      {
        "code" : "373353005",
        "display" : "Surgical procedure on eye proper"
      }]
    }]
  }
}

```
