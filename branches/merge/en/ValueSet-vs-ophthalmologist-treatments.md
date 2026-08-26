# Ophthalmologist Treatments - Child Report v1.0.2

## ValueSet: Ophthalmologist Treatments 

 
This value set includes codes for ophthalmologist treatment status. 

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
  "id" : "vs-ophthalmologist-treatments",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-ophthalmologist-treatments",
  "version" : "1.0.2",
  "name" : "VSOphthalmologistTreatments",
  "title" : "Ophthalmologist Treatments",
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
  "description" : "This value set includes codes for ophthalmologist treatment status.",
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
