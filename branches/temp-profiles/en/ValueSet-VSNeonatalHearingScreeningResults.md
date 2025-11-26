# Neonatal Hearing Screening Results - Child Record v0.1.0

## ValueSet: Neonatal Hearing Screening Results (Experimental) 

 
This value set includes codes for neonatal hearing screening results. 

 **References** 

* [Child Report Logical Model](StructureDefinition-BeModelChildReport.md)
* [Neonatal Hearing Screening - Left Ear](StructureDefinition-BeNeonatalHearingScreeningLeft.md)
* [Neonatal Hearing Screening - Right Ear](StructureDefinition-BeNeonatalHearingScreeningRight.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSNeonatalHearingScreeningResults`](CodeSystem-CSNeonatalHearingScreeningResults.md)version 📦0.1.0

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "VSNeonatalHearingScreeningResults",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSNeonatalHearingScreeningResults",
  "version" : "0.1.0",
  "name" : "VSNeonatalHearingScreeningResults",
  "title" : "Neonatal Hearing Screening Results",
  "status" : "draft",
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
  "description" : "This value set includes codes for neonatal hearing screening results.",
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
        "system" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSNeonatalHearingScreeningResults"
      }
    ]
  }
}

```
