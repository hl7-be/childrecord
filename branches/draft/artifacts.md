# Artifacts Summary - Child Report v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Child Report Logical Model](StructureDefinition-BeModelChildReport.md) | A logical model representing child report data elements. |
| [Document model](StructureDefinition-BeModelDocument.md) | Base model for documents. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeVlChildReport](StructureDefinition-BeVlChildReport.md) | Profile for the child report document - a Bundle of type ‘document’ that contains a Composition resource and other related resources with information about the child and the pregnancy. This profile is used for the exchange of information about the child, to be first implemented in Flanders. |
| [Child Report Composition](StructureDefinition-BeChildReportComposition.md) |  |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Eye Movement and Position](ValueSet-vs-eye-movement-and-position.md) | This value set includes codes to represent eye movement and position observations. |
| [Eye Screening Results](ValueSet-vs-eye-screening-results.md) | A value set that includes codes for eye screening results. |
| [Neonatal Hearing Screening Results](ValueSet-vs-neonatal-hearing-screening-results.md) | This value set includes codes for neonatal hearing screening results. |
| [Ophthalmologist Treatments](ValueSet-vs-ophthalmologist-treatments.md) | This value set includes codes for ophthalmologist treatment status. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Child Report Documentation](CodeSystem-cs-child-report-documentation.md) | Codes for documents or sections in the Child Report. |
| [Eye Movement and Position](CodeSystem-cs-eye-movement-and-position.md) | Custom codes for eye movement and position conditions not available in SNOMED CT. |

