package com.company.interpia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.interpia.dto.EducationDto;

@Repository
public class EducationDaoImpl implements EducationDao {
	@Inject
	SqlSession sql;

	@Override
	public EducationDto education(int no) throws Exception {
		return sql.selectOne("education.education", no);
	}

	@Override
	public void education_update(EducationDto dto) throws Exception {
		sql.update("education.education_update", dto);
	}

	@Override
	public void edu_insert(EducationDto dto) throws Exception {
		sql.insert("education.edu_insert", dto);

	}
}
