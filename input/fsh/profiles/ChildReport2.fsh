Alias: $sct = http://snomed.info/sct

Profile: ChildReport2
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
    relatedPerson 1..1 and
    pregnancyDuration 0..1 and
    pregnancyCMVInfection 0..1 and
    pregnancyBacterialMeningitis 0..1 and
    neonatalHearingScreening 0..* and
    neonatalHearingScreeningLeft 0..1 and
    neonatalHearingScreeningRight 0..1 and
    severeHeadTrauma 0..1 and
    eyeScreening 0..* and
    inspectionPupilAbnormal 0..1 and
    eyeMovementAndPosition 0..1 and
    eyeRemarks 0..1 and
    inTreatmentWithOphthalmologist 0..*

// --- Non-observation entries (keep specific profiles) ---

* entry[composition].resource 1..
* entry[composition].resource only BeChildReportComposition
* entry[composition] MS

* entry[patient].resource 1..
* entry[patient].resource only BePatient
* entry[patient] MS

* entry[relatedPerson].resource 1..
* entry[relatedPerson].resource only RelatedPerson
* entry[relatedPerson] MS

// --- Observation entries (all constrained to BeClinicalObservation with inline constraints) ---

* entry[pregnancyDuration].resource 1..
* entry[pregnancyDuration].resource only BeClinicalObservation
* entry[pregnancyDuration].resource.code = $sct#412726003
* entry[pregnancyDuration].resource.value[x] only SimpleQuantity
* entry[pregnancyDuration].resource.valueQuantity.unit = "weeks"
* entry[pregnancyDuration].resource.valueQuantity.code = #wk
* entry[pregnancyDuration] MS

* entry[pregnancyCMVInfection].resource 1..
* entry[pregnancyCMVInfection].resource only BeClinicalObservation
* entry[pregnancyCMVInfection].resource.code = #cmv-infection-during-pregnancy
* entry[pregnancyCMVInfection].resource.value[x] only boolean
* entry[pregnancyCMVInfection] MS

* entry[pregnancyBacterialMeningitis].resource 1..
* entry[pregnancyBacterialMeningitis].resource only BeClinicalObservation
* entry[pregnancyBacterialMeningitis].resource.code = #bacterial-meningitis
* entry[pregnancyBacterialMeningitis].resource.value[x] only boolean
* entry[pregnancyBacterialMeningitis] MS

* entry[neonatalHearingScreening].resource 1..
* entry[neonatalHearingScreening].resource only BeClinicalObservation
* entry[neonatalHearingScreening].resource.code 1.. MS
* entry[neonatalHearingScreening].resource.code = #neonatal-hearing-screening
* entry[neonatalHearingScreening].resource.subject 1..1 MS
* entry[neonatalHearingScreening].resource.subject only Reference(BePatient)
* entry[neonatalHearingScreening].resource.effective[x] only dateTime
* entry[neonatalHearingScreening].resource.effectiveDateTime 1..1 MS
* entry[neonatalHearingScreening].resource.value[x] only CodeableConcept
* entry[neonatalHearingScreening].resource.valueCodeableConcept 1..1 MS
* entry[neonatalHearingScreening].resource.valueCodeableConcept from VSNeonatalHearingScreeningResults
* entry[neonatalHearingScreening] MS

* entry[neonatalHearingScreeningLeft].resource 1..
* entry[neonatalHearingScreeningLeft].resource only BeClinicalObservation
* entry[neonatalHearingScreeningLeft].resource.code 1.. MS
* entry[neonatalHearingScreeningLeft].resource.code = #neonatal-hearing-screening-left
* entry[neonatalHearingScreeningLeft].resource.subject 1..1 MS
* entry[neonatalHearingScreeningLeft].resource.subject only Reference(BePatient)
* entry[neonatalHearingScreeningLeft].resource.effective[x] only dateTime
* entry[neonatalHearingScreeningLeft].resource.effectiveDateTime 1..1 MS
* entry[neonatalHearingScreeningLeft].resource.value[x] only CodeableConcept
* entry[neonatalHearingScreeningLeft].resource.valueCodeableConcept 1..1 MS
* entry[neonatalHearingScreeningLeft].resource.valueCodeableConcept from VSNeonatalHearingScreeningResults
* entry[neonatalHearingScreeningLeft] MS

