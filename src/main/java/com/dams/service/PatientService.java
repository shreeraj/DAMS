package com.dams.service;

import java.util.List;

import com.dams.domain.Doctor;
import com.dams.domain.Patient;

public interface PatientService {
	
	public List<Patient> getAll();
	public void savePatient(Patient patient);
	public Patient findById(int docId);
	public void updatePatient(Patient patient);
	public void deletePatient(Patient patient);
	public Patient findByFirstname(String firstname);
	public Patient findByUsername(String username);
}
