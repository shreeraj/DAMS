package com.dams.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dams.domain.DocTime;

@Repository
@Transactional(readOnly=true)
public interface DocTimeRepository extends CrudRepository<DocTime, Integer>{
	@Query("from DocTime t where t.doctor.doctorId = :doctorId")
	public List<DocTime> getDocTimeByDoctorId(@Param("doctorId") int doctorId);
}
