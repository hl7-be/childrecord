# Ophthalmologist Treatments - Child Record v0.1.0

## ValueSet: Ophthalmologist Treatments (Experimental) 

 
This value set includes codes for ophthalmologist treatment status. 

 **References** 

* [Child Report Logical Model](StructureDefinition-BeModelChildReport.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://www.ehealth.fgov.be/standards/fhir/childrecord/CodeSystem/CSOphthalmologistTreatments`](CodeSystem-CSOphthalmologistTreatments.md)version 📦0.1.0

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
