// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract ePrescription {

    struct prescriptionInfo {
        uint id;
        string patientFullName;
        string age;
        string currentMedications;
        string pastMedications;
        string outstandingPresecriptions;
        string illnessHistory;
        string clinicianFullName;
        string state;
        string licenseType;
        string NPInumber;
        string prescriptionBrandName;
        string genericName;
        string NDCDrugID;
        string dosageMlMg;
        string additionalNotes;

        bool dataUsageAgreement;
    }

    mapping (uint => prescriptionInfo) public patientsById;
    uint public patientCount;


    function addPrescription(
        string memory _patientFullName, 
        string memory _age, 
        string memory _currentMedications, 
        string memory _pastMedications, 
        string memory _outstandingPresecriptions, 
        string memory _illnessHistory, 
        string memory _clinicianFullName, 
        string memory _state, 
        string memory _licenseType, 
        string memory _NPInumber, 
        string memory _prescriptionBrandName,
        string memory _genericName, 
        string memory _NDCDrugID,
        string memory _dosageMlMg,
        string memory _additionalNotes,

        bool _dataUsageAgreement) 

    public {
        patientCount++;
        patientsById[patientCount] = prescriptionInfo(patientCount, _patientFullName, _age, _currentMedications, _pastMedications, _outstandingPresecriptions, _illnessHistory, _clinicianFullName, _state, _licenseType, _NPInumber, _prescriptionBrandName, _genericName, _NDCDrugID, _dosageMlMg, _additionalNotes, _dataUsageAgreement);
    }
}
