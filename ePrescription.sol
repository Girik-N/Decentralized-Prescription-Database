pragma solidity ^0.5.1;

contract MedicalDatabase {
    // Struct to store medical records
    struct MedicalRecord {
        string patientName;
        string doctorName;
        string disease;
        string prescription;
    }
    
    // Create a mapping to store medical records
    mapping (bytes32 => MedicalRecord) public medicalRecords;
    
    // Function to add medical records
    function addMedicalRecord(
        bytes32 _hashKey,
        string memory _patientName,
        string memory _doctorName,
        string memory _disease,
        string memory _prescription
    ) public
    {
        // Create a new medical record
        MedicalRecord memory _medicalRecord = MedicalRecord(_patientName, _doctorName, _disease, _prescription);
        // Store the new medical record
        medicalRecords[_hashKey] = _medicalRecord;
    }
    
    // Function to update existing medical records
    function updateMedicalRecord(
        bytes32 _hashKey,
        string memory _patientName,
        string memory _doctorName,
        string memory _disease,
        string memory _prescription
    ) public
    {
        // Fetch the existing medical record
        MedicalRecord memory _medicalRecord = medicalRecords[_hashKey];
        // Update the existing medical record
        _medicalRecord.patientName = _patientName;
        _medicalRecord.doctorName = _doctorName;
        _medicalRecord.disease = _disease;
        _medicalRecord.prescription = _prescription;
        // Store the updated medical record
        medicalRecords[_hashKey] = _medicalRecord;
    }
    
    // Function to delete medical records
    function deleteMedicalRecord(bytes32 _hashKey) public {
        // Delete the existing medical record
        delete medicalRecords[_hashKey];
    }
    
    // Function to query medical records
    function queryMedicalRecord(bytes32 _hashKey) public view returns (
        string memory _patientName,
        string memory _doctorName,
        string memory _disease,
        string memory _prescription
    )
    {
        // Fetch the existing medical record
        MedicalRecord memory _medicalRecord = medicalRecords[_hashKey];
        // Return the details of the medical record
        return (_medicalRecord.patientName, _medicalRecord.doctorName, _medicalRecord.disease, _medicalRecord.prescription);
    }
}
