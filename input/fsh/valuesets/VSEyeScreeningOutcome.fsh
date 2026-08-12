Alias: $sct = http://snomed.info/sct

ValueSet: VSEyeScreeningOutcome
Id: vs-eye-screening-results
Title: "Eye Screening Results"
Description: "A value set that includes codes for eye screening results."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/vs-eye-screening-results"
* ^experimental = false
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."""
* $sct#280413001 "Normal result"
* $sct#280415008 "Abnormal result"
* $sct#455371000124106 "Invalid result"
* $sct#373121007 "Test not done"
