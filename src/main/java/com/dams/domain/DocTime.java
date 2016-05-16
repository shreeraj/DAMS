package com.dams.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
public class DocTime {
	@Id
	@GeneratedValue
	private int timeId;
	private String start;
	private String end;
	
	
	@ManyToOne
	@JoinColumn(name="doctorId")
	private Doctor doctor;
	public DocTime(){};
	
	public DocTime(String start, String end, Doctor doctor) {
		super();
		this.start = start;
		this.end = end;
		this.doctor = doctor;
	}
	public int getTimeId() {
		return timeId;
	}
	public void setTimeId(int id) {
		this.timeId = id;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
	
	
	
}
