Logical: ChildReport
//Name: "Child Report"
Title: "Child Report Logical Model"
Description: "A logical model representing child report data elements."

* author 1..1 Reference(Practitioner or Organization) "Child report author" "A child report element has one author. This author can be identified as an individual, as an organization, or as an individual within an organization."

* pdfAttachment 1..1 base64Binary "PDF attachment" "A base64 encoded PDF file with the remaining child report information (biometric data, charts, etc.)."

* pregnancyDetails 0..1 BackboneElement "Pregnancy details" "Details about the pregnancy."
  * durationOfPregnancy 0..1 integer "Duration of pregnancy" "Total length of pregnancy in weeks."
  * pregnancyCMVInfection 0..1 boolean "Pregnancy CMV infection" "Indicates whether CMV infection occurred during pregnancy."

  * bacterialMeningitis 0..1 boolean "Bacterial meningitis" "Indicates whether bacterial meningitis occurred during pregnancy."

* neonatalHearingScreening 0..1 BackboneElement "Neonatal hearing screening" "Details about the neonatal hearing screening."
  * resultsLeft 0..1 code "Result of neonatal hearing screening (left ear)" "Neonatal hearing screening result for the left ear."
  * resultsLeft from VSNeonatalHearingScreeningResults

  * resultsRight 0..1 code "Result of neonatal hearing screening (right ear)" "Neonatal hearing screening result for the right ear."
  * resultsRight from VSNeonatalHearingScreeningResults

  * refusalOfHearingTest 0..1 boolean "Refusal of hearing test" "Indicates whether the hearing test was refused."


* severeHeadTrauma 0..1 boolean "Severe head trauma" "Indicates whether severe head trauma was identified."

* dateOfEyeScreeningBefore2Years 0..1 date "Date of eye screening (before 2 years)" "The date of eye screening taken before the age of 2 years."

* resultOfEyeScreeningBefore2Years 0..1 code "Result of eye screening (before 2 years)" "Result of eye screening taken before the age of 2 years."
* resultOfEyeScreeningBefore2Years from VSEyeScreeningResults

* dateOfEyeScreeningAfter2Years 0..1 date "Date of eye screening (after 2 years)" "The date of eye screening taken after the age of 2 years."

* resultOfEyeScreeningAfter2Years 0..1 code "Result of eye screening (after 2 years)" "Result of eye screening taken after the age of 2 years."
* resultOfEyeScreeningAfter2Years from VSEyeScreeningResults

* inspectionPupilAbnormal 0..1 boolean "Inspection pupil abnormal" "Indicates whether inspection of the pupil was abnormal."

* eyeMovementAndPosition 0..* code "Eye movement and position" "Observations on eye movement and position."
* eyeMovementAndPosition from VSEyeMovementAndPosition

* eyeRemarks 0..1 string  "Eye remarks" "Free text remarks about the eyes."

* inTreatmentWithOphthalmologist 0..* code "In treatment with ophthalmologist" "Details about treatment with an ophthalmologist."
* inTreatmentWithOphthalmologist from VSOphthalmologistTreatments


ValueSet: VSEyeScreeningResults
Id: eye-screening-results
* ^url = "http://example.org/fhir/ValueSet/eye-screening-results"
* include codes from system CSEyeScreeningResults

CodeSystem: CSEyeScreeningResults
* ^url = "http://example.org/fhir/CodeSystem/eye-screening-results"
* #refer
* #pass
* #measurement-not-possible
* #child-not-testable

ValueSet: VSNeonatalHearingScreeningResults
* ^url = "http://example.org/fhir/ValueSet/neonatal-hearing-screening-results"
* include codes from system CSNeonatalHearingScreeningResults

CodeSystem: CSNeonatalHearingScreeningResults
* ^url = "http://example.org/fhir/CodeSystem/neonatal-hearing-screening-results"
* #pass
* #refer
* #aborted-test
* #not-performed


ValueSet: VSEyeMovementAndPosition
* ^url = "http://example.org/fhir/ValueSet/eye-movement-and-position"
* include codes from system CSEyeMovementAndPosition

CodeSystem: CSEyeMovementAndPosition
* ^url = "http://example.org/fhir/CodeSystem/eye-movement-and-position"
* #intermittent-strabismus
* #continuous-strabismus
* #nystagmus

ValueSet: VSOphthalmologistTreatments
* ^url = "http://example.org/fhir/ValueSet/ophthalmologist-treatments"
* include codes from system CSOphthalmologistTreatments

CodeSystem: CSOphthalmologistTreatments
* ^url = "http://example.org/fhir/CodeSystem/ophthalmologist-treatments"
* #glasses
* #occlusion
* #operation
* #other-treatment
