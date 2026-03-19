Alias: $sct = http://snomed.info/sct
Alias: $v3-act = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $laterality = https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality
Alias: $cs-doc = https://www.ehealth.fgov.be/standards/fhir/terminology/CodeSystem/cs-child-report-documentation

// ============================================================
// Bundle - the Child Report document
// ============================================================

Instance: child-report-example
InstanceOf: BeVlChildReport
Usage: #example
Title: "Example Child Report"
Description: "A complete example of a Child Report (KindRapport) document for a newborn."

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
* type = #document
* timestamp = "2026-03-15T10:30:00+01:00"

* entry[composition].fullUrl = "urn:uuid:composition-1"
* entry[composition].resource = composition-1

* entry[patient].fullUrl = "urn:uuid:patient-baby"
* entry[patient].resource = patient-baby

* entry[relatedPerson].fullUrl = "urn:uuid:mother-1"
* entry[relatedPerson].resource = mother-1

* entry[pregnancyDuration].fullUrl = "urn:uuid:obs-pregnancy-duration"
* entry[pregnancyDuration].resource = obs-pregnancy-duration

* entry[pregnancyCMVInfection].fullUrl = "urn:uuid:obs-cmv"
* entry[pregnancyCMVInfection].resource = obs-cmv

* entry[pregnancyBacterialMeningitis].fullUrl = "urn:uuid:obs-meningitis"
* entry[pregnancyBacterialMeningitis].resource = obs-meningitis

* entry[neonatalHearingScreening][0].fullUrl = "urn:uuid:obs-hearing-overall"
* entry[neonatalHearingScreening][0].resource = obs-hearing-overall

* entry[neonatalHearingScreeningLeft].fullUrl = "urn:uuid:obs-hearing-left"
* entry[neonatalHearingScreeningLeft].resource = obs-hearing-left

* entry[neonatalHearingScreeningRight].fullUrl = "urn:uuid:obs-hearing-right"
* entry[neonatalHearingScreeningRight].resource = obs-hearing-right

* entry[severeHeadTrauma].fullUrl = "urn:uuid:obs-head-trauma"
* entry[severeHeadTrauma].resource = obs-head-trauma

* entry[eyeScreening][0].fullUrl = "urn:uuid:obs-eye-screening"
* entry[eyeScreening][0].resource = obs-eye-screening

* entry[inspectionPupilAbnormal].fullUrl = "urn:uuid:obs-pupil"
* entry[inspectionPupilAbnormal].resource = obs-pupil

* entry[eyeMovementAndPositionLeft][0].fullUrl = "urn:uuid:obs-eye-movement-left"
* entry[eyeMovementAndPositionLeft][0].resource = obs-eye-movement-left

* entry[eyeMovementAndPositionRight][0].fullUrl = "urn:uuid:obs-eye-movement-right"
* entry[eyeMovementAndPositionRight][0].resource = obs-eye-movement-right

* entry[eyeRemarks].fullUrl = "urn:uuid:obs-eye-remarks"
* entry[eyeRemarks].resource = obs-eye-remarks

* entry[inTreatmentWithOphthalmologist][0].fullUrl = "urn:uuid:obs-ophthalmologist"
* entry[inTreatmentWithOphthalmologist][0].resource = obs-ophthalmologist


// ============================================================
// Composition
// ============================================================

Instance: composition-1
InstanceOf: BeChildReportComposition
Usage: #inline
Title: "Example Composition"
Description: "Composition for the example child report."

* status = #final
* type = http://loinc.org#11503-0 "Medical records"
* subject = Reference(urn:uuid:patient-baby)
* date = "2026-03-15"
* author = Reference(urn:uuid:practitioner-1)
* title = "KindRapport - Child Report"

* section[pregnancyDetails].title = "Pregnancy Details"
* section[pregnancyDetails].code = $cs-doc#pregnancy-details
* section[pregnancyDetails].text.status = #generated
* section[pregnancyDetails].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy duration: 38 weeks. No CMV infection. No bacterial meningitis.</div>"
* section[pregnancyDetails].entry[0] = Reference(urn:uuid:obs-pregnancy-duration)
* section[pregnancyDetails].entry[1] = Reference(urn:uuid:obs-cmv)
* section[pregnancyDetails].entry[2] = Reference(urn:uuid:obs-meningitis)

