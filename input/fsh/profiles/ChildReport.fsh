Alias: $sct = http://snomed.info/sct
Alias: $laterality = https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality

Profile: BeChildReport
Id: be-childreport
Parent: BeDocument
Description: "Profile for the child report document - a Bundle of type 'document' that contains a Composition resource and other related resources with information about the child and the pregnancy. This profile is used for the exchange of information about the child, to be first implemented in Flanders."

// type = #document is inherited from BeDocument
* type ^short = "document"
* timestamp 1.. MS
* timestamp ^short = "The time when the document was created"

* identifier 1.. MS
* identifier ^short = "Persistent identifier for the Bundle"


//* entry ^slicing.discriminator[0].type = #type
//* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #value
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = true
* entry ^orderMeaning = "The first entry in this bundle is always a Composition."
* entry ^short = "Entry resource in the child report bundle"
* entry ^definition = "An entry resource included in the child report document bundle resource."
* entry ^comment = "Must contain the Composition as the first entry (only a single Composition resource instance may be included) and may include a Patient resource."
* entry.fullUrl 1.. MS
* entry contains
    composition 1..1 MS and
    patient 0..1 and
//    relatedPerson 0..1 and
    pregnancyDuration 0..1 and
    pregnancyCMVInfection 0..1 and
    pregnancyBacterialMeningitis 0..1 and
    neonatalHearingScreening 0..* and
    neonatalHearingScreeningLeft 0..1 and
    neonatalHearingScreeningRight 0..1 and
    severeHeadTrauma 0..1 and
    eyeScreening 0..* and
    inspectionPupilAbnormal 0..1 and
    eyeMovementAndPositionLeft 0..* and
    eyeMovementAndPositionRight 0..* and
    eyeRemarks 0..1 and
    inTreatmentWithOphthalmologist 0..* and
    presentedForm 1..1

// --- Non-observation entries ---

* entry[composition] ^short = "The Child Report Composition"
* entry[composition].resource ^short = "The Composition for the child report"
* entry[composition].resource only BeChildReportComposition

* entry[patient] ^short = "The child (patient)"
* entry[patient] ^short = "The child (patient) - this is an optional entry - in cases where a patient is identified with a logical reference"
* entry[patient].resource 1..
* entry[patient].resource ^short = "The child"
* entry[patient].resource only BePatient
* entry[patient] MS

//* entry[relatedPerson] ^short = "The mother or guardian"
//* entry[relatedPerson].resource 0..
//* entry[relatedPerson].resource ^short = "The mother or guardian"
//* entry[relatedPerson].resource only RelatedPerson
//* entry[relatedPerson] MS

// --- Observation entries ---

// Pregnancy duration in weeks (SNOMED 412726003 - Length of gestation at birth)
* entry[pregnancyDuration] ^short = "Duration of the pregnancy in weeks"
* entry[pregnancyDuration].resource 1..
* entry[pregnancyDuration].resource ^short = "Observation for pregnancy duration in weeks"
* entry[pregnancyDuration].resource only BeClinicalObservation
* entry[pregnancyDuration].resource.code = $sct#412726003 "Length of gestation at birth"
* entry[pregnancyDuration].resource.code ^short = "Length of gestation at birth"
* entry[pregnancyDuration].resource.subject only Reference(BePatient)
* entry[pregnancyDuration].resource.subject ^short = "The child that is the subject of this document"
//* entry[pregnancyDuration].resource.focus MS
//* entry[pregnancyDuration].resource.focus only Reference(RelatedPerson)
//* entry[pregnancyDuration].resource.focus ^short = "The mother (RelatedPerson)"
* entry[pregnancyDuration].resource.bodySite ..0
* entry[pregnancyDuration].resource.component ..0
* entry[pregnancyDuration].resource.value[x] only Quantity
* entry[pregnancyDuration].resource.valueQuantity ^short = "Duration in weeks"
* entry[pregnancyDuration].resource.valueQuantity.unit = "weeks"
* entry[pregnancyDuration].resource.valueQuantity.code = #wk
* entry[pregnancyDuration] MS