* entry[neonatalHearingScreeningRight].resource 1..
* entry[neonatalHearingScreeningRight].resource only BeClinicalObservation
* entry[neonatalHearingScreeningRight].resource.code 1.. MS
* entry[neonatalHearingScreeningRight].resource.code = #neonatal-hearing-screening-right
* entry[neonatalHearingScreeningRight].resource.subject 1..1 MS
* entry[neonatalHearingScreeningRight].resource.subject only Reference(BePatient)
* entry[neonatalHearingScreeningRight].resource.effective[x] only dateTime
* entry[neonatalHearingScreeningRight].resource.effectiveDateTime 1..1 MS
* entry[neonatalHearingScreeningRight].resource.value[x] only CodeableConcept
* entry[neonatalHearingScreeningRight].resource.valueCodeableConcept 1..1 MS
* entry[neonatalHearingScreeningRight].resource.valueCodeableConcept from VSNeonatalHearingScreeningResults
* entry[neonatalHearingScreeningRight] MS

* entry[severeHeadTrauma].resource 1..
* entry[severeHeadTrauma].resource only BeClinicalObservation
* entry[severeHeadTrauma].resource.code = #severe-head-trauma-during-delivery
* entry[severeHeadTrauma].resource.value[x] only boolean
* entry[severeHeadTrauma] MS

* entry[eyeScreening].resource 1..
* entry[eyeScreening].resource only BeClinicalObservation
* entry[eyeScreening].resource.code = $sct#274412005
* entry[eyeScreening].resource.value[x] only CodeableConcept
* entry[eyeScreening].resource.valueCodeableConcept from VSEyeScreeningOutcome
* entry[eyeScreening] MS

* entry[inspectionPupilAbnormal].resource 1..
* entry[inspectionPupilAbnormal].resource only BeClinicalObservation
* entry[inspectionPupilAbnormal].resource.code 1.. MS
* entry[inspectionPupilAbnormal].resource.code = #inspection-pupil-normal
* entry[inspectionPupilAbnormal].resource.value[x] only boolean
* entry[inspectionPupilAbnormal] MS

* entry[eyeMovementAndPosition].resource 1..
* entry[eyeMovementAndPosition].resource only BeClinicalObservation
* entry[eyeMovementAndPosition].resource.code 1.. MS
* entry[eyeMovementAndPosition].resource.code = #eye-movement-and-position
* entry[eyeMovementAndPosition].resource.value[x] only CodeableConcept
* entry[eyeMovementAndPosition].resource.valueCodeableConcept from VSEyeMovementAndPosition
* entry[eyeMovementAndPosition] MS

* entry[eyeRemarks].resource 1..
* entry[eyeRemarks].resource only BeClinicalObservation
* entry[eyeRemarks].resource.code 1.. MS
* entry[eyeRemarks].resource.code = #eye-remarks
* entry[eyeRemarks].resource.value[x] only string
* entry[eyeRemarks].resource.valueString MS
* entry[eyeRemarks] MS

* entry[inTreatmentWithOphthalmologist].resource 1..
* entry[inTreatmentWithOphthalmologist].resource only BeClinicalObservation
* entry[inTreatmentWithOphthalmologist].resource.code = #in-treatment-with-ophthalmologist
* entry[inTreatmentWithOphthalmologist].resource.value[x] only CodeableConcept
* entry[inTreatmentWithOphthalmologist].resource.valueCodeableConcept from VSOphthalmologistTreatments
* entry[inTreatmentWithOphthalmologist] MS
