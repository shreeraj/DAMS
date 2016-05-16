package com.dams.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.DocTime;
import com.dams.repository.DocTimeRepository;
import com.dams.service.TimeService;

@Service
@Transactional
public class TimeDAO implements TimeService{

	@Autowired
	private DocTimeRepository docTimeRepository;
	
	
	public void saveTime(DocTime docTime) {
		docTimeRepository.save(docTime);
		
	}

	
	public void updateTime(DocTime docTime) {
		docTimeRepository.save(docTime);
		
	}

	
	public DocTime getTimeById(int id) {
		return docTimeRepository.findOne(id);
	}

	
	public List<DocTime> getAllTime() {
		return (List<DocTime>) docTimeRepository.findAll();
	}

	
	public List<DocTime> getTimeByDoctorId(int doctorId) {
		return (List<DocTime>) docTimeRepository.getDocTimeByDoctorId(doctorId);
	}


	@Override
	public void deleteTime(DocTime docTime) {
		docTimeRepository.delete(docTime);
	}

}