// CMV infection during pregnancy (SNOMED 28944009 - Infection caused by Cytomegalovirus)
// The optional focus is the mother (RelatedPerson), as CMV infection is observed on the mother
* entry[pregnancyCMVInfection] ^short = "Whether CMV infection occurred during pregnancy"
* entry[pregnancyCMVInfection].resource 1..
* entry[pregnancyCMVInfection].resource ^short = "Observation for CMV infection during pregnancy"
* entry[pregnancyCMVInfection].resource only BeClinicalObservation
* entry[pregnancyCMVInfection].resource.code = $sct#28944009 "CMV - Cytomegalovirus infection"
* entry[pregnancyCMVInfection].resource.code ^short = "CMV infection"
* entry[pregnancyCMVInfection].resource.subject only Reference(BePatient)
* entry[pregnancyCMVInfection].resource.subject ^short = "The child that is the subject of this document"
//* entry[pregnancyCMVInfection].resource.focus 0..1 MS
//* entry[pregnancyCMVInfection].resource.focus only Reference(RelatedPerson)
//* entry[pregnancyCMVInfection].resource.focus ^short = "The mother (RelatedPerson)"
* entry[pregnancyCMVInfection].resource.bodySite ..0
* entry[pregnancyCMVInfection].resource.component ..0
* entry[pregnancyCMVInfection].resource.value[x] only boolean
* entry[pregnancyCMVInfection].resource.valueBoolean ^short = "Whether CMV infection was present"
* entry[pregnancyCMVInfection] MS

// Bacterial meningitis (SNOMED 95883001 - Bacterial meningitis)
* entry[pregnancyBacterialMeningitis] ^short = "Whether bacterial meningitis occurred"
* entry[pregnancyBacterialMeningitis].resource 1..
* entry[pregnancyBacterialMeningitis].resource ^short = "Observation for bacterial meningitis"
* entry[pregnancyBacterialMeningitis].resource only BeClinicalObservation
* entry[pregnancyBacterialMeningitis].resource.code = $sct#95883001 "Bacterial meningitis"
* entry[pregnancyBacterialMeningitis].resource.code ^short = "Bacterial meningitis"
* entry[pregnancyBacterialMeningitis].resource.subject only Reference(BePatient)
* entry[pregnancyBacterialMeningitis].resource.subject ^short = "The child that is the subject of this document"
//* entry[pregnancyBacterialMeningitis].resource.focus MS
//* entry[pregnancyBacterialMeningitis].resource.focus only Reference(RelatedPerson)
//* entry[pregnancyBacterialMeningitis].resource.focus ^short = "The mother (RelatedPerson)"
* entry[pregnancyBacterialMeningitis].resource.bodySite ..0
* entry[pregnancyBacterialMeningitis].resource.component ..0
* entry[pregnancyBacterialMeningitis].resource.value[x] only boolean
* entry[pregnancyBacterialMeningitis].resource.valueBoolean ^short = "Whether bacterial meningitis was present"
* entry[pregnancyBacterialMeningitis] MS

// Neonatal hearing screening (SNOMED 102972004 - Brain stem auditory evoked potential, function)
* entry[neonatalHearingScreening] ^short = "Overall neonatal hearing screening result"
* entry[neonatalHearingScreening].resource 1..
* entry[neonatalHearingScreening].resource ^short = "Observation for overall neonatal hearing screening"
* entry[neonatalHearingScreening].resource only BeClinicalObservation
* entry[neonatalHearingScreening].resource.code 1.. MS
* entry[neonatalHearingScreening].resource.code = $sct#102972004 "Brain stem auditory evoked potential, function"
* entry[neonatalHearingScreening].resource.code ^short = "Hearing screening test code"
* entry[neonatalHearingScreening].resource.subject 1..1 MS
* entry[neonatalHearingScreening].resource.subject only Reference(BePatient)
* entry[neonatalHearingScreening].resource.subject ^short = "The child that is the subject of this document"
* entry[neonatalHearingScreening].resource.effective[x] only dateTime
* entry[neonatalHearingScreening].resource.effectiveDateTime 1..1 MS
* entry[neonatalHearingScreening].resource.component ..0
* entry[neonatalHearingScreening].resource.value[x] only CodeableConcept
* entry[neonatalHearingScreening].resource.valueCodeableConcept 1..1 MS
* entry[neonatalHearingScreening].resource.valueCodeableConcept ^short = "normal result | abnormal result | invalid result | test not done"
* entry[neonatalHearingScreening].resource.valueCodeableConcept from VSNeonatalHearingScreeningResults
* entry[neonatalHearingScreening] MS

