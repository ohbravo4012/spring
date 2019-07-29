package com.company.interpia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.interpia.dto.ProjectDto;

@Repository
public class ProjectDaoImpl implements ProjectDao {
	@Inject
	SqlSession sql;

	@Override
	public ProjectDto project(int no) throws Exception {
		return sql.selectOne("project.project", no);
	}

	@Override
	public void project_update(ProjectDto dto) throws Exception {
		sql.update("project.project_update", dto);

	}

	@Override
	public void pro_insert(ProjectDto dto) throws Exception {
		sql.insert("project.pro_insert", dto);

	}
}
