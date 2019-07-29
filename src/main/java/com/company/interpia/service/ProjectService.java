package com.company.interpia.service;

import com.company.interpia.dto.ProjectDto;

public interface ProjectService {
	public ProjectDto project(int no) throws Exception;

	public void project_update(ProjectDto dto) throws Exception;

	public void pro_insert(ProjectDto dto) throws Exception;
}
