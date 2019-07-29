package com.company.interpia.dao;

import com.company.interpia.dto.ProjectDto;

public interface ProjectDao {
	public ProjectDto project(int no) throws Exception;

	public void project_update(ProjectDto dto) throws Exception;

	public void pro_insert(ProjectDto dto) throws Exception;
}
