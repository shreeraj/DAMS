package com.dams.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Speciality {
	@Id
	@GeneratedValue
	private int specialityId;
	private String specialityName;
	
	public Speciality(){}
	public Speciality(int id, String speciality){
		this.setSpecialityId(id);
		this.setSpecialityName(speciality);
	}
	public String getSpecialityName() {
		return specialityName;
	}
	public void setSpecialityName(String specialityName) {
		this.specialityName = specialityName;
	}
	public int getSpecialityId() {
		return specialityId;
	}
	public void setSpecialityId(int specialityId) {
		this.specialityId = specialityId;
	}
}