// Neonatal hearing screening - left ear (same code + bodySite for laterality)
* entry[neonatalHearingScreeningLeft] ^short = "Hearing screening result for the left ear"
* entry[neonatalHearingScreeningLeft].resource 1..
* entry[neonatalHearingScreeningLeft].resource ^short = "Observation for hearing screening - left ear"
* entry[neonatalHearingScreeningLeft].resource only BeClinicalObservation
* entry[neonatalHearingScreeningLeft].resource.code 1.. MS
* entry[neonatalHearingScreeningLeft].resource.code = $sct#102972004 "Brain stem auditory evoked potential, function"
* entry[neonatalHearingScreeningLeft].resource.code ^short = "Hearing screening test code"
// Alternative: pre-coordinated bodySite: * entry[neonatalHearingScreeningLeft].resource.bodySite = $sct#89644007 "Structure of left ear"
* entry[neonatalHearingScreeningLeft].resource.bodySite = $sct#117590005 "Ear structure"
* entry[neonatalHearingScreeningLeft].resource.bodySite ^short = "Left ear"
* entry[neonatalHearingScreeningLeft].resource.bodySite.extension[laterality] 1..1
* entry[neonatalHearingScreeningLeft].resource.bodySite.extension[laterality].valueCoding = $sct#7771000 "Left"
* entry[neonatalHearingScreeningLeft].resource.subject 1..1 MS
* entry[neonatalHearingScreeningLeft].resource.subject only Reference(BePatient)
* entry[neonatalHearingScreeningLeft].resource.subject ^short = "The child that is the subject of this document"
* entry[neonatalHearingScreeningLeft].resource.effective[x] only dateTime
* entry[neonatalHearingScreeningLeft].resource.effectiveDateTime 1..1 MS
* entry[neonatalHearingScreeningLeft].resource.component ..0
* entry[neonatalHearingScreeningLeft].resource.value[x] only CodeableConcept
* entry[neonatalHearingScreeningLeft].resource.valueCodeableConcept 1..1 MS
* entry[neonatalHearingScreeningLeft].resource.valueCodeableConcept ^short = "normal result | abnormal result | invalid result | test not done"
* entry[neonatalHearingScreeningLeft].resource.valueCodeableConcept from VSNeonatalHearingScreeningResults
* entry[neonatalHearingScreeningLeft] MS

