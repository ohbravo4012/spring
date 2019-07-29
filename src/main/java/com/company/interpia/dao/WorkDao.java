package com.company.interpia.dao;

import com.company.interpia.dto.WorkDto;

public interface WorkDao {
	public WorkDto work(int no) throws Exception;

	public void work_update(WorkDto dto) throws Exception;

	public void work_insert(WorkDto dto) throws Exception;
}
