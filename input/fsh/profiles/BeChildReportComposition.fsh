Profile: BeChildReportComposition
Parent: Composition
Id: BeChildReportComposition
Title: "Child Report Composition"

* author 1.. MS
* author only Reference(BePractitioner or BeOrganization)
* date 1.. MS


* section ^slicing.discriminator[0].type = #pattern
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
    inTreatmentWithOphthalmologist 0..1


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
