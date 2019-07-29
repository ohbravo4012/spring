package com.company.interpia.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.interpia.dao.EducationDao;
import com.company.interpia.dto.EducationDto;

@Service
public class EducationServiceImpl implements EducationService {
	@Inject
	EducationDao dao;

	public EducationDto education(int no) throws Exception {
		return dao.education(no);
	}

	@Override
	public void education_update(EducationDto dto) throws Exception {
		dao.education_update(dto);
	}

	@Override
	public void edu_insert(EducationDto dto) throws Exception {
		dao.edu_insert(dto);
		
	}
	
}
