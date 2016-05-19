package com.dams.service;

import java.util.List;

import com.dams.domain.Doctor;

public interface DoctorService {
	
	public List<Doctor> getAll();
	public void saveDoctor(Doctor doctor);
	public Doctor findById(int docId);
	public void updateDoctor(Doctor doctor);
	public void deleteDoctor(Doctor doctor);
	public Doctor findByFirstname(String firstname);
	public List<Doctor> getThreeDocs();
	public Doctor findByUsername(String username);
	
}
