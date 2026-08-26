# BeChildReport - Child Report v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeChildReport**

## Resource Profile: BeChildReport 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/be-childreport | *Version*:1.0.0 |
| Active as of 2026-04-10 | *Computable Name*:BeChildReport |

 
Profile for the child report document - a Bundle of type ‘document’ that contains a Composition resource and other related resources with information about the child and the pregnancy. This profile is used for the exchange of information about the child, to be first implemented in Flanders. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childreport|current/StructureDefinition/be-childreport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-childreport.csv), [Excel](StructureDefinition-be-childreport.xlsx), [Schematron](StructureDefinition-be-childreport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-childreport",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/be-childreport",
  "version" : "1.0.0",
  "name" : "BeChildReport",
  "status" : "active",
  "date" : "2026-04-10T11:30:30+00:00",
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
  "description" : "Profile for the child report document - a Bundle of type 'document' that contains a Composition resource and other related resources with information about the child and the pregnancy. This profile is used for the exchange of information about the child, to be first implemented in Flanders.",
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
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/patient-dossier/StructureDefinition/be-document",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Persistent identifier for the Bundle",
      "min" : 1
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "document"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "The time when the document was created",
      "min" : 1
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "resource"
        }],
        "ordered" : true,
        "rules" : "open"
      },
      "short" : "Entry resource in the child report bundle",
      "definition" : "An entry resource included in the child report document bundle resource.",
      "comment" : "Must contain the Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.",
      "min" : 3,
      "orderMeaning" : "The first entry in this bundle is always a Composition."
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition",
      "short" : "The Child Report Composition",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition.resource",
      "path" : "Bundle.entry.resource",
      "short" : "The Composition for the child report",
      "type" : [{
        "code" : "Composition",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/BeChildReportComposition"]
      }]
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "The child (patient)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "short" : "The child",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:relatedPerson",
      "path" : "Bundle.entry",
      "sliceName" : "relatedPerson",
      "short" : "The mother or guardian",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:relatedPerson.resource",
      "path" : "Bundle.entry.resource",
      "short" : "The mother or guardian",
      "type" : [{
        "code" : "RelatedPerson"
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyDuration",
      "path" : "Bundle.entry",
      "sliceName" : "pregnancyDuration",
      "short" : "Duration of the pregnancy in weeks",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for pregnancy duration in weeks",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Length of gestation at birth",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "412726003",
          "display" : "Length of gestation at birth"
        }]
      }
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.focus",
      "path" : "Bundle.entry.resource.focus",
      "short" : "The mother (RelatedPerson)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "Duration in weeks",
      "type" : [{
        "code" : "Quantity"
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
      "id" : "Bundle.entry:pregnancyDuration.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:pregnancyDuration.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection",
      "path" : "Bundle.entry",
      "sliceName" : "pregnancyCMVInfection",
      "short" : "Whether CMV infection occurred during pregnancy",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for CMV infection during pregnancy (focus: the mother)",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "CMV infection",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "28944009",
          "display" : "CMV - Cytomegalovirus infection"
        }]
      }
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.focus",
      "path" : "Bundle.entry.resource.focus",
      "short" : "The mother (RelatedPerson)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "Whether CMV infection was present",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:pregnancyCMVInfection.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis",
      "path" : "Bundle.entry",
      "sliceName" : "pregnancyBacterialMeningitis",
      "short" : "Whether bacterial meningitis occurred",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for bacterial meningitis",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Bacterial meningitis",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "95883001",
          "display" : "Bacterial meningitis"
        }]
      }
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.focus",
      "path" : "Bundle.entry.resource.focus",
      "short" : "The mother (RelatedPerson)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "Whether bacterial meningitis was present",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:pregnancyBacterialMeningitis.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening",
      "path" : "Bundle.entry",
      "sliceName" : "neonatalHearingScreening",
      "short" : "Overall neonatal hearing screening result",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for overall neonatal hearing screening",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Hearing screening test code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
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
      "short" : "normal result | abnormal result | invalid result | test not done",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-neonatal-hearing-screening-results"
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreening.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft",
      "path" : "Bundle.entry",
      "sliceName" : "neonatalHearingScreeningLeft",
      "short" : "Hearing screening result for the left ear",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for hearing screening - left ear",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Hearing screening test code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
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
      "short" : "normal result | abnormal result | invalid result | test not done",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-neonatal-hearing-screening-results"
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "short" : "Left ear",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "117590005",
          "display" : "Ear structure"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.bodySite.extension",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.bodySite.extension:laterality",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "sliceName" : "laterality",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.bodySite.extension:laterality.value[x]",
      "path" : "Bundle.entry.resource.bodySite.extension.value[x]",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "7771000",
        "display" : "Left"
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningLeft.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight",
      "path" : "Bundle.entry",
      "sliceName" : "neonatalHearingScreeningRight",
      "short" : "Hearing screening result for the right ear",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for hearing screening - right ear",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Hearing screening test code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
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
      "short" : "normal result | abnormal result | invalid result | test not done",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-neonatal-hearing-screening-results"
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "short" : "Right ear",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "117590005",
          "display" : "Ear structure"
        }]
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.bodySite.extension",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.bodySite.extension:laterality",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "sliceName" : "laterality",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.bodySite.extension:laterality.value[x]",
      "path" : "Bundle.entry.resource.bodySite.extension.value[x]",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "24028007",
        "display" : "Right"
      }
    },
    {
      "id" : "Bundle.entry:neonatalHearingScreeningRight.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma",
      "path" : "Bundle.entry",
      "sliceName" : "severeHeadTrauma",
      "short" : "Whether severe head trauma occurred during delivery",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for severe head trauma during delivery",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Intracranial injury",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "127296001",
          "display" : "Intracranial injury"
        }]
      }
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "Whether severe head trauma was present",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:severeHeadTrauma.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:eyeScreening",
      "path" : "Bundle.entry",
      "sliceName" : "eyeScreening",
      "short" : "Eye screening result",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for eye screening result",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Eye/vision screening",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363926002",
          "display" : "Eye/vision observable"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "normal result | abnormal result | invalid result | test not done",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-screening-results"
      }
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:eyeScreening.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal",
      "path" : "Bundle.entry",
      "sliceName" : "inspectionPupilAbnormal",
      "short" : "Whether pupil inspection was abnormal",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for abnormal pupil inspection",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Abnormal pupil finding",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "274093008",
          "display" : "Abnormal pupil"
        }]
      }
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "Whether pupil abnormality was found",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:inspectionPupilAbnormal.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft",
      "path" : "Bundle.entry",
      "sliceName" : "eyeMovementAndPositionLeft",
      "short" : "Eye movement and position finding - left eye",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for eye movement and position - left eye",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Ocular motility",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "31763002",
          "display" : "Ocular motility observable"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "intermittent strabismus | continuous strabismus | nystagmus present",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-movement-and-position"
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "short" : "Left eye",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "81745001",
          "display" : "Structure of eye proper"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.bodySite.extension",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.bodySite.extension:laterality",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "sliceName" : "laterality",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.bodySite.extension:laterality.value[x]",
      "path" : "Bundle.entry.resource.bodySite.extension.value[x]",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "7771000",
        "display" : "Left"
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionLeft.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight",
      "path" : "Bundle.entry",
      "sliceName" : "eyeMovementAndPositionRight",
      "short" : "Eye movement and position finding - right eye",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for eye movement and position - right eye",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Ocular motility",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "31763002",
          "display" : "Ocular motility observable"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "intermittent strabismus | continuous strabismus | nystagmus present",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-movement-and-position"
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "short" : "Right eye",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "81745001",
          "display" : "Structure of eye proper"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.bodySite.extension",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.bodySite.extension:laterality",
      "path" : "Bundle.entry.resource.bodySite.extension",
      "sliceName" : "laterality",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.bodySite.extension:laterality.value[x]",
      "path" : "Bundle.entry.resource.bodySite.extension.value[x]",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "24028007",
        "display" : "Right"
      }
    },
    {
      "id" : "Bundle.entry:eyeMovementAndPositionRight.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:eyeRemarks",
      "path" : "Bundle.entry",
      "sliceName" : "eyeRemarks",
      "short" : "Free text remarks about the eyes",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for free text eye remarks",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "Eye remarks",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "eye-remarks-observation"
        }]
      }
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "Free text eye remarks",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:eyeRemarks.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist",
      "path" : "Bundle.entry",
      "sliceName" : "inTreatmentWithOphthalmologist",
      "short" : "Treatment the patient has followed with an ophthalmologist",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Observation for treatment with an ophthalmologist",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource.code",
      "path" : "Bundle.entry.resource.code",
      "short" : "In treatment with ophthalmologist",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "ophthalmologist-treatment-observation"
        }]
      }
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource.subject",
      "path" : "Bundle.entry.resource.subject",
      "short" : "The child that is the subject of this document",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource.value[x]",
      "path" : "Bundle.entry.resource.value[x]",
      "short" : "prescription of spectacles | application of eye patch | surgical procedure on eye proper | (extensible)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-ophthalmologist-treatments"
      }
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource.bodySite",
      "path" : "Bundle.entry.resource.bodySite",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:inTreatmentWithOphthalmologist.resource.component",
      "path" : "Bundle.entry.resource.component",
      "max" : "0"
    }]
  }
}

```
