# Example Child Report - Child Report v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Child Report**

## Example Bundle: Example Child Report



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "child-report-example",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/be-vl-childreport"]
  },
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
  },
  "type" : "document",
  "timestamp" : "2026-03-15T10:30:00+01:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50001",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "composition-1",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/childreport/StructureDefinition/BeChildReportComposition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_composition-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition composition-1</b></p><a name=\"composition-1\"> </a><a name=\"hccomposition-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-BeChildReportComposition.html\">Child Report Composition</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 11503-0}\">Medical records</span></p><p><b>date</b>: 2026-03-15</p><p><b>author</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>title</b>: KindRapport - Child Report</p></div>"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11503-0",
          "display" : "Medical records"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "date" : "2026-03-15",
      "author" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "title" : "KindRapport - Child Report",
      "section" : [{
        "title" : "Pregnancy Details",
        "code" : {
          "coding" : [{
            "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
            "code" : "pregnancy-details"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy duration: 38 weeks. No CMV infection. No bacterial meningitis.</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:e5d4c3b2-8f9e-4012-def0-456789012def"
        },
        {
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50005"
        },
        {
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50006"
        }]
      },
      {
        "title" : "Neonatal Hearing Screening",
        "code" : {
          "coding" : [{
            "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
            "code" : "neonatal-hearing-screening"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hearing screening: normal result. Left ear: normal. Right ear: normal.</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50007"
        },
        {
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50008"
        },
        {
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50009"
        }]
      },
      {
        "title" : "Severe Head Trauma",
        "code" : {
          "coding" : [{
            "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
            "code" : "severe-head-trauma"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">No severe head trauma during delivery.</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50010"
        }]
      },
      {
        "title" : "Eye Screening",
        "code" : {
          "coding" : [{
            "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
            "code" : "eye-screening"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Eye screening: normal result.</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50011"
        }]
      },
      {
        "title" : "Eye Results",
        "code" : {
          "coding" : [{
            "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
            "code" : "eye-results"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pupil inspection normal. Eye movement normal both eyes. Remark: slight redness observed.</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50012"
        },
        {
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50013"
        },
        {
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50014"
        },
        {
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50015"
        }]
      },
      {
        "title" : "In Treatment with Ophthalmologist",
        "code" : {
          "coding" : [{
            "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
            "code" : "in-treatment-with-ophthalmologist"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Prescription of spectacles.</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50016"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "patient-baby",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_patient-baby\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient patient-baby</b></p><a name=\"patient-baby\"> </a><a name=\"hcpatient-baby\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core/StructureDefinition-be-patient.html\">BePatient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</p><hr/></div>"
      },
      "identifier" : [{
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
        "value" : "26031512345"
      }],
      "name" : [{
        "family" : "Janssens",
        "given" : ["Emma"]
      }],
      "gender" : "female",
      "birthDate" : "2026-03-01"
    }
  },
  {
    "fullUrl" : "urn:uuid:c3b2a1d4-6f5e-4890-bcda-234567890bcd",
    "resource" : {
      "resourceType" : "RelatedPerson",
      "id" : "mother-1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"RelatedPerson_mother-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RelatedPerson mother-1</b></p><a name=\"mother-1\"> </a><a name=\"hcmother-1\"> </a><p><b>patient</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>relationship</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RoleCode MTH}\">mother</span></p><p><b>name</b>: Marie Peeters </p></div>"
      },
      "patient" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "relationship" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "MTH",
          "display" : "mother"
        }]
      }],
      "name" : [{
        "family" : "Peeters",
        "given" : ["Marie"]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "practitioner-1",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_practitioner-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner practitioner-1</b></p><a name=\"practitioner-1\"> </a><a name=\"hcpractitioner-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core/StructureDefinition-be-practitioner.html\">BePractitioner</a></p></div><p><b>identifier</b>: <a href=\"https://build.fhir.org/ig/hl7-be/core/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/12345678901</p><p><b>name</b>: Jan De Smet </p></div>"
      },
      "identifier" : [{
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
        "value" : "12345678901"
      }],
      "name" : [{
        "family" : "De Smet",
        "given" : ["Jan"]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:e5d4c3b2-8f9e-4012-def0-456789012def",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-pregnancy-duration",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-pregnancy-duration\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-pregnancy-duration</b></p><a name=\"obs-pregnancy-duration\"> </a><a name=\"hcobs-pregnancy-duration\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-pd-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 412726003}\">Length of gestation at birth</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>focus</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-c3b2a1d4-6f5e-4890-bcda-234567890bcd\">RelatedPerson Marie Peeters </a></p><p><b>effective</b>: 2026-03-01</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: 38 weeks<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codewk = 'wk')</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-pd-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "412726003",
          "display" : "Length of gestation at birth"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "focus" : [{
        "reference" : "urn:uuid:c3b2a1d4-6f5e-4890-bcda-234567890bcd"
      }],
      "effectiveDateTime" : "2026-03-01",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueQuantity" : {
        "value" : 38,
        "unit" : "weeks",
        "system" : "http://unitsofmeasure.org",
        "code" : "wk"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50005",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-cmv",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-cmv\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-cmv</b></p><a name=\"obs-cmv\"> </a><a name=\"hcobs-cmv\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50005-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 28944009}\">Cytomegalovirus infection</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>focus</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-c3b2a1d4-6f5e-4890-bcda-234567890bcd\">RelatedPerson Marie Peeters </a></p><p><b>effective</b>: 2026-03-01</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: false</p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50005-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "28944009",
          "display" : "Cytomegalovirus infection"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "focus" : [{
        "reference" : "urn:uuid:c3b2a1d4-6f5e-4890-bcda-234567890bcd"
      }],
      "effectiveDateTime" : "2026-03-01",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueBoolean" : false
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50006",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-meningitis",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-meningitis\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-meningitis</b></p><a name=\"obs-meningitis\"> </a><a name=\"hcobs-meningitis\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-men-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 95883001}\">Bacterial meningitis</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>focus</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-c3b2a1d4-6f5e-4890-bcda-234567890bcd\">RelatedPerson Marie Peeters </a></p><p><b>effective</b>: 2026-03-01</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: false</p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-men-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "95883001",
          "display" : "Bacterial meningitis"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "focus" : [{
        "reference" : "urn:uuid:c3b2a1d4-6f5e-4890-bcda-234567890bcd"
      }],
      "effectiveDateTime" : "2026-03-01",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueBoolean" : false
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50007",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-hearing-overall",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-hearing-overall\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-hearing-overall</b></p><a name=\"obs-hearing-overall\"> </a><a name=\"hcobs-hearing-overall\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-hear-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 102972004}\">Brain stem auditory evoked potential, function</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-03</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 280413001}\">Normal result</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-hear-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-03",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "280413001",
          "display" : "Normal result"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50008",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-hearing-left",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-hearing-left\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-hearing-left</b></p><a name=\"obs-hearing-left\"> </a><a name=\"hcobs-hearing-left\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-hear-left-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 102972004}\">Brain stem auditory evoked potential, function</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-03</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 280413001}\">Normal result</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 117590005}\">Ear structure</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-hear-left-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-03",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "280413001",
          "display" : "Normal result"
        }]
      },
      "bodySite" : {
        "extension" : [{
          "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "7771000",
            "display" : "Left"
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "117590005",
          "display" : "Ear structure"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50009",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-hearing-right",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-hearing-right\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-hearing-right</b></p><a name=\"obs-hearing-right\"> </a><a name=\"hcobs-hearing-right\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-hear-right-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 102972004}\">Brain stem auditory evoked potential, function</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-03</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 280413001}\">Normal result</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 117590005}\">Ear structure</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-hear-right-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "102972004",
          "display" : "Brain stem auditory evoked potential, function"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-03",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "280413001",
          "display" : "Normal result"
        }]
      },
      "bodySite" : {
        "extension" : [{
          "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24028007",
            "display" : "Right"
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "117590005",
          "display" : "Ear structure"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50010",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-head-trauma",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-head-trauma\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-head-trauma</b></p><a name=\"obs-head-trauma\"> </a><a name=\"hcobs-head-trauma\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-ht-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 127296001}\">Intracranial injury</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-01</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: false</p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-ht-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "127296001",
          "display" : "Intracranial injury"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-01",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueBoolean" : false
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50011",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-eye-screening",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-eye-screening\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-eye-screening</b></p><a name=\"obs-eye-screening\"> </a><a name=\"hcobs-eye-screening\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-eye-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 363926002}\">Eye/vision observable</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-10</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 280413001}\">Normal result</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-eye-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363926002",
          "display" : "Eye/vision observable"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-10",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "280413001",
          "display" : "Normal result"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50012",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-pupil",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-pupil\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-pupil</b></p><a name=\"obs-pupil\"> </a><a name=\"hcobs-pupil\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50012-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 274093008}\">Abnormal pupil</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-10</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: false</p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50012-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "274093008",
          "display" : "Abnormal pupil"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-10",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueBoolean" : false
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50013",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-eye-movement-left",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-eye-movement-left\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-eye-movement-left</b></p><a name=\"obs-eye-movement-left\"> </a><a name=\"hcobs-eye-movement-left\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-eml-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 31763002}\">Ocular motility observable</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-10</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason not-applicable}\">Not Applicable</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 81745001}\">Structure of eye proper</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-eml-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "31763002",
          "display" : "Ocular motility observable"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-10",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "not-applicable",
          "display" : "Not Applicable"
        }]
      },
      "bodySite" : {
        "extension" : [{
          "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "7771000",
            "display" : "Left"
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "81745001",
          "display" : "Structure of eye proper"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50014",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-eye-movement-right",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-eye-movement-right\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-eye-movement-right</b></p><a name=\"obs-eye-movement-right\"> </a><a name=\"hcobs-eye-movement-right\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-emr-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 31763002}\">Ocular motility observable</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-10</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason not-applicable}\">Not Applicable</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 81745001}\">Structure of eye proper</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-emr-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "31763002",
          "display" : "Ocular motility observable"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-10",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "not-applicable",
          "display" : "Not Applicable"
        }]
      },
      "bodySite" : {
        "extension" : [{
          "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "24028007",
            "display" : "Right"
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "81745001",
          "display" : "Structure of eye proper"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50015",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-eye-remarks",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-eye-remarks\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-eye-remarks</b></p><a name=\"obs-eye-remarks\"> </a><a name=\"hcobs-eye-remarks\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-er-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation eye-remarks-observation}\">Eye remarks</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-10</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: Slight redness observed in both eyes, likely due to birth. No treatment needed.</p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-er-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "eye-remarks-observation"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-10",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueString" : "Slight redness observed in both eyes, likely due to birth. No treatment needed."
    }
  },
  {
    "fullUrl" : "urn:uuid:d1c4b5a2-3e6f-4890-b1c7-a2d3e4f50016",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "obs-ophthalmologist",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_obs-ophthalmologist\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation obs-ophthalmologist</b></p><a name=\"obs-ophthalmologist\"> </a><a name=\"hcobs-ophthalmologist\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://build.fhir.org/ig/hl7-be/core-clinical/StructureDefinition-be-clinical-observation.html\">BeClinicalObservation</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.1.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:obs-oph-001</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation ophthalmologist-treatment-observation}\">In treatment with ophthalmologist</span></p><p><b>subject</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-b2a1c3d4-5e6f-7890-abcd-123456789abc\">Emma Janssens  Female, DoB: 2026-03-01 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#26031512345)</a></p><p><b>effective</b>: 2026-03-10</p><p><b>performer</b>: <a href=\"Bundle-child-report-example.html#urn-uuid-d4c3b2a1-7e8f-4901-cdef-345678901cde\">Practitioner Jan De Smet </a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 183131009}\">Prescription of spectacles</span></p></div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:obs-oph-001"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
          "code" : "ophthalmologist-treatment-observation"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:b2a1c3d4-5e6f-7890-abcd-123456789abc"
      },
      "effectiveDateTime" : "2026-03-10",
      "performer" : [{
        "reference" : "urn:uuid:d4c3b2a1-7e8f-4901-cdef-345678901cde"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "183131009",
          "display" : "Prescription of spectacles"
        }]
      }
    }
  }]
}

```