// Neonatal hearing screening - right ear (same code + bodySite for laterality)
* entry[neonatalHearingScreeningRight] ^short = "Hearing screening result for the right ear"
* entry[neonatalHearingScreeningRight].resource 1..
* entry[neonatalHearingScreeningRight].resource ^short = "Observation for hearing screening - right ear"
* entry[neonatalHearingScreeningRight].resource only BeClinicalObservation
* entry[neonatalHearingScreeningRight].resource.code 1.. MS
* entry[neonatalHearingScreeningRight].resource.code = $sct#102972004 "Brain stem auditory evoked potential, function"
* entry[neonatalHearingScreeningRight].resource.code ^short = "Hearing screening test code"
// Alternative: pre-coordinated bodySite: * entry[neonatalHearingScreeningRight].resource.bodySite = $sct#25577004 "Structure of right ear"
* entry[neonatalHearingScreeningRight].resource.bodySite = $sct#117590005 "Ear structure"
* entry[neonatalHearingScreeningRight].resource.bodySite ^short = "Right ear"
* entry[neonatalHearingScreeningRight].resource.bodySite.extension[laterality] 1..1
* entry[neonatalHearingScreeningRight].resource.bodySite.extension[laterality].valueCoding = $sct#24028007 "Right"
* entry[neonatalHearingScreeningRight].resource.subject 1..1 MS
* entry[neonatalHearingScreeningRight].resource.subject only Reference(BePatient)
* entry[neonatalHearingScreeningRight].resource.subject ^short = "The child that is the subject of this document"
* entry[neonatalHearingScreeningRight].resource.effective[x] only dateTime
* entry[neonatalHearingScreeningRight].resource.effectiveDateTime 1..1 MS
* entry[neonatalHearingScreeningRight].resource.component ..0
* entry[neonatalHearingScreeningRight].resource.value[x] only CodeableConcept
* entry[neonatalHearingScreeningRight].resource.valueCodeableConcept 1..1 MS
* entry[neonatalHearingScreeningRight].resource.valueCodeableConcept ^short = "normal result | abnormal result | invalid result | test not done"
* entry[neonatalHearingScreeningRight].resource.valueCodeableConcept from VSNeonatalHearingScreeningResults
* entry[neonatalHearingScreeningRight] MS

// Severe head trauma during delivery (SNOMED 127296001 - Intracranial injury)
* entry[severeHeadTrauma] ^short = "Whether severe head trauma occurred during delivery"
* entry[severeHeadTrauma].resource 1..
* entry[severeHeadTrauma].resource ^short = "Observation for severe head trauma during delivery"
* entry[severeHeadTrauma].resource only BeClinicalObservation
* entry[severeHeadTrauma].resource.code = $sct#127296001 "Intracranial injury"
* entry[severeHeadTrauma].resource.code ^short = "Intracranial injury"
* entry[severeHeadTrauma].resource.subject only Reference(BePatient)
* entry[severeHeadTrauma].resource.subject ^short = "The child that is the subject of this document"
* entry[severeHeadTrauma].resource.bodySite ..0
* entry[severeHeadTrauma].resource.component ..0
* entry[severeHeadTrauma].resource.value[x] only boolean
* entry[severeHeadTrauma].resource.valueBoolean ^short = "Whether severe head trauma was present"
* entry[severeHeadTrauma] MS

// Eye screening (SNOMED 363926002 - Eye/vision observable)
* entry[eyeScreening] ^short = "Eye screening result"
* entry[eyeScreening].resource 1..
* entry[eyeScreening].resource ^short = "Observation for eye screening result"
* entry[eyeScreening].resource only BeClinicalObservation
* entry[eyeScreening].resource.code = $sct#363926002 "Eye/vision observable"
* entry[eyeScreening].resource.code ^short = "Eye/vision screening"
* entry[eyeScreening].resource.subject only Reference(BePatient)
* entry[eyeScreening].resource.subject ^short = "The child that is the subject of this document"
* entry[eyeScreening].resource.bodySite ..0
* entry[eyeScreening].resource.component ..0
* entry[eyeScreening].resource.value[x] only CodeableConcept
* entry[eyeScreening].resource.valueCodeableConcept ^short = "normal result | abnormal result | invalid result | test not done"
* entry[eyeScreening].resource.valueCodeableConcept from VSEyeScreeningOutcome
* entry[eyeScreening] MS

// Inspection pupil abnormal (SNOMED 274093008 - Abnormal pupil)
* entry[inspectionPupilAbnormal] ^short = "Whether pupil inspection was abnormal"
* entry[inspectionPupilAbnormal].resource 1..
* entry[inspectionPupilAbnormal].resource ^short = "Observation for abnormal pupil inspection"
* entry[inspectionPupilAbnormal].resource only BeClinicalObservation
* entry[inspectionPupilAbnormal].resource.code 1.. MS
* entry[inspectionPupilAbnormal].resource.code = $sct#274093008 "Abnormal pupil"
* entry[inspectionPupilAbnormal].resource.code ^short = "Abnormal pupil finding"
* entry[inspectionPupilAbnormal].resource.subject only Reference(BePatient)
* entry[inspectionPupilAbnormal].resource.subject ^short = "The child that is the subject of this document"
* entry[inspectionPupilAbnormal].resource.bodySite ..0
* entry[inspectionPupilAbnormal].resource.component ..0
* entry[inspectionPupilAbnormal].resource.value[x] only boolean
* entry[inspectionPupilAbnormal].resource.valueBoolean ^short = "Whether pupil abnormality was found"
* entry[inspectionPupilAbnormal] MS

