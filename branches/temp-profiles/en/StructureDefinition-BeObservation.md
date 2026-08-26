# BeObservation - Child Record v0.1.0

## Resource Profile: BeObservation 

**Usages:**

* Derived from this Profile: [BeBacterialMeningitis](StructureDefinition-BeBacterialMeningitis.md), [BeEyeScreening](StructureDefinition-BeEyeScreening.md), [Neonatal Hearing Screening](StructureDefinition-BeNeonatalHearingScreening.md), [Neonatal Hearing Screening - Left Ear](StructureDefinition-BeNeonatalHearingScreeningLeft.md)...Show 8 more,[Neonatal Hearing Screening - Right Ear](StructureDefinition-BeNeonatalHearingScreeningRight.md),[BePregnancyCMVInfection](StructureDefinition-BePregnancyCMVInfection.md),[BePregnancyDuration](StructureDefinition-BePregnancyDuration.md),[BeSevereHeadTrauma](StructureDefinition-BeSevereHeadTrauma.md),[Eye movement and position](StructureDefinition-EyeResultsEyeMovementAndPosition.md),[Eye remarks](StructureDefinition-EyeResultsEyeRemarks.md),[Inspection of pupil abnormal](StructureDefinition-EyeResultsInspectionPupilAbnormal.md)and[InTreatmentWithOphthalmologist](StructureDefinition-InTreatmentWithOphthalmologist.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childrecord|current/StructureDefinition/BeObservation)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeObservation.csv), [Excel](../StructureDefinition-BeObservation.xlsx), [Schematron](../StructureDefinition-BeObservation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeObservation",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeObservation",
  "version" : "0.1.0",
  "name" : "BeObservation",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      }
    ]
  }
}

```
