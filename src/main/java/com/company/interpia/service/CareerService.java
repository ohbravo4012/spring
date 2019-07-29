package com.company.interpia.service;

import com.company.interpia.dto.CareerDto;

public interface CareerService {
	public CareerDto career(int no) throws Exception;

	public void career_update(CareerDto dto) throws Exception;

	public void ca_insert(CareerDto dto) throws Exception;
}
