Alias: $sct = http://snomed.info/sct

Logical: BeModelRelatedPerson
Parent: Base
Title: "Related Person"
Description: "Related Person model."
Characteristics: #can-be-target

* subject 1..1 BeModelPatient "Subject" """Patient/subject information"""
* relatedperson 1..1 BeModelPatient "Related person" """A person related to the patient/subject, such as a family member or guardian."""
* relationship 1..1 CodeableConcept "Relationship to subject" """The relationship of the related person to the patient/subject. This can include roles such as mother, father, guardian, etc."""



Logical: BeModelDocument
Parent: Base
Title: "Document model"
Description: "Base model for documents."
Characteristics: #can-be-target

* subject 1..1 BeModelPatient "Subject" """Patient/subject information"""
* documentType 1..1 CodeableConcept "Document type" """Type of the document, e.g. report, discharge letter, etc."""
* status 1..1 CodeableConcept "Status of the resource" """Status of the resource"""

* identifier 1..* Identifier "Business identifier for the document"
* author[x] 1..1 BePractitioner or BeOrganization "Author" """Author(s) by whom the resource was/were authored. Multiple authors could be provided."""
//* datetime 1..1 dateTime "Date and time of authoring/issuing" """Date and time of the issuing the document/resource by its author."""
* lastUpdate 0..1 dateTime "Date and time of the last update to the resource" """Date and time of the last update to the document/information"""
//* statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of the resource."
//* version 0..1 string "Version" """Business version of the resource."""
* presentedForm 0..* Attachment "A narrative easy-to-read representation of the full data set, e.g. PDF-version of a document"
* documentTitle 1..1 string "Document title"

* section 0..1 * "Sections"
  * subsection 0..* contentReference #BeModelDocument.section "subsection"

//* entry 0..* * "Any Content"

/* OK FROM HERE ON*/

Logical: BeModelChildReport
Parent: BeModelDocument
Title: "Child Report Logical Model"
Description: "A logical model representing child report data elements."

* subject 1..1

* subject ^short = "Child that the report is about"
* relatedPerson 1..1 BeModelRelatedPerson "Mother of the child that the report is about" "The mother of the child is the related subject in this report."
  * relationship = #mother "Role of the related subject" 

// * author 1..1 Reference(Practitioner or Organization) "Child report author" "A child report element has one author. This author can be identified as an individual, as an organization, or as an individual within an organization."

// * date 1..1 dateTime "Date of child report" "The date when the child report was created."
* lastUpdate
  * ^comment = "The date of the child report is the date when the report was created, not the date of the examination or observation. In case of reports migrated from KMEHR, the date is the date of the conversion, not the KMEHR message creation, which is unknown."

//* version - to be used from the BeDocument */

* presentedForm 1..1 
  * ^short = "Child report PDF file"
  * ^definition = "A base64 encoded PDF file with the remaining child report information (biometric data, charts, etc.)."


* pregnancyDetails 0..1 Base "Pregnancy details" "Details about the pregnancy."
//  * durationOfPregnancy 0..1 integer "Duration of pregnancy" "Total length of pregnancy in weeks."
  * durationOfPregnancy 0..1 Base "[BeObservation] The duration of pregnancy in weeks, as an observation."
    * subject 1..1 Reference "subject" // Child? or mother? // TO_DO: To validate with medical experts
    * subject ^short = "Mother"
// TO_DO: To fill this information, we will require the link between child and mother, or even link between child - pregnancy - mother     
// TO_DO: Add these in the profile as needed:
    * code 1..1 CodeableConcept "Length of gestation at birth"
    * code = $sct#412726003 "Length of gestation at birth"
 //   * subject 1..1 Reference "subject" // Child? or mother? // TO_DO: To validate with medical experts
    * valueInteger 1..1 integer "The duration of pregnancy in weeks"


  * pregnancyCMVInfection 0..1 Base "[BeObservation] Pregnancy CMV infection" "Indicates whether CMV infection occurred during pregnancy."
    * subject 1..1 Reference "subject" // Child? or mother? // TO_DO: To validate with medical experts
    * subject ^short = "Mother"
    * code 1..1 CodeableConcept "CMV infection during pregnancy"
    * code = #cmv-infection-during-pregnancy "CMV infection during pregnancy"
// TO_DO: To fill this information, we will require the link between child and mother, or even link between child - pregnancy - mother     
    * valueBoolean 1..1 boolean "Indicates whether CMV infection occurred during pregnancy." "The value indicates whether the mother had a CMV infection during pregnancy."

  * bacterialMeningitis 0..1 Base "[BeObservation] Bacterial meningitis" "Indicates whether bacterial meningitis occurred during pregnancy."
    * code 1..1 CodeableConcept "Code"
    * code = #bacterial-meningitis-during-pregnancy "bacterial meningitis during pregnancy"
    * subject 1..1 Reference "Mother" "The mother of the child is the related subject in this report."

