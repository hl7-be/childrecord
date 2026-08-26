# Child Report Documentation - Child Report v1.0.2

## CodeSystem: Child Report Documentation 

 
Codes for documents, sections, and observations in the Child Report. 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-child-report-documentation",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation",
  "version" : "1.0.2",
  "name" : "CSChildReportDocumentation",
  "title" : "Child Report Documentation",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-24T07:59:58+00:00",
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
  "description" : "Codes for documents, sections, and observations in the Child Report.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 10,
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
  },
  {
    "code" : "presented-form",
    "display" : "Presented form",
    "definition" : "Section referencing the PDF rendition (presented form) of the child report."
  },
  {
    "code" : "eye-remarks-observation",
    "display" : "Eye remarks",
    "definition" : "Observation code for free text remarks about the eyes."
  },
  {
    "code" : "ophthalmologist-treatment-observation",
    "display" : "In treatment with ophthalmologist",
    "definition" : "Observation code for treatment followed with an ophthalmologist."
  }]
}

```
