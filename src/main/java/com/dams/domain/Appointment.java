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
	private String appDate;

	private int patientId;

	public Appointment() {

	}
	
	

	public Appointment(int docId, int timeId, String appDate, int patientId, long dateTimeStamp) {
		
		this.docId = docId;
		this.timeId = timeId;
		this.appDate = appDate;
		this.patientId = patientId;
		this.dateTimeStamp = dateTimeStamp;
	}



	public int getAppointmentId() {
		return appointmentId;
	}

	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}

	public String getAppDate() {
		return appDate;
	}

	public void setAppDate(String appDate) {
		this.appDate = appDate;
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

}
