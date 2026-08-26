# Eye Movement and Position - Child Report v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eye Movement and Position**

## ValueSet: Eye Movement and Position 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-movement-and-position | *Version*:1.0.0 |
| Active as of 2026-04-10 | *Computable Name*:VSEyeMovementAndPosition |

 
This value set includes codes to represent eye movement and position observations. 

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
  "id" : "vs-eye-movement-and-position",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-movement-and-position",
  "version" : "1.0.0",
  "name" : "VSEyeMovementAndPosition",
  "title" : "Eye Movement and Position",
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
  "description" : "This value set includes codes to represent eye movement and position observations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-eye-movement-and-position",
      "concept" : [{
        "code" : "intermittent-strabismus",
        "display" : "Intermittent strabismus"
      },
      {
        "code" : "continuous-strabismus",
        "display" : "Continuous strabismus"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "307699005",
        "display" : "Nystagmus present"
      }]
    }]
  }
}

```