// TO_DO: To fill this information, we will require the link between child and mother, or even link between child - pregnancy - mother
    * valueBoolean 1..1 boolean "Indicates whether bacterial meningitis occurred during pregnancy." "The value indicates whether the mother had a bacterial meningitis during pregnancy."


* neonatalHearingScreening 0..* Base "[BeObservation] Neonatal hearing screening" "Details about the neonatal hearing screening."
  * code 1..1 CodeableConcept "Code"
  * code = #neonatal-hearing-screening "Neonatal hearing screening"
  * date 1..1 date "Date of neonatal hearing screening" "The date of neonatal hearing screening."
  * subject 1..1 BeModelPatient "Child that the report is about" "The child that the report is about."

//  * component contains left 1..1 and right 1..1
  * componentLeft 0..1 Base "Left ear result" "Result of neonatal hearing screening for the left ear."
    * code 1..1 CodeableConcept "Result of neonatal hearing screening - left"
    * code = #neonatal-hearing-screening-left "Result of neonatal hearing screening (left ear)"
    * valueCode 1..1 code "Result of neonatal hearing screening (left ear)" "Neonatal hearing screening result for the left ear."
    * valueCode from VSNeonatalHearingScreeningResults
  * componentRight 0..1 Base "Right ear result" "Result of neonatal hearing screening for the right ear."
    * code 1..1 CodeableConcept "Result of neonatal hearing screening - right"
    * code = #neonatal-hearing-screening-right "Result of neonatal hearing screening (right ear)"
    * valueCode 1..1 code "Result of neonatal hearing screening (right ear)" "Neonatal hearing screening result for the right ear."
    * valueCode from VSNeonatalHearingScreeningResults 


* refusalOfHearingTest 0..1 BackboneElement "Refusal by the parents of a hearing test for the child" "Indicates whether the hearing test was refused."
  * representative 1..1 BeModelRelatedPerson "Representative" "The representative of the child, such as a parent or guardian, who refused the hearing test."
    * role 1..1 CodeableConcept "Role of the representative" "The role of the representative in the refusal of the hearing test."
//      * ^patternCodeableConcept = #parent //?? = #guardian //??
  * recordedDate 1..1 date "Date of refusal" "The date when the refusal was recorded."
  * patient 1..1 Reference(BePatient) "Child that the report is about" "The child that the report is about."
    // * ^min = 1
    // * ^short = "Child that the report is about" 
  * code 1..1 CodeableConcept "Code"
  * code = #refusal-of-hearing-test "Refusal of hearing test"   
// TO_DO: check compatibility and valuesets of PatientWill with this use case
// TO_DO: add relationship reference (Mother) in BePatientWill - missing.


* severeHeadTrauma 0..1 Base "[BeProblem] Severe head trauma" "Indicates whether severe head trauma was identified."
  * subject 1..1 Reference(BePatient) "Child that the report is about" "The child that the report is about."
  * date 1..1 date "Date of reporting the trauma."
  * code 1..1 CodeableConcept "Code"
  * code = #severe-head-trauma-during-delivery "Severe head trauma"
  * valueBoolean 1..1 boolean "Indicates whether severe head trauma was identified." "The value indicates whether severe head trauma was identified in the child."


* eyeScreening 0..* BackboneElement "[BeObservation] Eye screening" "Details about the eye screening."
  * subject 1..1 Reference(BePatient) "Child that the report is about" "The child that the report is about."
  * date 1..1 date "Date of eye screening" "The date of eye screening."
  * code 1..1 CodeableConcept "Code"
  * code = #eye-screening "Eye screening findings"
  * valueCodeableConcept 1..1 code "Result of eye screening" "Result of eye screening."
  * valueCodeableConcept from VSEyeScreeningResults
  * ageRange 1..1 code "Age of eye screening" "Age of eye screening."
  * ageRange from VSEyeScreeningAgeRange


