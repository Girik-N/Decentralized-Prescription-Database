// SPDX-License-Identifier: MIT

pragma solodity >= 0.6.0 < 0.9.0;

contract Prescription {

    struct patientData {
        string firstName;
        string lastName;
        string age;
        string currentMedications;
        string pastMedications;
        string outstandingPresecriptions;
        string pastProcedures;
        string diseaseHistory
        string allergies;
        string ohip;
        string clinicianNotes;

        bool dataUsageAgreement;
    }

    mapping (uint => PatientDatabase) public patientsById;
    uint public patientCount;


    function addPatient(
        string memory _firstName, 
        string memory _lastName,
        string memory _age,
        string memory _currentMedications, 
        string memory _pastMedications, 
        string memory _outstandinPresecriptions, 
        string memory _pastProcedures, 
        string memory _diseaseHistory, 
        string memory _clinicianNotes, 

        bool _dataUsageAgreement) 
    
    
    public {
        patientCount++;
        patientsById[patientCount] = PatientDatabase(patientCount, _firstName, _lastName, _age, _currentMedications, _pastMedications, _outstandingPresecriptions, _pastProcedures, _illnessHistory, _allergies, _ohip, _clinicianNotes, _dataUsageAgreement);

    }

struct clinicianData {
        string firstName;
        string lastName;
        string city;
        string state;
        string speciality;
        string NPI;

    }

 function addClinician (
   
        string memory _firstName, 
        string memory _lastName,
        string memory _city,
        string memory _state, 
        string memory _speciality,
        string memory _NPI
        
   ) 
    
struct drugInformation {
        string brandName;
        string genericName;
        string NDC;
        string dosage;

    }

 function addDrugInformation (
   
        string memory _brandName, 
        string memory _genericName,
        string memory _NDC,
        string memory _dosage, 
     
 )

}
