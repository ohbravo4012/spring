package com.company.interpia.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.interpia.dao.ProjectDao;
import com.company.interpia.dto.ProjectDto;
@Service
public class ProjectServiceImpl implements ProjectService {
	@Inject
	ProjectDao dao;
	@Override
	public ProjectDto project(int no) throws Exception {
		// TODO Auto-generated method stub
		return dao.project(no);
	}
	@Override
	public void project_update(ProjectDto dto) throws Exception {
		dao.project_update(dto);
		
	}
	@Override
	public void pro_insert(ProjectDto dto) throws Exception {
		dao.pro_insert(dto);
		
	}

}