* eyeResults 0..* Base "Eye" "Details about the eyes."
  * observationDate 1..1 date "[BeObservation] Date of Inspection pupil abnormal" "Details about the inspection of the pupil."
  * inspectionPupilAbnormal 0..1 BackboneElement "Inspection pupil abnormal" "Details about the inspection of the pupil."
    * subject 1..1 Reference(BePatient) "Child that the report is about" "The child that the report is about."
    * date 1..1 date "Date of eye screening" "The date of eye screening."
    * code 1..1 CodeableConcept "Inspection pupil abnormal"
    * code = #inspection-pupil-normal "Inspection pupil abnormal"
    * valueBoolean 1..1 boolean "Inspection pupil abnormal"
    
  * eyeMovementAndPosition 0..* BackboneElement "[BeObservation] Findings about the eye movement and position"
    * subject 1..1 Reference(BePatient) "Child that the report is about" "The child that the report is about."
    * date 1..1 date "Date of eye screening" "The date of eye screening."
    * code 1..1 CodeableConcept "Code"
    * code = #eye-movement-and-position "Eye movement and position" 
    * valueCode 1..1 code "Result of testing eye movement and position" "Result of testing eye movement and position."
    * valueCode from VSEyeMovementAndPosition

  * eyeRemarks 0..1 BackboneElement "[BeObservation] Eye remarks" "Free text remarks about the eyes."
    * subject 1..1 Reference(BePatient) "Child that the report is about" "The child that the report is about."
    * date 1..1 date "Date of eye screening" "The date of eye screening."
    * code 1..1 CodeableConcept "Eye movement and position"
    * code = #eye-remarks "Eye movement and position" 
    * valueString 1..1 string "Result of testing eye movement and position" 


//* inspectionPupilAbnormalDate 0..* date "Date(s) in which inspection of the pupil was abnormal" "Date(s) in which the inspection of the pupil had abnormal findings."
//  * result 1..1 boolean "Inspection pupil abnormal" "Indicates whether inspection of the pupil was abnormal."
//  * date 1..1 date "Inspection pupil abnormal" "Indicates whether inspection of the pupil was abnormal."
//  * note 1..1 string "Inspection pupil abnormal" "Indicates whether inspection of the pupil was abnormal."

//* eyeRemarks 0..1 string  "Eye remarks" "Free text remarks about the eyes."

* inTreatmentWithOphthalmologist 0..* BackboneElement "[BeObservation] In treatment with ophthalmologist" "Details about treatment with an ophthalmologist."
  * date 1..1 date "Date of remarks about treatment with ophthalmologist." 
  * code 1..1 CodeableConcept "Code"
  * code = #in-treatment-with-ophtalmologist "In treatment with ophthalmologist" 
  * valueCode 1..1 code "Treatment with ophthalmologist" "Treatment with ophthalmologist."
  * valueCode from VSOphthalmologistTreatments






// additional Notes:
// we will publish the BeProblem even if it is very reduced. If for any editorial reasons we cannot have a BeProblem, we will use a Condition temporarily.



ValueSet: VSEyeScreeningResults
Id: eye-screening-results
//* ^url = "http://example.org/fhir/ValueSet/eye-screening-results"
* include codes from system CSEyeScreeningResults

CodeSystem: CSEyeScreeningResults
//* ^url = "http://example.org/fhir/CodeSystem/eye-screening-results"
* #refer
* #pass
* #measurement-not-possible
* #child-not-testable

ValueSet: VSNeonatalHearingScreeningResults
//* ^url = "http://example.org/fhir/ValueSet/neonatal-hearing-screening-results"
* include codes from system CSNeonatalHearingScreeningResults

CodeSystem: CSNeonatalHearingScreeningResults
//* ^url = "http://example.org/fhir/CodeSystem/neonatal-hearing-screening-results"
* #pass
* #refer
* #aborted-test
* #not-performed


ValueSet: VSEyeMovementAndPosition
//* ^url = "http://example.org/fhir/ValueSet/eye-movement-and-position"
* include codes from system CSEyeMovementAndPosition

CodeSystem: CSEyeMovementAndPosition
//* ^url = "http://example.org/fhir/CodeSystem/eye-movement-and-position"
* #intermittent-strabismus
* #continuous-strabismus
* #nystagmus

ValueSet: VSOphthalmologistTreatments
//* ^url = "http://example.org/fhir/ValueSet/ophthalmologist-treatments"
* include codes from system CSOphthalmologistTreatments

CodeSystem: CSOphthalmologistTreatments
//* ^url = "http://example.org/fhir/CodeSystem/ophthalmologist-treatments"
* #glasses
* #occlusion
* #operation
* #other-treatment



CodeSystem: CSEyeScreeningAgeRange
//* ^url = "http://example.org/fhir/CodeSystem/neonatal-eye-screening-age-range"
* #0-2 "From birth to 2 years"
* #2-3 "Between 2 and 3 years"


ValueSet: VSEyeScreeningAgeRange
//* ^url = "http://example.org/fhir/ValueSet/neonatal-eye-screening-age-range"
* include codes from system CSEyeMovementAndPosition