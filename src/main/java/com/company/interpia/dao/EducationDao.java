package com.company.interpia.dao;

import com.company.interpia.dto.EducationDto;

public interface EducationDao {
	public EducationDto education(int no) throws Exception;

	public void education_update(EducationDto dto) throws Exception;

	public void edu_insert(EducationDto dto) throws Exception;
}
