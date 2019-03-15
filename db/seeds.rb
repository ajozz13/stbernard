# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Create facility
Facility.create( name: "St Bernard" )

#create Patients
Patient.create( first_name: 'Alberto', middle_name: 'J', last_name: 'Ochoa', honorific: 'Mr', dob: '1975-07-27', gender: 0, facility_id: 1 )
Patient.create( first_name: 'John', middle_name: 'B', last_name: 'Morales', honorific: 'Mr', dob: '1969-02-20', gender: 0, facility_id: 1 )
Patient.create( first_name: 'Juana', middle_name: 'O', last_name: 'Pena', honorific: 'Ms', dob: '1988-02-12', gender: 1, facility_id: 1 )
Patient.create( first_name: 'Frederick', middle_name: 'A', last_name: 'Hayek', honorific: 'Mr', dob: '1981-06-06', gender: 0, facility_id: 1 )
Patient.create( first_name: 'Milton', middle_name: '', last_name: 'Friedman', honorific: 'Mr', dob: '1912-07-31', gender: 0, facility_id: 1 )
Patient.create( first_name: 'Raul', middle_name: 'J', last_name: 'Sanchez', honorific: 'Mr', dob: '1970-12-20', gender: 0, facility_id: 1 )
Patient.create( first_name: 'Miguel', middle_name: 'J', last_name: 'Rodriguez', honorific: 'Mr', dob: '1984-06-12', gender: 0, facility_id: 1 )
Patient.create( first_name: 'Alina', middle_name: 'P', last_name: 'Guzman', honorific: 'Ms', dob: '1977-01-13', gender: 1, facility_id: 1 )
Patient.create( first_name: 'Sin', middle_name: 'P', last_name: 'Papa', honorific: 'Ms', dob: '1995-02-16', gender: 1, facility_id: 1 )

#admissions
Admission.create( moment: DateTime.now.to_datetime, patient_id: 1, diagnosis_id: 1, symptom_id: 1, observation_id: 1 )
Diagnosis.create( admission_id: 1, coding_system: "ICD-10-CM", code: "C50.0", description: "Diseases of the blood and blood-forming organs" )
Symptom.create( admission_id: 1, description: "Patient complains of acute shoulder pain" )
Symptom.create( admission_id: 1, description: "Patient complains or right knee pain" )
Observation.create( admission_id: 1, description: "The patient seems to be hipocondriac", moment: DateTime.now.to_datetime )