// Eye movement and position - left eye (SNOMED 31763002 - Ocular motility observable + bodySite)
* entry[eyeMovementAndPositionLeft] ^short = "Eye movement and position finding - left eye"
* entry[eyeMovementAndPositionLeft].resource 1..
* entry[eyeMovementAndPositionLeft].resource ^short = "Observation for eye movement and position - left eye"
* entry[eyeMovementAndPositionLeft].resource only BeClinicalObservation
* entry[eyeMovementAndPositionLeft].resource.code 1.. MS
* entry[eyeMovementAndPositionLeft].resource.code = $sct#31763002 "Ocular motility observable"
* entry[eyeMovementAndPositionLeft].resource.code ^short = "Ocular motility"
* entry[eyeMovementAndPositionLeft].resource.subject only Reference(BePatient)
* entry[eyeMovementAndPositionLeft].resource.subject ^short = "The child that is the subject of this document"
// Alternative: pre-coordinated bodySite: * entry[eyeMovementAndPositionLeft].resource.bodySite = $sct#8966001 "Structure of left eye"
* entry[eyeMovementAndPositionLeft].resource.bodySite = $sct#81745001 "Structure of eye proper"
* entry[eyeMovementAndPositionLeft].resource.bodySite ^short = "Left eye"
* entry[eyeMovementAndPositionLeft].resource.bodySite.extension[laterality] 1..1
* entry[eyeMovementAndPositionLeft].resource.bodySite.extension[laterality].valueCoding = $sct#7771000 "Left"
* entry[eyeMovementAndPositionLeft].resource.component ..0
* entry[eyeMovementAndPositionLeft].resource.value[x] only CodeableConcept
* entry[eyeMovementAndPositionLeft].resource.valueCodeableConcept ^short = "intermittent strabismus | continuous strabismus | nystagmus present"
* entry[eyeMovementAndPositionLeft].resource.valueCodeableConcept from VSEyeMovementAndPosition
* entry[eyeMovementAndPositionLeft] MS

// Eye movement and position - right eye (SNOMED 31763002 - Ocular motility observable + bodySite)
* entry[eyeMovementAndPositionRight] ^short = "Eye movement and position finding - right eye"
* entry[eyeMovementAndPositionRight].resource 1..
* entry[eyeMovementAndPositionRight].resource ^short = "Observation for eye movement and position - right eye"
* entry[eyeMovementAndPositionRight].resource only BeClinicalObservation
* entry[eyeMovementAndPositionRight].resource.code 1.. MS
* entry[eyeMovementAndPositionRight].resource.code = $sct#31763002 "Ocular motility observable"
* entry[eyeMovementAndPositionRight].resource.code ^short = "Ocular motility"
* entry[eyeMovementAndPositionRight].resource.subject only Reference(BePatient)
* entry[eyeMovementAndPositionRight].resource.subject ^short = "The child that is the subject of this document"
// Alternative: pre-coordinated bodySite: * entry[eyeMovementAndPositionRight].resource.bodySite = $sct#18944008 "Structure of right eye"
* entry[eyeMovementAndPositionRight].resource.bodySite = $sct#81745001 "Structure of eye proper"
* entry[eyeMovementAndPositionRight].resource.bodySite ^short = "Right eye"
* entry[eyeMovementAndPositionRight].resource.bodySite.extension[laterality] 1..1
* entry[eyeMovementAndPositionRight].resource.bodySite.extension[laterality].valueCoding = $sct#24028007 "Right"
* entry[eyeMovementAndPositionRight].resource.component ..0
* entry[eyeMovementAndPositionRight].resource.value[x] only CodeableConcept
* entry[eyeMovementAndPositionRight].resource.valueCodeableConcept ^short = "intermittent strabismus | continuous strabismus | nystagmus present"
* entry[eyeMovementAndPositionRight].resource.valueCodeableConcept from VSEyeMovementAndPosition
* entry[eyeMovementAndPositionRight] MS

