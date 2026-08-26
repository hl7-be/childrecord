# BeChildReportComposition - Child Report v1.0.1

## Resource Profile: BeChildReportComposition 

 
Composition profile for the Child Report (KindRapport). This resource serves as the document index, organizing the child report into sections such as pregnancy details, neonatal hearing screening, head trauma, eye screening and results, and ophthalmologist treatment. Each section references BeClinicalObservation entries contained in the document Bundle. 

The terminology used in this profile is indicative and will be published in a dedicated terminology package.

**Usages:**

* Use this Profile: [BeChildReport](StructureDefinition-be-childreport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.childreport|current/StructureDefinition/StructureDefinition-BeChildReportComposition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeChildReportComposition.csv), [Excel](../StructureDefinition-BeChildReportComposition.xlsx), [Schematron](../StructureDefinition-BeChildReportComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeChildReportComposition",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/BeChildReportComposition",
  "version" : "1.0.1",
  "name" : "BeChildReportComposition",
  "status" : "active",
  "date" : "2026-07-07T14:05:45+00:00",
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
  "description" : "Composition profile for the Child Report (KindRapport). This resource serves as the document index, organizing the child report into sections such as pregnancy details, neonatal hearing screening, head trauma, eye screening and results, and ophthalmologist treatment. Each section references BeClinicalObservation entries contained in the document Bundle.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "short" : "The child that is the subject of the document",
      "definition" : "The child. May be a literal reference to a BePatient included in the document Bundle, or a logical reference (identifier only) when the Patient resource is not included.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.subject.reference",
      "path" : "Composition.subject.reference",
      "mustSupport" : true
    },
    {
      "id" : "Composition.subject.identifier",
      "path" : "Composition.subject.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Sections composing the IPS",
      "definition" : "The root of the sections that make up the IPS composition.",
      "min" : 2
    },
    {
      "id" : "Composition.section.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.text",
      "path" : "Composition.section.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.section",
      "path" : "Composition.section.section",
      "max" : "0"
    },
    {
      "id" : "Composition.section:pregnancyDetails",
      "path" : "Composition.section",
      "sliceName" : "pregnancyDetails",
      "short" : "Pregnancy details section",
      "definition" : "This section contains details about the pregnancy.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:pregnancyDetails.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "pregnancy-details"
        }]
      }
    },
    {
      "id" : "Composition.section:pregnancyDetails.entry",
      "path" : "Composition.section.entry",
      "short" : "Pregnancy details entry in the pregnancy details section",
      "definition" : "An entry in the pregnancy details section of the child record composition.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Composition.section:pregnancyDetails.emptyReason",
      "path" : "Composition.section.emptyReason",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:neonatalHearingScreening",
      "path" : "Composition.section",
      "sliceName" : "neonatalHearingScreening",
      "short" : "Neonatal hearing screening section",
      "definition" : "This section contains details about the neonatal hearing screening.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:neonatalHearingScreening.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "neonatal-hearing-screening"
        }]
      }
    },
    {
      "id" : "Composition.section:neonatalHearingScreening.entry",
      "path" : "Composition.section.entry",
      "short" : "Neonatal hearing screening entries",
      "definition" : "Entries for neonatal hearing screening including main observation and left/right ear results.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Composition.section:neonatalHearingScreening.emptyReason",
      "path" : "Composition.section.emptyReason",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:severeHeadTrauma",
      "path" : "Composition.section",
      "sliceName" : "severeHeadTrauma",
      "short" : "Severe head trauma section",
      "definition" : "This section contains details about severe head trauma.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:severeHeadTrauma.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "severe-head-trauma"
        }]
      }
    },
    {
      "id" : "Composition.section:severeHeadTrauma.entry",
      "path" : "Composition.section.entry",
      "short" : "Severe head trauma entry in the severe head trauma section",
      "definition" : "An entry in the severe head trauma section of the child record composition.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Composition.section:severeHeadTrauma.emptyReason",
      "path" : "Composition.section.emptyReason",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eyeScreening",
      "path" : "Composition.section",
      "sliceName" : "eyeScreening",
      "short" : "Eye screening section",
      "definition" : "This section contains details about eye screening.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:eyeScreening.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "eye-screening"
        }]
      }
    },
    {
      "id" : "Composition.section:eyeScreening.entry",
      "path" : "Composition.section.entry",
      "short" : "Eye screening entry in the eye screening section",
      "definition" : "An entry in the eye screening section of the child record composition.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Composition.section:eyeScreening.emptyReason",
      "path" : "Composition.section.emptyReason",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:eyeResults",
      "path" : "Composition.section",
      "sliceName" : "eyeResults",
      "short" : "Eye results section",
      "definition" : "This section contains details about eye results.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:eyeResults.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "eye-results"
        }]
      }
    },
    {
      "id" : "Composition.section:eyeResults.entry",
      "path" : "Composition.section.entry",
      "short" : "Eye results entry in the eye results section",
      "definition" : "An entry in the eye results section of the child record composition.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Composition.section:eyeResults.emptyReason",
      "path" : "Composition.section.emptyReason",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:inTreatmentWithOphthalmologist",
      "path" : "Composition.section",
      "sliceName" : "inTreatmentWithOphthalmologist",
      "short" : "In treatment with ophthalmologist section",
      "definition" : "This section contains details about treatment with an ophthalmologist",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:inTreatmentWithOphthalmologist.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "in-treatment-with-ophthalmologist"
        }]
      }
    },
    {
      "id" : "Composition.section:inTreatmentWithOphthalmologist.entry",
      "path" : "Composition.section.entry",
      "short" : "In treatment with ophthalmologist",
      "definition" : "Entry for treatment with ophthalmologist.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      }]
    },
    {
      "id" : "Composition.section:inTreatmentWithOphthalmologist.emptyReason",
      "path" : "Composition.section.emptyReason",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:presentedForm",
      "path" : "Composition.section",
      "sliceName" : "presentedForm",
      "short" : "Presented form section",
      "definition" : "This section references the PDF rendition (presented form) of the child report.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:presentedForm.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "presented-form"
        }]
      }
    },
    {
      "id" : "Composition.section:presentedForm.entry",
      "path" : "Composition.section.entry",
      "short" : "Reference to the DocumentReference holding the PDF rendition",
      "definition" : "An entry referencing the DocumentReference (presented form) contained in the document Bundle.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-documentreference"]
      }]
    }]
  }
}

```
