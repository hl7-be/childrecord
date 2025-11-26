# Document model - Child Record v0.1.0

## Logical Model: Document model 

 
Base model for documents. 

**Usages:**

* Derived from this Logical Model: [Child Report Logical Model](StructureDefinition-BeModelChildReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.childrecord|current/StructureDefinition/BeModelDocument)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelDocument.csv), [Excel](../StructureDefinition-BeModelDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelDocument",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeModelDocument",
  "version" : "0.1.0",
  "name" : "BeModelDocument",
  "title" : "Document model",
  "status" : "draft",
  "date" : "2025-11-26T09:38:23+00:00",
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
  "description" : "Base model for documents.",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeModelDocument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelDocument",
        "path" : "BeModelDocument",
        "short" : "Document model",
        "definition" : "Base model for documents."
      },
      {
        "id" : "BeModelDocument.subject",
        "path" : "BeModelDocument.subject",
        "short" : "Subject",
        "definition" : "Patient/subject information",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/BeModelPatient"
          }
        ]
      },
      {
        "id" : "BeModelDocument.documentType",
        "path" : "BeModelDocument.documentType",
        "short" : "Document type",
        "definition" : "Type of the document, e.g. report, discharge letter, etc.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelDocument.status",
        "path" : "BeModelDocument.status",
        "short" : "Status of the resource",
        "definition" : "Status of the resource",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelDocument.identifier",
        "path" : "BeModelDocument.identifier",
        "short" : "Business identifier for the document",
        "definition" : "Business identifier for the document",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "BeModelDocument.recordedDate",
        "path" : "BeModelDocument.recordedDate",
        "short" : "The date when the document was last updated",
        "definition" : "The date when the document was last updated",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelDocument.author[x]",
        "path" : "BeModelDocument.author[x]",
        "short" : "Author",
        "definition" : "Author(s) by whom the resource was/were authored. Multiple authors could be provided.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"
            ]
          },
          {
            "code" : "Organization",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ]
      },
      {
        "id" : "BeModelDocument.presentedForm",
        "path" : "BeModelDocument.presentedForm",
        "short" : "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document",
        "definition" : "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Attachment"
          }
        ]
      },
      {
        "id" : "BeModelDocument.documentTitle",
        "path" : "BeModelDocument.documentTitle",
        "short" : "Document title",
        "definition" : "Document title",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BeModelDocument.section",
        "path" : "BeModelDocument.section",
        "short" : "Sections",
        "definition" : "Sections",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "*"
          }
        ]
      },
      {
        "id" : "BeModelDocument.section.subsection",
        "path" : "BeModelDocument.section.subsection",
        "short" : "subsection",
        "definition" : "subsection",
        "min" : 0,
        "max" : "*",
        "contentReference" : "https://www.ehealth.fgov.be/standards/fhir/childrecord/StructureDefinition/BeModelDocument#BeModelDocument.section"
      }
    ]
  }
}

```
