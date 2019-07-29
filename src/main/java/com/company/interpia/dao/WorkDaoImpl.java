package com.company.interpia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.interpia.dto.WorkDto;

@Repository
public class WorkDaoImpl implements WorkDao {
	@Inject
	SqlSession sql;

	@Override
	public WorkDto work(int no) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("work.work", no);
	}

	@Override
	public void work_update(WorkDto dto) throws Exception {
		sql.update("work.work_update", dto);

	}

	@Override
	public void work_insert(WorkDto dto) throws Exception {
		sql.insert("work.work_insert", dto);

	}

}
