# ChildReport - Child Record v0.1.0

## Resource Profile: ChildReport 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childrecord|current/StructureDefinition/ChildReport)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ChildReport.csv), [Excel](../StructureDefinition-ChildReport.xlsx), [Schematron](../StructureDefinition-ChildReport.sch) 

### Notes:



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ChildReport",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/ChildReport",
  "version" : "0.1.0",
  "name" : "ChildReport",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.identifier",
        "path" : "Bundle.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "fixedCode" : "document"
      },
      {
        "id" : "Bundle.timestamp",
        "path" : "Bundle.timestamp",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            },
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "short" : "Entry resource in the patient summary bundle",
        "definition" : "An entry resource included in the patient summary document bundle resource.",
        "comment" : "Must contain the Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.",
        "min" : 3
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.search",
        "path" : "Bundle.entry.search",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.request",
        "path" : "Bundle.entry.request",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:composition",
        "path" : "Bundle.entry",
        "sliceName" : "composition",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:composition.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeChildRecordComposition"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:patient",
        "path" : "Bundle.entry",
        "sliceName" : "patient",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:patient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:relatedPerson",
        "path" : "Bundle.entry",
        "sliceName" : "relatedPerson",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:relatedPerson.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "RelatedPerson"
          }
        ]
      },
      {
        "id" : "Bundle.entry:pregnancyDuration",
        "path" : "Bundle.entry",
        "sliceName" : "pregnancyDuration",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:pregnancyCMVInfection",
        "path" : "Bundle.entry",
        "sliceName" : "pregnancyCMVInfection",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:pregnancyBacterialMeningitis",
        "path" : "Bundle.entry",
        "sliceName" : "pregnancyBacterialMeningitis",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:neonatalHearingScreening",
        "path" : "Bundle.entry",
        "sliceName" : "neonatalHearingScreening",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:neonatalHearingScreeningLeft",
        "path" : "Bundle.entry",
        "sliceName" : "neonatalHearingScreeningLeft",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeNeonatalHearingScreeningLeft"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:neonatalHearingScreeningRight",
        "path" : "Bundle.entry",
        "sliceName" : "neonatalHearingScreeningRight",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:neonatalHearingScreeningRight.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeNeonatalHearingScreeningRight"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:severeHeadTrauma",
        "path" : "Bundle.entry",
        "sliceName" : "severeHeadTrauma",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:eyeScreening",
        "path" : "Bundle.entry",
        "sliceName" : "eyeScreening",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:inspectionPupilAbnormal",
        "path" : "Bundle.entry",
        "sliceName" : "inspectionPupilAbnormal",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:eyeMovementAndPosition",
        "path" : "Bundle.entry",
        "sliceName" : "eyeMovementAndPosition",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:eyeRemarks",
        "path" : "Bundle.entry",
        "sliceName" : "eyeRemarks",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:inTreatmentWithOphthalmologist",
        "path" : "Bundle.entry",
        "sliceName" : "inTreatmentWithOphthalmologist",
        "min" : 0,
        "max" : "*"
      }
    ]
  }
}

```
