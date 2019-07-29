package com.company.interpia.service;

import com.company.interpia.dto.EducationDto;

public interface EducationService {
	public EducationDto education(int no) throws Exception;
	public void education_update(EducationDto dto) throws Exception;
	public void edu_insert(EducationDto dto) throws Exception;
}
