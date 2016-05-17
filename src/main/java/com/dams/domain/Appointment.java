package com.dams.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Appointment {
	@Id
	@GeneratedValue
	private int appointmentId;
	
	private int docId;
	private int timeId;
	private String time;
	
	private int patientId;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	private long dateTimeStamp;
	
	
	public long getDateTimeStamp() {
		return dateTimeStamp;
	}
	public void setDateTimeStamp(long dateTimeStamp) {
		this.dateTimeStamp = dateTimeStamp;
	}
	public int getTimeId() {
		return timeId;
	}
	public void setTimeId(int timeId) {
		this.timeId = timeId;
	}
	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	
	public Appointment(){
		
	}
	
}
