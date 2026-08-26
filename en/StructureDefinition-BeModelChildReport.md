# Child Report model - Child Report v1.0.2

## Logical Model: Child Report model 

 
A logical model representing child report data elements. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.childreport|current/StructureDefinition/StructureDefinition-BeModelChildReport.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelChildReport.csv), [Excel](../StructureDefinition-BeModelChildReport.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelChildReport",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/BeModelChildReport",
  "version" : "1.0.2",
  "name" : "BeModelChildReport",
  "title" : "Child Report model",
  "status" : "active",
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
  "description" : "A logical model representing child report data elements.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/BeModelChildReport",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/patient-dossier/StructureDefinition/BeModelDocument",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelChildReport",
      "path" : "BeModelChildReport",
      "short" : "Child Report model",
      "definition" : "A logical model representing child report data elements."
    },
    {
      "id" : "BeModelChildReport.dateTime",
      "path" : "BeModelChildReport.dateTime",
      "comment" : "The date of the child report is the date when the report was created, not the date of the examination or observation. In case of reports migrated from KMEHR, the date is the date of the conversion, not the KMEHR message creation, which is unknown."
    },
    {
      "id" : "BeModelChildReport.subject",
      "path" : "BeModelChildReport.subject",
      "short" : "Child that the report is about",
      "min" : 1
    },
    {
      "id" : "BeModelChildReport.presentedForm",
      "path" : "BeModelChildReport.presentedForm",
      "short" : "Child report PDF file",
      "definition" : "A base64 encoded PDF file with the remaining child report information (biometric data, charts, etc.).",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails",
      "path" : "BeModelChildReport.pregnancyDetails",
      "short" : "Pregnancy details",
      "definition" : "Details about the pregnancy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy",
      "path" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy",
      "short" : "[BeClinicalObservation] The duration of pregnancy in weeks, as an observation.",
      "definition" : "[BeClinicalObservation] The duration of pregnancy in weeks, as an observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy.subject",
      "path" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy.subject",
      "short" : "Child",
      "definition" : "subject",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy.code",
      "path" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy.code",
      "short" : "Length of gestation at birth",
      "definition" : "Length of gestation at birth",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "412726003",
          "display" : "Length of gestation at birth"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy.valueInteger",
      "path" : "BeModelChildReport.pregnancyDetails.durationOfPregnancy.valueInteger",
      "short" : "The duration of pregnancy in weeks",
      "definition" : "The duration of pregnancy in weeks",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection",
      "path" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection",
      "short" : "[BeClinicalObservation] Pregnancy CMV infection",
      "definition" : "Indicates whether CMV infection occurred during pregnancy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection.subject",
      "path" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection.subject",
      "short" : "Child",
      "definition" : "subject",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection.code",
      "path" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection.code",
      "short" : "CMV infection during pregnancy",
      "definition" : "CMV infection during pregnancy",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "28944009",
          "display" : "Cytomegalovirus infection"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection.valueBoolean",
      "path" : "BeModelChildReport.pregnancyDetails.pregnancyCMVInfection.valueBoolean",
      "short" : "Indicates whether CMV infection occurred during pregnancy.",
      "definition" : "The value indicates whether the mother had a CMV infection during pregnancy.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "BeModelChildReport.bacterialMeningitis",
      "path" : "BeModelChildReport.bacterialMeningitis",
      "short" : "[BeClinicalObservation] Bacterial meningitis",
      "definition" : "Indicates whether bacterial meningitis occurred during pregnancy.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.bacterialMeningitis.code",
      "path" : "BeModelChildReport.bacterialMeningitis.code",
      "short" : "Code",
      "definition" : "Code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "95883001",
          "display" : "Bacterial meningitis"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.bacterialMeningitis.subject",
      "path" : "BeModelChildReport.bacterialMeningitis.subject",
      "short" : "Child",
      "definition" : "subject",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelChildReport.bacterialMeningitis.valueBoolean",
      "path" : "BeModelChildReport.bacterialMeningitis.valueBoolean",
      "short" : "Indicates whether bacterial meningitis occurred during pregnancy.",
      "definition" : "The value indicates whether the mother had a bacterial meningitis during pregnancy.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningLeft",
      "path" : "BeModelChildReport.neonatalHearingScreeningLeft",
      "short" : "[BeClinicalObservation] Left ear result",
      "definition" : "Result of neonatal hearing screening for the left ear.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningLeft.date",
      "path" : "BeModelChildReport.neonatalHearingScreeningLeft.date",
      "short" : "Date of neonatal hearing screening",
      "definition" : "The date of neonatal hearing screening.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningLeft.subject",
      "path" : "BeModelChildReport.neonatalHearingScreeningLeft.subject",
      "short" : "Child that the report is about",
      "definition" : "The child that the report is about.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
      }]
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningLeft.code",
      "path" : "BeModelChildReport.neonatalHearingScreeningLeft.code",
      "short" : "Result of neonatal hearing screening - left",
      "definition" : "Result of neonatal hearing screening - left",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningLeft.valueCode",
      "path" : "BeModelChildReport.neonatalHearingScreeningLeft.valueCode",
      "short" : "Result of neonatal hearing screening (left ear)",
      "definition" : "Neonatal hearing screening result for the left ear.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-neonatal-hearing-screening-results"
      }
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningRight",
      "path" : "BeModelChildReport.neonatalHearingScreeningRight",
      "short" : "[BeClinicalObservation] Right ear result",
      "definition" : "Result of neonatal hearing screening for the right ear.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningRight.date",
      "path" : "BeModelChildReport.neonatalHearingScreeningRight.date",
      "short" : "Date of neonatal hearing screening",
      "definition" : "The date of neonatal hearing screening.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningRight.subject",
      "path" : "BeModelChildReport.neonatalHearingScreeningRight.subject",
      "short" : "Child that the report is about",
      "definition" : "The child that the report is about.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
      }]
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningRight.code",
      "path" : "BeModelChildReport.neonatalHearingScreeningRight.code",
      "short" : "Result of neonatal hearing screening - right",
      "definition" : "Result of neonatal hearing screening - right",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.neonatalHearingScreeningRight.valueCode",
      "path" : "BeModelChildReport.neonatalHearingScreeningRight.valueCode",
      "short" : "Result of neonatal hearing screening (right ear)",
      "definition" : "Neonatal hearing screening result for the right ear.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-neonatal-hearing-screening-results"
      }
    },
    {
      "id" : "BeModelChildReport.severeHeadTrauma",
      "path" : "BeModelChildReport.severeHeadTrauma",
      "short" : "[BeProblem] Severe head trauma",
      "definition" : "Indicates whether severe head trauma was identified.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.severeHeadTrauma.subject",
      "path" : "BeModelChildReport.severeHeadTrauma.subject",
      "short" : "Child that the report is about",
      "definition" : "The child that the report is about.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
      }]
    },
    {
      "id" : "BeModelChildReport.severeHeadTrauma.date",
      "path" : "BeModelChildReport.severeHeadTrauma.date",
      "short" : "Date of reporting the trauma.",
      "definition" : "Date of reporting the trauma.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.severeHeadTrauma.code",
      "path" : "BeModelChildReport.severeHeadTrauma.code",
      "short" : "Code",
      "definition" : "Code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "127296001",
          "display" : "Intracranial injury"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.severeHeadTrauma.valueBoolean",
      "path" : "BeModelChildReport.severeHeadTrauma.valueBoolean",
      "short" : "Indicates whether severe head trauma was identified.",
      "definition" : "The value indicates whether severe head trauma was identified in the child.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeScreening",
      "path" : "BeModelChildReport.eyeScreening",
      "short" : "[BeClinicalObservation] Eye screening",
      "definition" : "Details about the eye screening.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeScreening.subject",
      "path" : "BeModelChildReport.eyeScreening.subject",
      "short" : "Child that the report is about",
      "definition" : "The child that the report is about.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
      }]
    },
    {
      "id" : "BeModelChildReport.eyeScreening.date",
      "path" : "BeModelChildReport.eyeScreening.date",
      "short" : "Date of eye screening",
      "definition" : "The date of eye screening.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeScreening.code",
      "path" : "BeModelChildReport.eyeScreening.code",
      "short" : "Code",
      "definition" : "Code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363926002",
          "display" : "Eye/vision observable"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.eyeScreening.valueCodeableConcept",
      "path" : "BeModelChildReport.eyeScreening.valueCodeableConcept",
      "short" : "Result of eye screening",
      "definition" : "Result of eye screening.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-screening-results"
      }
    },
    {
      "id" : "BeModelChildReport.eyeResults",
      "path" : "BeModelChildReport.eyeResults",
      "short" : "Eye",
      "definition" : "Details about the eyes.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal",
      "path" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal",
      "short" : "[BeClinicalObservation] Inspection pupil abnormal",
      "definition" : "Details about the inspection of the pupil.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.subject",
      "path" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.subject",
      "short" : "Child that the report is about",
      "definition" : "The child that the report is about.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.date",
      "path" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.date",
      "short" : "Date of abnormal pupil inspection finding",
      "definition" : "Date of abnormal pupil inspection finding.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.code",
      "path" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.code",
      "short" : "Inspection pupil abnormal",
      "definition" : "Inspection pupil abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "274093008",
          "display" : "Abnormal pupil"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.valueBoolean",
      "path" : "BeModelChildReport.eyeResults.inspectionPupilAbnormal.valueBoolean",
      "short" : "Inspection pupil abnormal",
      "definition" : "Inspection pupil abnormal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeMovementAndPosition",
      "path" : "BeModelChildReport.eyeResults.eyeMovementAndPosition",
      "short" : "[BeClinicalObservation] Findings about the eye movement and position",
      "definition" : "[BeClinicalObservation] Findings about the eye movement and position",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.subject",
      "path" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.subject",
      "short" : "Child that the report is about",
      "definition" : "The child that the report is about.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.date",
      "path" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.date",
      "short" : "Date of eye movement and position results",
      "definition" : "The date of eye movement and position results.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.code",
      "path" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.code",
      "short" : "Code",
      "definition" : "Code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "31763002",
          "display" : "Ocular motility observable"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.valueCode",
      "path" : "BeModelChildReport.eyeResults.eyeMovementAndPosition.valueCode",
      "short" : "Result of testing eye movement and position",
      "definition" : "Result of testing eye movement and position.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-movement-and-position"
      }
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeRemarks",
      "path" : "BeModelChildReport.eyeResults.eyeRemarks",
      "short" : "[BeClinicalObservation] Eye remarks",
      "definition" : "Free text remarks about the eyes.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeRemarks.subject",
      "path" : "BeModelChildReport.eyeResults.eyeRemarks.subject",
      "short" : "Child that the report is about",
      "definition" : "The child that the report is about.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient|2.2.0"]
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeRemarks.date",
      "path" : "BeModelChildReport.eyeResults.eyeRemarks.date",
      "short" : "Date of eye remarks",
      "definition" : "The date of eye remarks.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeRemarks.code",
      "path" : "BeModelChildReport.eyeResults.eyeRemarks.code",
      "short" : "Eye remark",
      "definition" : "Eye remark",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "eye-remarks-observation",
          "display" : "Eye remarks"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.eyeResults.eyeRemarks.valueString",
      "path" : "BeModelChildReport.eyeResults.eyeRemarks.valueString",
      "short" : "Eye remarks",
      "definition" : "Eye remarks",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelChildReport.inTreatmentWithOphthalmologist",
      "path" : "BeModelChildReport.inTreatmentWithOphthalmologist",
      "short" : "[BeClinicalObservation] In treatment with ophthalmologist",
      "definition" : "Details about treatment with an ophthalmologist.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelChildReport.inTreatmentWithOphthalmologist.date",
      "path" : "BeModelChildReport.inTreatmentWithOphthalmologist.date",
      "short" : "Date of remarks about treatment with ophthalmologist.",
      "definition" : "Date of remarks about treatment with ophthalmologist.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "BeModelChildReport.inTreatmentWithOphthalmologist.code",
      "path" : "BeModelChildReport.inTreatmentWithOphthalmologist.code",
      "short" : "Code",
      "definition" : "Code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "ophthalmologist-treatment-observation",
          "display" : "In treatment with ophthalmologist"
        }]
      }
    },
    {
      "id" : "BeModelChildReport.inTreatmentWithOphthalmologist.valueCode",
      "path" : "BeModelChildReport.inTreatmentWithOphthalmologist.valueCode",
      "short" : "Treatment with ophthalmologist",
      "definition" : "Treatment with ophthalmologist.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-ophthalmologist-treatments"
      }
    }]
  }
}

```