// Eye remarks (free text)
* entry[eyeRemarks] ^short = "Free text remarks about the eyes"
* entry[eyeRemarks].resource 1..
* entry[eyeRemarks].resource ^short = "Observation for free text eye remarks"
* entry[eyeRemarks].resource only BeClinicalObservation
* entry[eyeRemarks].resource.code 1.. MS
* entry[eyeRemarks].resource.code = CSChildReportDocumentation#eye-remarks-observation
* entry[eyeRemarks].resource.code ^short = "Eye remarks"
* entry[eyeRemarks].resource.subject only Reference(BePatient)
* entry[eyeRemarks].resource.subject ^short = "The child that is the subject of this document"
* entry[eyeRemarks].resource.bodySite ..0
* entry[eyeRemarks].resource.component ..0
* entry[eyeRemarks].resource.value[x] only string
* entry[eyeRemarks].resource.valueString ^short = "Free text eye remarks"
* entry[eyeRemarks].resource.valueString MS
* entry[eyeRemarks] MS

// In treatment with ophthalmologist
* entry[inTreatmentWithOphthalmologist] ^short = "Treatment the patient has followed with an ophthalmologist"
* entry[inTreatmentWithOphthalmologist].resource 1..
* entry[inTreatmentWithOphthalmologist].resource ^short = "Observation for treatment with an ophthalmologist"
* entry[inTreatmentWithOphthalmologist].resource only BeClinicalObservation
* entry[inTreatmentWithOphthalmologist].resource.code = CSChildReportDocumentation#ophthalmologist-treatment-observation
* entry[inTreatmentWithOphthalmologist].resource.code ^short = "In treatment with ophthalmologist"
* entry[inTreatmentWithOphthalmologist].resource.subject only Reference(BePatient)
* entry[inTreatmentWithOphthalmologist].resource.subject ^short = "The child that is the subject of this document"
* entry[inTreatmentWithOphthalmologist].resource.bodySite ..0
* entry[inTreatmentWithOphthalmologist].resource.component ..0
* entry[inTreatmentWithOphthalmologist].resource.value[x] only CodeableConcept
* entry[inTreatmentWithOphthalmologist].resource.valueCodeableConcept ^short = "prescription of spectacles | application of eye patch | surgical procedure on eye proper | (extensible)"
* entry[inTreatmentWithOphthalmologist].resource.valueCodeableConcept from VSOphthalmologistTreatments (extensible)
* entry[inTreatmentWithOphthalmologist] MS

// Presented form - PDF rendition of the child report (inline data or remote URL)
* entry[presentedForm] ^short = "PDF rendition of the child report (inline data or remote URL)"
* entry[presentedForm].resource 1..
* entry[presentedForm].resource ^short = "DocumentReference pointing to the PDF rendition"
* entry[presentedForm].resource only BeDocumentReference
* entry[presentedForm].resource.status = #current
* entry[presentedForm].resource.content 1..1 MS
* entry[presentedForm].resource.content.attachment 1..1 MS
* entry[presentedForm].resource.content.attachment.contentType = #application/pdf
* entry[presentedForm].resource.content.attachment.contentType ^short = "application/pdf"
* entry[presentedForm].resource.content.attachment.data 0..1 MS
* entry[presentedForm].resource.content.attachment.data ^short = "Inline (base64) PDF content - use for embedded delivery"
* entry[presentedForm].resource.content.attachment.url 0..1 MS
* entry[presentedForm].resource.content.attachment.url ^short = "Link to the PDF - use for remote delivery"
* entry[presentedForm] MS
