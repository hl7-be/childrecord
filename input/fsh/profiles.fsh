Profile: ChildReport
Parent: Bundle

* type = #document (exactly)
* timestamp 1.. MS

* identifier 1.. MS


* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 and
    patient 1..1 and
    pregnancyDuration 0..1 and
    pregnancyBacterialMeningitis 0..1 and
    pregnancyCMVInfection 0..1 and
    neonatalHearingScreening 0..* and
    severeHeadTrauma 0..1 and
    eyeScreening 0..* and
    inTreatmentWithOphthalmologist 0..* and
    beRefusalOfHearingTest 0..1
    

* entry[composition].resource 1..
* entry[composition].resource only BeChildRecordComposition
* entry[composition] MS
* entry[patient].resource 1..
* entry[patient].resource only BePatient
* entry[patient] MS



Profile: BeChildRecordComposition
Parent: Composition
Id: BeChildRecordComposition
Title: "Child Record Composition"

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
    refusalOfHearingTest 0..1 and
    severeHeadTrauma 0..1 and
    eyeScreening 0..1 and 
    eyeResults 0..1 and 
    inTreatmentWithOphthalmologist 0..1


* section[pregnancyDetails]
  * ^short = "Pregnancy details section"
  * ^definition = "This section contains details about the pregnancy."
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference(BePregnancyDuration or BePregnancyCMVInfection or BePregnancyBacterialMeningitis)
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Pregnancy details entry in the pregnancy details section"
  * entry ^definition = "An entry in the pregnancy details section of the child record composition."
  * entry contains pregnancyDuration 0..1 and pregnancyCMVInfection 0..1 and bacterialMeningitis 0..1

  * entry[pregnancyDuration] only Reference(BePregnancyDuration)
  * entry[pregnancyDuration] MS

  * entry[pregnancyCMVInfection] only Reference(BePregnancyCMVInfection)
  * entry[pregnancyCMVInfection] MS

  * entry[bacterialMeningitis] only Reference(BePregnancyBacterialMeningitis)
  * entry[bacterialMeningitis] MS
  


* section[neonatalHearingScreening]
  * ^short = "Neonatal hearing screening section"
  * ^definition = "This section contains details about the neonatal hearing screening."
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference(BeNeonatalHearingScreening)
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Pregnancy details entry in the pregnancy details section"
  * entry ^definition = "An entry in the pregnancy details section of the child record composition."



* section[refusalOfHearingTest]
  * ^short = "Refusal of hearing test section"
  * ^definition = "This section contains details about the refusal of hearing test."
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference(BeRefusalOfHearingTest)
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Pregnancy details entry in the pregnancy details section"
  * entry ^definition = "An entry in the pregnancy details section of the child record composition."




* section[severeHeadTrauma]
  * ^short = "Severe head trauma section"
  * ^definition = "This section contains details about severe head trauma."
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference(BeSevereHeadTrauma)
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Severe head trauma entry in the severe head trauma section"
  * entry ^definition = "An entry in the severe head trauma section of the child record composition."




* section[eyeScreening]
  * ^short = "Eye screening section"
  * ^definition = "This section contains details about eye screening."
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference(BeEyeScreeningResults)
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Eye screening entry in the eye screening section"
  * entry ^definition = "An entry in the eye screening section of the child record composition."


* section[eyeResults]
  * ^short = "Eye results section"
  * ^definition = "This section contains details about eye results."
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference(EyeResultsInspectionPupilAbnormal or EyeResultsEyeMovementAndPosition or EyeResultsEyeRemarks)
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "Eye results entry in the eye results section"
  * entry ^definition = "An entry in the eye results section of the child record composition."




* section[inTreatmentWithOphthalmologist]
  * ^short = "In treatment with ophthalmologist section"
  * ^definition = "This section contains details about treatment with an ophthalmologist"
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference(InTreatmentWithOphthalmologist)
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "In treatment with ophthalmologist"
  * entry ^definition = "Entry for statin in treatment with ophthalmologist."





