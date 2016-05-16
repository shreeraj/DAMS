package com.dams.service;

import java.util.List;

import com.dams.domain.Speciality;

public interface SpecialityService {

	public List<Speciality> getAllSpecialities();
	public void addSpeciality(Speciality speciality);
	public void deleteSpeciality(Speciality speciality);
	public void updateSpeciality(Speciality speciality);
	public Speciality findById(int specialityId);
	
}