* section[neonatalHearingScreening].title = "Neonatal Hearing Screening"
* section[neonatalHearingScreening].code = $cs-doc#neonatal-hearing-screening
* section[neonatalHearingScreening].text.status = #generated
* section[neonatalHearingScreening].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hearing screening: normal result. Left ear: normal. Right ear: normal.</div>"
* section[neonatalHearingScreening].entry[0] = Reference(urn:uuid:obs-hearing-overall)
* section[neonatalHearingScreening].entry[1] = Reference(urn:uuid:obs-hearing-left)
* section[neonatalHearingScreening].entry[2] = Reference(urn:uuid:obs-hearing-right)

* section[severeHeadTrauma].title = "Severe Head Trauma"
* section[severeHeadTrauma].code = $cs-doc#severe-head-trauma
* section[severeHeadTrauma].text.status = #generated
* section[severeHeadTrauma].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No severe head trauma during delivery.</div>"
* section[severeHeadTrauma].entry[0] = Reference(urn:uuid:obs-head-trauma)

* section[eyeScreening].title = "Eye Screening"
* section[eyeScreening].code = $cs-doc#eye-screening
* section[eyeScreening].text.status = #generated
* section[eyeScreening].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Eye screening: normal result.</div>"
* section[eyeScreening].entry[0] = Reference(urn:uuid:obs-eye-screening)