/*
* section[]
  * ^short = ""
  * ^definition = "."
  * emptyReason MS
  * code 1..
  * code = #1111111
  * entry only Reference()
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = ""
  * entry ^definition = ""

*/

// * section[refusalOfHearingTest]


// * section[severeHeadTrauma]


// * section[eyeScreening]























Profile: BeObservation
Parent: Observation


Profile: BePregnancyDuration
Parent: BeObservation
* code = $sct#412726003
* value[x] only SimpleQuantity
* valueQuantity.unit = "weeks"
* valueQuantity.code = #wk



Profile: BePregnancyCMVInfection
Parent: BeObservation

* code = #cmv-infection-during-pregnancy
* value[x] only boolean


Profile: BePregnancyBacterialMeningitis
Parent: BeObservation

* code = #bacterial-meningitis-during-pregnancy
* value[x] only boolean












Profile: BeNeonatalHearingScreening
Parent: BeObservation

* component ^slicing.discriminator[0].type = #pattern  
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components of the neonatal hearing screening observation"
* component ^definition = "The components of the neonatal hearing screening observation."
* component.code 1.. MS
* component contains
    left 1..1 MS and
    right 1..1 MS

* component[left]
  * ^short = "Left ear component"
  * ^definition = "The left ear component of the neonatal hearing screening observation."
  * code 1.. MS
  * code = #1111111
  * valueCodeableConcept 1.. MS
  * valueCodeableConcept from VSNeonatalHearingScreeningResults

* component[right]
  * ^short = "Right ear component"
  * ^definition = "The left ear component of the neonatal hearing screening observation."
  * code 1.. MS
  * code = #1111111
  * valueCodeableConcept 1.. MS
  * valueCodeableConcept from VSNeonatalHearingScreeningResults


Profile: BeSevereHeadTrauma
Parent: BeObservation
* code = #severe-head-trauma-during-delivery
* value[x] only boolean





Profile: BeEyeScreeningResults
Parent: BeObservation

* code = $sct#274412005x
* value[x] only CodeableConcept
* valueCodeableConcept from VSEyeScreeningOutcome
* extension contains EffectiveAgeRange named ageRange 1..1



Extension: EffectiveAgeRange
Id: effective-age-range
Title: "Effective Age Range"
Description: "Indicates the age range of the subject at which the observation is considered effective. Intended as an alternative to Observation.effective[x]."
Context: Observation
//Usage: #
* ^status = #active
//* ^context[+].type = #element
//* ^context[=].expression = "Observation"
* ^contextInvariant = "effective[x] must not be present when effectiveAgeRange is used"
* value[x] only Range
* valueRange ^short = "Age range during which the observation is effective"
* valueRange.low 1..1
* valueRange.low only SimpleQuantity
* valueRange.high 1..1
* valueRange.high only SimpleQuantity



Profile: EyeResultsInspectionPupilAbnormal
Parent: BeObservation
Title: "Inspection of pupil abnormal"
Description: "Observation of pupil abnormality."

* code 1.. MS
* code = #inspection-pupil-normal
* value[x] only boolean

* component[inspectionPupilAbnormal]

Profile: EyeResultsEyeMovementAndPosition
Parent: BeObservation
Title: "Eye movement and position"
Description: "Observation of eye movement and position."
* code 1.. MS
* code = #eye-movement-and-position
* value[x] only CodeableConcept
* valueCodeableConcept from VSEyeMovementAndPosition


Profile: EyeResultsEyeRemarks
Parent: BeObservation
Title: "Eye remarks"
Description: "Remarks related to eye observations."

* code 1.. MS
* code = #eye-remarks
* value[x] only string
* valueString MS

















Profile: InTreatmentWithOphthalmologist
Parent: BeObservation
* code = #in-treatment-with-ophthalmologist
* value[x] only CodeableConcept
* valueCodeableConcept from VSOphthalmologistTreatments



Profile: BeRefusalOfHearingTest
Parent: BePatientWill

* performer only Reference(RelatedPerson)

* provision.type = #deny
* provision.action = #perform-procedure
* provision.code = http://snomed.info/sct#252957005 "Children's hearing test"

