# Ophthalmologist Treatments - Child Record v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ophthalmologist Treatments**

## ValueSet: Ophthalmologist Treatments (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSOphthalmologistTreatments | *Version*:0.1.0 |
| Draft as of 2025-10-14 | *Computable Name*:VSOphthalmologistTreatments |

 
This value set includes codes for ophthalmologist treatment status. 

 **References** 

* [Child Report Logical Model](StructureDefinition-BeModelChildReport.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSOphthalmologistTreatments`](CodeSystem-CSOphthalmologistTreatments.md)version 📦0.1.0

 

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
  "id" : "VSOphthalmologistTreatments",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSOphthalmologistTreatments",
  "version" : "0.1.0",
  "name" : "VSOphthalmologistTreatments",
  "title" : "Ophthalmologist Treatments",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-14T07:33:42+00:00",
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
  "description" : "This value set includes codes for ophthalmologist treatment status.",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSOphthalmologistTreatments"
      }
    ]
  }
}

```