* section[eyeResults].title = "Eye Results"
* section[eyeResults].code = $cs-doc#eye-results
* section[eyeResults].text.status = #generated
* section[eyeResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pupil inspection normal. Eye movement normal both eyes. Remark: slight redness observed, no treatment needed.</div>"
* section[eyeResults].entry[0] = Reference(urn:uuid:obs-pupil)
* section[eyeResults].entry[1] = Reference(urn:uuid:obs-eye-movement-left)
* section[eyeResults].entry[2] = Reference(urn:uuid:obs-eye-movement-right)
* section[eyeResults].entry[3] = Reference(urn:uuid:obs-eye-remarks)

* section[inTreatmentWithOphthalmologist].title = "In Treatment with Ophthalmologist"
* section[inTreatmentWithOphthalmologist].code = $cs-doc#in-treatment-with-ophthalmologist
* section[inTreatmentWithOphthalmologist].text.status = #generated
* section[inTreatmentWithOphthalmologist].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Prescription of spectacles.</div>"
* section[inTreatmentWithOphthalmologist].entry[0] = Reference(urn:uuid:obs-ophthalmologist)


// ============================================================
// Patient - the child
// ============================================================

Instance: patient-baby
InstanceOf: BePatient
Usage: #inline
Title: "Baby Janssens"
Description: "The child that is the subject of this report."

* identifier[0].system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier[0].value = "26031512345"
* name[0].family = "Janssens"
* name[0].given[0] = "Emma"
* gender = #female
* birthDate = "2026-03-01"


// ============================================================
// RelatedPerson - the mother
// ============================================================

Instance: mother-1
InstanceOf: RelatedPerson
Usage: #inline
Title: "Mother of Baby Janssens"
Description: "The mother of the child."

* patient = Reference(urn:uuid:patient-baby)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "mother"
* name[0].family = "Peeters"
* name[0].given[0] = "Marie"


// ============================================================
// Observations - Pregnancy Details
// ============================================================

Instance: obs-pregnancy-duration
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Pregnancy Duration"
Description: "Duration of pregnancy: 38 weeks."

* status = #final
* code = $sct#412726003 "Length of gestation at birth"
* subject = Reference(urn:uuid:patient-baby)
* focus = Reference(urn:uuid:mother-1)
* effectiveDateTime = "2026-03-01"
* valueQuantity.value = 38
* valueQuantity.unit = "weeks"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #wk


Instance: obs-cmv
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "CMV Infection"
Description: "No CMV infection during pregnancy."

* status = #final
* code = $sct#28944009 "Infection caused by Cytomegalovirus"
* subject = Reference(urn:uuid:patient-baby)
* focus = Reference(urn:uuid:mother-1)
* effectiveDateTime = "2026-03-01"
* valueBoolean = false


Instance: obs-meningitis
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Bacterial Meningitis"
Description: "No bacterial meningitis."

* status = #final
* code = $sct#95883001 "Bacterial meningitis"
* subject = Reference(urn:uuid:patient-baby)
* focus = Reference(urn:uuid:mother-1)
* effectiveDateTime = "2026-03-01"
* valueBoolean = false


// ============================================================
// Observations - Neonatal Hearing Screening
// ============================================================

Instance: obs-hearing-overall
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Hearing Screening Overall"
Description: "Overall hearing screening result: normal."

* status = #final
* code = $sct#102972004 "Brain stem auditory evoked potential, function"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-03"
* valueCodeableConcept = $sct#280413001 "Normal result"


Instance: obs-hearing-left
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Hearing Screening Left Ear"
Description: "Left ear hearing screening result: normal."

* status = #final
* code = $sct#102972004 "Brain stem auditory evoked potential, function"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-03"
* bodySite = $sct#117590005 "Ear structure"
* bodySite.extension[$laterality].valueCoding = $sct#7771000 "Left"
* valueCodeableConcept = $sct#280413001 "Normal result"


Instance: obs-hearing-right
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Hearing Screening Right Ear"
Description: "Right ear hearing screening result: normal."

* status = #final
* code = $sct#102972004 "Brain stem auditory evoked potential, function"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-03"
* bodySite = $sct#117590005 "Ear structure"
* bodySite.extension[$laterality].valueCoding = $sct#24028007 "Right"
* valueCodeableConcept = $sct#280413001 "Normal result"


// ============================================================
// Observations - Severe Head Trauma
// ============================================================

Instance: obs-head-trauma
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Severe Head Trauma"
Description: "No severe head trauma during delivery."

* status = #final
* code = $sct#127296001 "Intracranial injury"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-01"
* valueBoolean = false


// ============================================================
// Observations - Eye Screening
// ============================================================

Instance: obs-eye-screening
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Eye Screening"
Description: "Eye screening result: normal."

* status = #final
* code = $sct#363926002 "Eye/vision observable"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-10"
* valueCodeableConcept = $sct#280413001 "Normal result"


// ============================================================
// Observations - Eye Results
// ============================================================

Instance: obs-pupil
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Pupil Inspection"
Description: "Pupil inspection: no abnormality found."

* status = #final
* code = $sct#274093008 "Abnormal pupil"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-10"
* valueBoolean = false


Instance: obs-eye-movement-left
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Eye Movement Left"
Description: "Eye movement and position left eye: no findings."

* status = #final
* code = $sct#31763002 "Ocular motility observable"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-10"
* bodySite = $sct#81745001 "Structure of eye proper"
* bodySite.extension[$laterality].valueCoding = $sct#7771000 "Left"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"


Instance: obs-eye-movement-right
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Eye Movement Right"
Description: "Eye movement and position right eye: no findings."

* status = #final
* code = $sct#31763002 "Ocular motility observable"
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-10"
* bodySite = $sct#81745001 "Structure of eye proper"
* bodySite.extension[$laterality].valueCoding = $sct#24028007 "Right"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"


Instance: obs-eye-remarks
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Eye Remarks"
Description: "Free text remarks about the eyes."

* status = #final
* code = #eye-remarks
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-10"
* valueString = "Slight redness observed in both eyes, likely due to birth. No treatment needed."


// ============================================================
// Observations - Ophthalmologist Treatment
// ============================================================

Instance: obs-ophthalmologist
InstanceOf: BeClinicalObservation
Usage: #inline
Title: "Ophthalmologist Treatment"
Description: "In treatment with ophthalmologist: prescription of spectacles."

* status = #final
* code = #in-treatment-with-ophthalmologist
* subject = Reference(urn:uuid:patient-baby)
* effectiveDateTime = "2026-03-10"
* valueCodeableConcept = $sct#183131009 "Prescription of spectacles"
