/**
 *
 **/
package com.dams.domain;

/**
 * @author Ajit
 *
 * May 18, 2016
 */
public class AppointmentHelperBean {

	private Appointment appointment;
	private DocTime docTime;
	private Patient patient;
	public Appointment getAppointment() {
		return appointment;
	}
	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}
	public DocTime getDocTime() {
		return docTime;
	}
	public void setDocTime(DocTime docTime) {
		this.docTime = docTime;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
}
