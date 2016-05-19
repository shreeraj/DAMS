package com.dams.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Doctor;
import com.dams.repository.DoctorRepository;
import com.dams.service.DoctorService;

@Service
@Transactional
public class DoctorDAO implements DoctorService {

	@Autowired
	private DoctorRepository doctorRepository;

	public List<Doctor> getAll() {
		return (List<Doctor>) doctorRepository.findAll();
	}

	public void saveDoctor(Doctor doctor) {
		doctorRepository.save(doctor);

	}

	public Doctor findById(int docId) {
		return doctorRepository.findOne(docId);
	}

	public void updateDoctor(Doctor doctor) {
		doctorRepository.save(doctor);

	}

	public void deleteDoctor(Doctor doctor) {
		doctorRepository.delete(doctor);

	}

	public Doctor findByFirstname(String firstname) {
		return doctorRepository.findByFirstname(firstname);
	}

	@Override
	public List<Doctor> getThreeDocs() {
		return (List<Doctor>) doctorRepository.findAll();
	}

	@Override
	public Doctor findByUsername(String username) {
		return doctorRepository.findByusername(username);
	}

}
