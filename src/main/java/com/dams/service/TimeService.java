package com.dams.service;

import java.util.List;

import com.dams.domain.DocTime;

public interface TimeService {
	public void saveTime(DocTime docTime);
	public void updateTime(DocTime docTime);
	public DocTime getTimeById(int id);
	public List<DocTime> getAllTime();
	public List<DocTime> getTimeByDoctorId(int doctorId);
	public void deleteTime(DocTime docTime);
}
