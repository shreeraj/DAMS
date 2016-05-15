package com.dams.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Doctor;
import com.dams.repository.DoctorRepository;
import com.dams.service.DoctorService;


@Service
@Transactional
public class DoctorDAO implements DoctorService{

	@Autowired
	private DoctorRepository doctorRepository;
	
	@Override
	public List<Doctor> getAll() {
		return (List<Doctor>) doctorRepository.findAll();
	}

	@Override
	public void saveDoctor(Doctor doctor) {
		doctorRepository.save(doctor);
		
	}

	@Override
	public Doctor findById(int docId) {
		return doctorRepository.findOne(docId);
	}

	@Override
	public void updateDoctor(Doctor doctor) {
		doctorRepository.save(doctor);
		
	}

	@Override
	public void deleteDoctor(Doctor doctor) {
		doctorRepository.delete(doctor);
		
	}

	@Override
	public Doctor findByFirstname(String firstname) {
		return doctorRepository.findByFirstname(firstname);
	}

}
