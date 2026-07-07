Profile: BeChildReportComposition
Parent: Composition
Id: BeChildReportComposition
Description: "Composition profile for the Child Report (KindRapport). This resource serves as the document index, organizing the child report into sections such as pregnancy details, neonatal hearing screening, head trauma, eye screening and results, and ophthalmologist treatment. Each section references BeClinicalObservation entries contained in the document Bundle."

* author 1.. MS
* author only Reference(BePractitioner or BeOrganization)
* date 1.. MS

* subject 1..1 MS
* subject only Reference(BePatient)
* subject ^short = "The child that is the subject of the document"
* subject ^definition = "The child. May be a literal reference to a BePatient included in the document Bundle, or a logical reference (identifier only) when the Patient resource is not included."
* subject.reference MS
* subject.identifier MS


* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.title 1..1 MS
* section.text 1.. MS
* section.section ..0 // No subsections

* section contains
    pregnancyDetails 1..1 MS and
    neonatalHearingScreening 0..1 and
    severeHeadTrauma 0..1 and
    eyeScreening 0..1 and
    eyeResults 0..1 and
    inTreatmentWithOphthalmologist 0..1 and
    presentedForm 1..1 MS


* section[pregnancyDetails]
  * ^short = "Pregnancy details section"
  * ^definition = "This section contains details about the pregnancy."
  * emptyReason MS
  * code 1..
  * code = CSChildReportDocumentation#pregnancy-details
  * entry only Reference(BeClinicalObservation)
  * entry ^short = "Pregnancy details entry in the pregnancy details section"
  * entry ^definition = "An entry in the pregnancy details section of the child record composition."



* section[neonatalHearingScreening]
  * ^short = "Neonatal hearing screening section"
  * ^definition = "This section contains details about the neonatal hearing screening."
  * emptyReason MS
  * code 1..
  * code = CSChildReportDocumentation#neonatal-hearing-screening
  * entry only Reference(BeClinicalObservation)
  * entry ^short = "Neonatal hearing screening entries"
  * entry ^definition = "Entries for neonatal hearing screening including main observation and left/right ear results."



// refusalOfHearingTest - removed for now, to be added back when needed




* section[severeHeadTrauma]
  * ^short = "Severe head trauma section"
  * ^definition = "This section contains details about severe head trauma."
  * emptyReason MS
  * code 1..
  * code = CSChildReportDocumentation#severe-head-trauma
  * entry only Reference(BeClinicalObservation)
  * entry ^short = "Severe head trauma entry in the severe head trauma section"
  * entry ^definition = "An entry in the severe head trauma section of the child record composition."




* section[eyeScreening]
  * ^short = "Eye screening section"
  * ^definition = "This section contains details about eye screening."
  * emptyReason MS
  * code 1..
  * code = CSChildReportDocumentation#eye-screening
  * entry only Reference(BeClinicalObservation)
  * entry ^short = "Eye screening entry in the eye screening section"
  * entry ^definition = "An entry in the eye screening section of the child record composition."


* section[eyeResults]
  * ^short = "Eye results section"
  * ^definition = "This section contains details about eye results."
  * emptyReason MS
  * code 1..
  * code = CSChildReportDocumentation#eye-results
  * entry only Reference(BeClinicalObservation)
  * entry ^short = "Eye results entry in the eye results section"
  * entry ^definition = "An entry in the eye results section of the child record composition."




* section[inTreatmentWithOphthalmologist]
  * ^short = "In treatment with ophthalmologist section"
  * ^definition = "This section contains details about treatment with an ophthalmologist"
  * emptyReason MS
  * code 1..
  * code = CSChildReportDocumentation#in-treatment-with-ophthalmologist
  * entry only Reference(BeClinicalObservation)
  * entry ^short = "In treatment with ophthalmologist"
  * entry ^definition = "Entry for treatment with ophthalmologist."


* section[presentedForm]
  * ^short = "Presented form section"
  * ^definition = "This section references the PDF rendition (presented form) of the child report."
  * code 1..
  * code = CSChildReportDocumentation#presented-form
  * entry 1..1
  * entry only Reference(BeDocumentReference)
  * entry ^short = "Reference to the DocumentReference holding the PDF rendition"
  * entry ^definition = "An entry referencing the DocumentReference (presented form) contained in the document Bundle."
