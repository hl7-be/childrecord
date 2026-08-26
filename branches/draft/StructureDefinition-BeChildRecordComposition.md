# Child Record Composition - Child Record v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Child Record Composition**

## Resource Profile: Child Record Composition 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeChildRecordComposition | *Version*:0.1.0 |
| Draft as of 2026-03-18 | *Computable Name*:BeChildRecordComposition |

**Usages:**

* Use this Profile: [ChildReport2](StructureDefinition-ChildReport2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childrecord|current/StructureDefinition/BeChildRecordComposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeChildRecordComposition.csv), [Excel](StructureDefinition-BeChildRecordComposition.xlsx), [Schematron](StructureDefinition-BeChildRecordComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeChildRecordComposition",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeChildRecordComposition",
  "version" : "0.1.0",
  "name" : "BeChildRecordComposition",
  "title" : "Child Record Composition",
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
          "type" : "pattern",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Sections composing the IPS",
      "definition" : "The root of the sections that make up the IPS composition.",
      "min" : 1
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
          "code" : "1111111"
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
          "code" : "1111111"
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
      "id" : "Composition.section:refusalOfHearingTest",
      "path" : "Composition.section",
      "sliceName" : "refusalOfHearingTest",
      "min" : 0,
      "max" : "1"
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
          "code" : "1111111"
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
          "code" : "1111111"
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
          "code" : "1111111"
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
          "code" : "1111111"
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
    }]
  }
}

```
