# ChildReport2 - Child Record v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ChildReport2**

## Resource Profile: ChildReport2 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/ChildReport2 | *Version*:0.1.0 |
| Draft as of 2026-03-18 | *Computable Name*:ChildReport2 |

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childrecord|current/StructureDefinition/ChildReport2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ChildReport2.csv), [Excel](StructureDefinition-ChildReport2.xlsx), [Schematron](StructureDefinition-ChildReport2.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ChildReport2",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/ChildReport2",
  "version" : "0.1.0",
  "name" : "ChildReport2",
  "status" : "draft",
  "date" : "2026-03-18T14:24:50+00:00",
  "publisher" : "HL7 Belgium",
  "contact" : [{
    "name" : "HL7 Belgium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hl7belgium.org"
    },
    {
      "system" : "email",
      "value" : "hl7belgium@hl7belgium.org"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        },
        {
          "type" : "profile",
          "path" : "resource"
        }],
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
      "type" : [{
        "code" : "Composition",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeChildRecordComposition"]
      }]
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
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
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
      "type" : [{
        "code" : "RelatedPerson"
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyDuration",
      "path" : "Bundle.entry",
      "sliceName" : "pregnancyDuration",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "412726003"
        }]
      }
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.value[x].unit",
      "path" : "Bundle.entry.resource.value[x].unit",
      "patternString" : "weeks"
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.value[x].code",
      "path" : "Bundle.entry.resource.value[x].code",
      "patternCode" : "wk"
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection",
      "path" : "Bundle.entry",
      "sliceName" : "pregnancyCMVInfection",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "cmv-infection-during-pregnancy"
        }]
      }
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis",
      "path" : "Bundle.entry",
      "sliceName" : "pregnancyBacterialMeningitis",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "bacterial-meningitis"
        }]
      }
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening",
      "path" : "Bundle.entry",
      "sliceName" : "neonatalHearingScreening",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "neonatal-hearing-screening"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource.effective[x]",
      "path" : "Bundle.entry.resource.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSNeonatalHearingScreeningResults"
      }
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
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "neonatal-hearing-screening-left"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.effective[x]",
      "path" : "Bundle.entry.resource.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSNeonatalHearingScreeningResults"
      }
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
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "neonatal-hearing-screening-right"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.effective[x]",
      "path" : "Bundle.entry.resource.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSNeonatalHearingScreeningResults"
      }
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma",
      "path" : "Bundle.entry",
      "sliceName" : "severeHeadTrauma",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "severe-head-trauma-during-delivery"
        }]
      }
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:eyeScreening",
      "path" : "Bundle.entry",
      "sliceName" : "eyeScreening",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "274412005x"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/eye-screening-results"
      }
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal",
      "path" : "Bundle.entry",
      "sliceName" : "inspectionPupilAbnormal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "inspection-pupil-normal"
        }]
      }
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPosition",
      "path" : "Bundle.entry",
      "sliceName" : "eyeMovementAndPosition",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPosition.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPosition.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "eye-movement-and-position"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPosition.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSEyeMovementAndPosition"
      }
    },
    {
      "id" : "Bundle.entry:eyeRemarks",
      "path" : "Bundle.entry",
      "sliceName" : "eyeRemarks",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "eye-remarks"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist",
      "path" : "Bundle.entry",
      "sliceName" : "inTreatmentWithOphthalmologist",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource.code",
      "path" : "Bundle.entry.resource.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "in-treatment-with-ophthalmologist"
        }]
      }
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/ValueSet/VSOphthalmologistTreatments"
      }
    }]
  }
}

```
