package com.company.interpia.service;

import com.company.interpia.dto.WorkDto;

public interface WorkService {
	public WorkDto work(int no) throws Exception;

	public void work_update(WorkDto dto) throws Exception;

	public void work_insert(WorkDto dto) throws Exception;
}
