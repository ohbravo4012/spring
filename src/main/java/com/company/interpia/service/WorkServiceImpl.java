package com.company.interpia.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.interpia.dao.WorkDao;
import com.company.interpia.dto.WorkDto;

@Service
public class WorkServiceImpl implements WorkService {
	@Inject
	WorkDao dao;

	@Override
	public WorkDto work(int no) throws Exception {
		return dao.work(no);
	}

	@Override
	public void work_update(WorkDto dto) throws Exception {
		dao.work_update(dto);

	}

	@Override
	public void work_insert(WorkDto dto) throws Exception {
		dao.work_insert(dto);

	}
}
