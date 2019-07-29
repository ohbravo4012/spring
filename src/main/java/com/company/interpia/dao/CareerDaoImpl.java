package com.company.interpia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.interpia.dto.CareerDto;

@Repository
public class CareerDaoImpl implements CareerDao {
	@Inject
	SqlSession sql;

	public CareerDto career(int no) throws Exception {
		return sql.selectOne("career.career", no);
	}

	@Override
	public void career_update(CareerDto dto) throws Exception {
		sql.update("career.career_update", dto);
	}

	@Override
	public void ca_insert(CareerDto dto) throws Exception {
		sql.insert("career.ca_insert", dto);

	}
}
