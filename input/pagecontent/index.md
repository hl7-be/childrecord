# Child Record (KindRapport) Implementation Guide

**Scope:**  
This guide defines a FHIR-based Child Record ("KindRapport"), a structured medical report summarizing key aspects of a child's health and care journey. It serves as a shared reference for healthcare professionals—such as general practitioners, pediatricians, school doctors, and child health services—working together to support the health and development of children.

The KindRapport is based on the **FHIR Document** paradigm: a bundled, versioned, and signed snapshot of health information at a point in time. This document includes a **Composition** resource as the index and entry point, and is composed of several clinical resources representing :

- **Growth and development observations**
- **Vision and hearing screening**
- **Free-text conclusions and plans**

The scope will evolve and more content will be added.  

---

## Structure

The Implementation Guide defines:

- A **Logical Model** of the Child Record: the conceptual structure outlining the data elements and sections of the report.
- A set of **FHIR Profiles** that constrain core resources (e.g., `Composition`, `Observation`, etc.) to meet regional requirements.
- **Terminology bindings** and **value sets** used to ensure consistency across implementations.
- **Example instances** demonstrating real-world scenarios.

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

- **SNOMED CT®** use requires country-specific licensing.
- **LOINC®** content is available with attribution.

Implementers must ensure compliance with the licensing terms of all referenced terminologies and external tools.

---

## Dependencies

This IG builds upon:

{% lang-fragment dependency-table-short.xhtml %}

Primary dependencies include:

- HL7 **FHIR R4** base specification
- Belgian national and regional implementation guides
- External terminologies and code systems

---


## Disclaimer

This Implementation Guide is provided as a **draft** and is not approved for production use. It is shared without warranty and may contain inconsistencies or incomplete content.

The final publication will supersede this version once officially approved and released.

---

## Feedback & Contribution

We encourage participation from clinicians, public health officials, IT implementers, and academic stakeholders.

---
