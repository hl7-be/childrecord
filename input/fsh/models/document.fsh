Logical: BeModelDocument
Parent: Base
Title: "Document model"
Description: "Base model for documents."
Characteristics: #can-be-target

* subject 1..1 BeModelPatient "Subject" """Patient/subject information"""

* documentType 1..1 CodeableConcept "Document type" """Type of the document, e.g. report, discharge letter, etc."""
* status 1..1 CodeableConcept "Status of the resource" """Status of the resource"""

* identifier 1..* Identifier "Business identifier for the document"

* recordedDate 1..1 dateTime "The date when the document was last updated"
//* lastUpdate 0..1 dateTime "Date and time of the last update to the resource" """Date and time of the last update to the document/information"""


* author[x] 1..1 BePractitioner or BeOrganization "Author" """Author(s) by whom the resource was/were authored. Multiple authors could be provided."""
//* datetime 1..1 dateTime "Date and time of authoring/issuing" """Date and time of the issuing the document/resource by its author."""
//* statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of the resource."
//* version 0..1 string "Version" """Business version of the resource."""
* presentedForm 0..* Attachment "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document"
* documentTitle 1..1 string "Document title"

* section 0..1 * "Sections"
* section ^type.code = #*

  * subsection 0..* contentReference #BeModelDocument.section "subsection"

//* entry 0..* * "Any Content"

/* OK FROM HERE ON*/
