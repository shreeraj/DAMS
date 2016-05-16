package com.dams.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.Speciality;
import com.dams.repository.SpecialityRepository;
import com.dams.service.SpecialityService;


@Service
@Transactional
public class SpecialityDAO implements SpecialityService{

	@Autowired
	private SpecialityRepository specialityRepository;


	@Override
	public List<Speciality> getAllSpecialities() {
		// TODO Auto-generated method stub
		return (List<Speciality>) specialityRepository.findAll();
	}

	@Override
	public void addSpeciality(Speciality speciality) {
		// TODO Auto-generated method stub
		specialityRepository.save(speciality);
	}

	@Override
	public void deleteSpeciality(Speciality speciality) {
		// TODO Auto-generated method stub
		specialityRepository.delete(speciality);
	}

	@Override
	public void updateSpeciality(Speciality speciality) {
		// TODO Auto-generated method stub
		specialityRepository.save(speciality);
	}

	@Override
	public Speciality findById(int specialityId) {
		// TODO Auto-generated method stub
		return specialityRepository.findOne(specialityId);
	}

}
