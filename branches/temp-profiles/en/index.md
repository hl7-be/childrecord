# Home - Child Record v0.1.0

## Home

# Child Record (KindRapport) Implementation Guide

**Scope:**
 This guide defines a FHIR-based Child Record (“KindRapport”), a structured medical report summarizing key aspects of a child’s health and care journey. It serves as a shared reference for healthcare professionals—such as general practitioners, pediatricians, school doctors, and child health services—working together to support the health and development of children.

The KindRapport is based on the **FHIR Document** paradigm: a bundled, versioned, and signed snapshot of health information at a point in time. This document includes a **Composition** resource as the index and entry point, and is composed of several clinical resources representing :

* **Growth and development observations**
* **Vision and hearing screening**
* **Free-text conclusions and plans**

The scope will evolve and more content will be added.

-------

## Structure

The Implementation Guide defines:

* A **Logical Model** of the Child Record: the conceptual structure outlining the data elements and sections of the report.
* A set of **FHIR Profiles** that constrain core resources (e.g., `Composition`, `Observation`, etc.) to meet regional requirements.
* **Terminology bindings** and **value sets** used to ensure consistency across implementations.
* **Example instances** demonstrating real-world scenarios.

The structure follows the FHIR document model:

```
Document Bundle
├── Composition (document index)
├── Patient (child)
├── RelatedPerson (parent and/or guardian)
├── Practitioner / Organization (authors, custodians)
├── Observation (growth, screening results, etc.)
└── Additional entries...

```

Each section in the Composition corresponds to a chapter in the Child Record.

-------

## Content Overview

This publication includes:

* Full set of conformance artifacts: profiles, extensions, value sets, examples.
* Guidance for implementers on usage and validation.
* Descriptions of intended use cases and project motivations.

Use the top menu to navigate, or consult the [Table of Contents](toc.md). **(Some pages may include multiple tabs.)**

-------

## Intellectual Property Considerations

This IG is published under a public domain license; however, it references code systems with additional restrictions:

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [BeBacterialMeningitis](StructureDefinition-BeBacterialMeningitis.md), [BeChildRecordComposition](StructureDefinition-BeChildRecordComposition.md)...Show 25 more,[BeEyeScreening](StructureDefinition-BeEyeScreening.md),[BeModelChildReport](StructureDefinition-BeModelChildReport.md),[BeModelDocument](StructureDefinition-BeModelDocument.md),[BeModelRelatedPerson](StructureDefinition-BeModelRelatedPerson.md),[BeNeonatalHearingScreening](StructureDefinition-BeNeonatalHearingScreening.md),[BeNeonatalHearingScreeningLeft](StructureDefinition-BeNeonatalHearingScreeningLeft.md),[BeNeonatalHearingScreeningRight](StructureDefinition-BeNeonatalHearingScreeningRight.md),[BeObservation](StructureDefinition-BeObservation.md),[BePregnancyCMVInfection](StructureDefinition-BePregnancyCMVInfection.md),[BePregnancyDuration](StructureDefinition-BePregnancyDuration.md),[BeSevereHeadTrauma](StructureDefinition-BeSevereHeadTrauma.md),[CSEyeMovementAndPosition](CodeSystem-CSEyeMovementAndPosition.md),[CSEyeScreeningResults](CodeSystem-CSEyeScreeningResults.md),[CSNeonatalHearingScreeningResults](CodeSystem-CSNeonatalHearingScreeningResults.md),[CSOphthalmologistTreatments](CodeSystem-CSOphthalmologistTreatments.md),[ChildRecord](index.md),[ChildReport](StructureDefinition-ChildReport.md),[EyeResultsEyeMovementAndPosition](StructureDefinition-EyeResultsEyeMovementAndPosition.md),[EyeResultsEyeRemarks](StructureDefinition-EyeResultsEyeRemarks.md),[EyeResultsInspectionPupilAbnormal](StructureDefinition-EyeResultsInspectionPupilAbnormal.md),[InTreatmentWithOphthalmologist](StructureDefinition-InTreatmentWithOphthalmologist.md),[VSEyeMovementAndPosition](ValueSet-VSEyeMovementAndPosition.md),[VSEyeScreeningOutcome](ValueSet-eye-screening-results.md),[VSNeonatalHearingScreeningResults](ValueSet-VSNeonatalHearingScreeningResults.md)and[VSOphthalmologistTreatments](ValueSet-VSOphthalmologistTreatments.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [BeEyeScreening](StructureDefinition-BeEyeScreening.md), [BeModelChildReport](StructureDefinition-BeModelChildReport.md) and [BePregnancyDuration](StructureDefinition-BePregnancyDuration.md)


Key considerations:

* **SNOMED CT®** use requires country-specific licensing.
* **LOINC®** content is available with attribution.

Implementers must ensure compliance with the licensing terms of all referenced terminologies and external tools.

-------

## Dependencies

This IG builds upon:

Primary dependencies include:

* HL7 **FHIR R4** base specification
* Belgian national and regional implementation guides
* External terminologies and code systems

-------

## Disclaimer

This Implementation Guide is provided as a **draft** and is not approved for production use. It is shared without warranty and may contain inconsistencies or incomplete content.

The final publication will supersede this version once officially approved and released.

-------

## Feedback & Contribution

We encourage participation from clinicians, public health officials, IT implementers, and academic stakeholders.

-------

