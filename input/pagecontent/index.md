# Child Report (KindRapport) Implementation Guide

**Scope:**
This guide defines a FHIR-based Child Report ("KindRapport"), a structured medical report summarizing key aspects of a child's health and care journey. It serves as a shared reference for healthcare professionals — such as general practitioners, pediatricians, school doctors, and child health services — working together to support the health and development of children.

This specification originates from the **Flemish KindRapport** and is expected to be first implemented in **Flanders**. It is designed in alignment with national Belgian FHIR profiles, with the goal of eventually serving as input for national-level profiles, in coordination with related projects such as **eBirth**.

The KindRapport is based on the **FHIR Document** paradigm: a bundled, versioned, and signed snapshot of health information at a point in time. This document includes a **Composition** resource as the index and entry point, and is composed of several clinical resources representing:

- **Pregnancy details** (duration, CMV infection, bacterial meningitis)
- **Neonatal hearing screening** (overall, left ear, right ear)
- **Severe head trauma during delivery**
- **Eye screening and examination results** (screening outcome, pupil inspection, ocular motility)
- **Ophthalmologist treatment information**
- **Free-text remarks**

The scope will evolve and more content will be added.

## Exchange Model

The unit of exchange defined by this IG is **one document at a time**. The Child Report Bundle is the atomic unit: it is created, exchanged, and consumed as a whole. Each document is a self-contained snapshot — all resources referenced by the Composition are included in the Bundle.

While the individual resources within the document (e.g., Observation, Patient, RelatedPerson) may be sourced from or reused in other systems internally, **how those resources are stored, queried, or managed outside of the document exchange is out of scope** for this Implementation Guide. This IG is concerned solely with defining the document format and its contents for interoperable exchange.

---

## Design Principles

This Implementation Guide follows a set of design constraints to promote reuse, alignment, and consistency across the Belgian FHIR ecosystem:

- **Reuse of national base profiles**: All clinical observations use [BeClinicalObservation](https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition-be-clinical-observation.html) from the [core-clinical](https://www.ehealth.fgov.be/standards/fhir/core-clinical/) package, rather than creating many dedicated observation profiles. Each observation is differentiated by its code, value type, and body site — not by a separate StructureDefinition.
- **Document structure**: The Bundle profile extends [BeDocument](https://www.ehealth.fgov.be/standards/fhir/patient-dossier/) from the patient-dossier package, ensuring alignment with the national document exchange model.
- **Minimal profiling**: Rather than creating a dedicated profile for each clinical concept, this IG reuses the same `BeClinicalObservation` profile with inline constraints (fixed codes, value type restrictions, body site) applied at the Bundle level. This keeps the number of profiles small and the IG maintainable.
- **Terminology alignment**: Value sets and codes are provided by terminologists and RIZIV/INAMI where available. When no suitable code exists, SNOMED CT is used. New custom codes are created only when no standard code is available.
- **Terminology canonical separation**: All CodeSystem and ValueSet resources use a canonical URL rooted in `https://www.ehealth.fgov.be/standards/fhir/terminology/`, separate from the structural package canonical. This ensures terminology assets can be published and governed independently from the structure profiles.

---

## Structure

The Implementation Guide defines:

- A **Logical Model** of the Child Report: the conceptual structure outlining the data elements and sections of the report.
- A set of **FHIR Profiles** that constrain core resources (e.g., `Composition`, `Observation`, etc.) to meet regional requirements.
- **Terminology bindings** and **value sets** used to ensure consistency across implementations.
- **Example instances** demonstrating real-world scenarios.

The structure follows the FHIR document model:

```
Document Bundle (BeVlChildReport extends BeDocument)
├── Composition (BeChildReportComposition - document index with sections)
├── Patient (BePatient - the child)
├── RelatedPerson (the mother or guardian)
├── Observation: Pregnancy duration (BeClinicalObservation)
├── Observation: CMV infection (BeClinicalObservation, focus: mother)
├── Observation: Bacterial meningitis (BeClinicalObservation)
├── Observation: Hearing screening overall (BeClinicalObservation)
├── Observation: Hearing screening left ear (BeClinicalObservation + laterality)
├── Observation: Hearing screening right ear (BeClinicalObservation + laterality)
├── Observation: Severe head trauma (BeClinicalObservation)
├── Observation: Eye screening (BeClinicalObservation)
├── Observation: Pupil inspection (BeClinicalObservation)
├── Observation: Eye movement left (BeClinicalObservation + laterality)
├── Observation: Eye movement right (BeClinicalObservation + laterality)
├── Observation: Eye remarks (BeClinicalObservation, free text)
└── Observation: Ophthalmologist treatment (BeClinicalObservation)
```

Each section in the Composition corresponds to a chapter in the Child Report. Laterality for ear and eye observations is expressed using the [be-ext-laterality](https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition-be-ext-laterality.html) extension on `bodySite`.

---

## Content Overview

This publication includes:

- Full set of conformance artifacts: profiles, extensions, value sets, examples.
- Guidance for implementers on usage and validation.
- Descriptions of intended use cases and project motivations.

Use the top menu to navigate, or consult the [Table of Contents](toc.html). *(Some pages may include multiple tabs.)*

---

## Intellectual Property Considerations

This IG is published under a public domain license; however, it references code systems with additional restrictions:

{% lang-fragment ip-statements.xhtml %}

Key considerations:

- **SNOMED CT** use requires country-specific licensing.

Implementers must ensure compliance with the licensing terms of all referenced terminologies and external tools.

---

## Dependencies

This IG builds upon:

{% lang-fragment dependency-table-short.xhtml %}

Primary dependencies include:

- HL7 **FHIR R4** base specification
- [hl7.fhir.be.core](https://www.ehealth.fgov.be/standards/fhir/core/) — Belgian core profiles (BePatient, BePractitioner, BeOrganization)
- [hl7.fhir.be.core-clinical](https://www.ehealth.fgov.be/standards/fhir/core-clinical/) — Belgian clinical profiles (BeClinicalObservation, laterality extension)
- [hl7.fhir.be.patient-dossier](https://www.ehealth.fgov.be/standards/fhir/patient-dossier/) — Belgian document model (BeDocument)

---

## Disclaimer

This Implementation Guide is provided as a **draft** and is not approved for production use. It is shared without warranty and may contain inconsistencies or incomplete content.

The final publication will supersede this version once officially approved and released.

---

## Feedback & Contribution

We encourage participation from clinicians, public health officials, IT implementers, and academic stakeholders.

---
