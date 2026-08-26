# Child Report Documentation - Child Report v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Child Report Documentation**

## CodeSystem: Child Report Documentation (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation | *Version*:0.1.0 |
| Active as of 2026-03-19 | *Computable Name*:CSChildReportDocumentation |

 
Codes for documents or sections in the Child Report. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-child-report-documentation",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
  "version" : "0.1.0",
  "name" : "CSChildReportDocumentation",
  "title" : "Child Report Documentation",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-03-19T20:22:22+00:00",
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
  "description" : "Codes for documents or sections in the Child Report.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "pregnancy-details",
    "display" : "Pregnancy details documentation",
    "definition" : "Document or section containing pregnancy details."
  },
  {
    "code" : "neonatal-hearing-screening",
    "display" : "Neonatal hearing screening documentation",
    "definition" : "Document or section containing neonatal hearing screening results."
  },
  {
    "code" : "refusal-of-hearing-test",
    "display" : "Refusal of hearing test documentation",
    "definition" : "Document or section containing refusal of hearing test information."
  },
  {
    "code" : "severe-head-trauma",
    "display" : "Severe head trauma documentation",
    "definition" : "Document or section containing severe head trauma information."
  },
  {
    "code" : "eye-screening",
    "display" : "Eye screening documentation",
    "definition" : "Document or section containing eye screening results."
  },
  {
    "code" : "eye-results",
    "display" : "Eye results documentation",
    "definition" : "Document or section containing eye examination results."
  },
  {
    "code" : "in-treatment-with-ophthalmologist",
    "display" : "In treatment with ophthalmologist documentation",
    "definition" : "Document or section containing ophthalmologist treatment information."
  }]
}

```
