package com.dams.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.dams.domain.Patient;
import com.dams.repository.PatientRepository;
import com.dams.service.PatientService;


@Service
@Transactional
public class PatientDAO implements PatientService{

	@Autowired
	private PatientRepository patientRepository;
	
	@Override
	public List<Patient> getAll() {
		return (List<Patient>) patientRepository.findAll();
	}

	@Override
	public void savePatient(Patient patient) {
		patientRepository.save(patient);
		
	}

	@Override
	public Patient findById(int docId) {
		return patientRepository.findOne(docId);
	}

	@Override
	public void updatePatient(Patient patient) {
		patientRepository.save(patient);
		
	}

	@Override
	public void deletePatient(Patient patient) {
		patientRepository.delete(patient);
		
	}

	@Override
	public Patient findByFirstname(String firstname) {
		return patientRepository.findByFirstname(firstname);
	}

	@Override
	public Patient findByUsername(String username) {
		return patientRepository.findByUsername(username);
	}

}
