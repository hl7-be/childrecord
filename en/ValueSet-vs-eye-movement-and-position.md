# Eye Movement and Position ValueSet - Child Report v1.0.2

## ValueSet: Eye Movement and Position ValueSet 

 
This value set includes codes to represent eye movement and position observations. 

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
  "id" : "vs-eye-movement-and-position",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-movement-and-position",
  "version" : "1.0.2",
  "name" : "VSEyeMovementAndPosition",
  "title" : "Eye Movement and Position ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-26T12:32:12+00:00",
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
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
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
