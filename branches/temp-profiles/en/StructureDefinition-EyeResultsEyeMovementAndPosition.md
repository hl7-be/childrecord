# Eye movement and position - Child Record v0.1.0

## Resource Profile: Eye movement and position 

 
Observation of eye movement and position. 

**Usages:**

* Refer to this Profile: [Child Record Composition](StructureDefinition-BeChildRecordComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childrecord|current/StructureDefinition/EyeResultsEyeMovementAndPosition)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EyeResultsEyeMovementAndPosition.csv), [Excel](../StructureDefinition-EyeResultsEyeMovementAndPosition.xlsx), [Schematron](../StructureDefinition-EyeResultsEyeMovementAndPosition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EyeResultsEyeMovementAndPosition",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/EyeResultsEyeMovementAndPosition",
  "version" : "0.1.0",
  "name" : "EyeResultsEyeMovementAndPosition",
  "title" : "Eye movement and position",
  "status" : "draft",
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
  "description" : "Observation of eye movement and position.",
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
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeObservation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "eye-movement-and-position"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSEyeMovementAndPosition"
        }
      }
    ]
  }
}

```
