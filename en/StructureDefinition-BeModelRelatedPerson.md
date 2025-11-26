# Related Person - Child Record v0.1.0

## Logical Model: Related Person 

 
Related Person model. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childrecord|current/StructureDefinition/BeModelRelatedPerson)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelRelatedPerson.csv), [Excel](../StructureDefinition-BeModelRelatedPerson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelRelatedPerson",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeModelRelatedPerson",
  "version" : "0.1.0",
  "name" : "BeModelRelatedPerson",
  "title" : "Related Person",
  "status" : "draft",
  "date" : "2025-11-26T09:50:03+00:00",
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
  "description" : "Related Person model.",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeModelRelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelRelatedPerson",
        "path" : "BeModelRelatedPerson",
        "short" : "Related Person",
        "definition" : "Related Person model."
      },
      {
        "id" : "BeModelRelatedPerson.subject",
        "path" : "BeModelRelatedPerson.subject",
        "short" : "Subject",
        "definition" : "Patient/subject information",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/BeModelPatient"
          }
        ]
      },
      {
        "id" : "BeModelRelatedPerson.relatedperson",
        "path" : "BeModelRelatedPerson.relatedperson",
        "short" : "Related person",
        "definition" : "A person related to the patient/subject, such as a family member or guardian.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/BeModelPatient"
          }
        ]
      },
      {
        "id" : "BeModelRelatedPerson.relationship",
        "path" : "BeModelRelatedPerson.relationship",
        "short" : "Relationship to subject",
        "definition" : "The relationship of the related person to the patient/subject. This can include roles such as mother, father, guardian, etc.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
