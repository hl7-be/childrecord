Logical: ChildReport
//Name: "Child Report"
Title: "Child Report Logical Model"
Description: "A logical model representing child report data elements."

* subject 1..1 Reference(Patient) "Child that the report is about"

* author 1..1 Reference(Practitioner or Organization) "Child report author" "A child report element has one author. This author can be identified as an individual, as an organization, or as an individual within an organization."

* pdfAttachment 1..1 base64Binary "PDF attachment" "A base64 encoded PDF file with the remaining child report information (biometric data, charts, etc.)."

* pregnancyDetails 0..1 BackboneElement "Pregnancy details" "Details about the pregnancy."
  * durationOfPregnancy 0..1 integer "Duration of pregnancy" "Total length of pregnancy in weeks."
  * pregnancyCMVInfection 0..1 boolean "Pregnancy CMV infection" "Indicates whether CMV infection occurred during pregnancy."

  * bacterialMeningitis 0..1 boolean "Bacterial meningitis" "Indicates whether bacterial meningitis occurred during pregnancy."


* neonatalHearingScreening 0..* BackboneElement "Neonatal hearing screening" "Details about the neonatal hearing screening."
  * date 1..1 date "Date of neonatal hearing screening" "The date of neonatal hearing screening."
  * resultsLeft 1..1 code "Result of neonatal hearing screening (left ear)" "Neonatal hearing screening result for the left ear."
  * resultsLeft from VSNeonatalHearingScreeningResults
  * resultsRight 1..1 code "Result of neonatal hearing screening (right ear)" "Neonatal hearing screening result for the right ear."
  * resultsRight from VSNeonatalHearingScreeningResults

* refusalOfHearingTest 0..1 boolean "Refusal of hearing test" "Indicates whether the hearing test was refused."

* severeHeadTrauma 0..1 boolean "Severe head trauma" "Indicates whether severe head trauma was identified."

* eyeScreening 0..* BackboneElement "Eye screening" "Details about the eye screening."
  * date 1..1 date "Date of eye screening" "The date of eye screening."
  * result 1..1 code "Result of eye screening" "Result of eye screening."
  * result from VSEyeScreeningResults
  * ageRange 1..1 code "Age of eye screening" "Age of eye screening."
  * ageRange from VSEyeScreeningAgeRange


* eyeResults 0..* BackboneElement "Eye" "Details about the eyes."
  * observationDate 1..1 date "Date of Inspection pupil abnormal" "Details about the inspection of the pupil."
  * inspectionPupilAbnormal 0..1 boolean "Inspection pupil abnormal"
  * eyeMovementAndPosition 0..* code "Result of testing eye movement and position" 
  * eyeMovementAndPosition from VSEyeMovementAndPosition
  * eyeRemarks 0..1 string "Eye remarks" "Free text remarks about the eyes."



//* inspectionPupilAbnormalDate 0..* date "Date(s) in which inspection of the pupil was abnormal" "Date(s) in which the inspection of the pupil had abnormal findings."
//  * result 1..1 boolean "Inspection pupil abnormal" "Indicates whether inspection of the pupil was abnormal."
//  * date 1..1 date "Inspection pupil abnormal" "Indicates whether inspection of the pupil was abnormal."
//  * note 1..1 string "Inspection pupil abnormal" "Indicates whether inspection of the pupil was abnormal."


//* eyeRemarks 0..1 string  "Eye remarks" "Free text remarks about the eyes."

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



CodeSystem: CSEyeScreeningAgeRange
* ^url = "http://example.org/fhir/CodeSystem/neonatal-eye-screening-age-range"
* #0-2 "From birth to 2 years"
* #2-3 "Between 2 and 3 years"


ValueSet: VSEyeScreeningAgeRange
* ^url = "http://example.org/fhir/ValueSet/neonatal-eye-screening-age-range"
* include codes from system CSEyeMovementAndPosition