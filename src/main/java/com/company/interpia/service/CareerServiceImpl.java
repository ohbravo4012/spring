package com.company.interpia.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.interpia.dao.CareerDao;
import com.company.interpia.dto.CareerDto;

@Service
public class CareerServiceImpl implements CareerService {

	@Inject
	CareerDao dao;

	@Override
	public CareerDto career(int no) throws Exception {
		// TODO Auto-generated method stub
		return dao.career(no);
	}

	@Override
	public void career_update(CareerDto dto) throws Exception {
		dao.career_update(dto);
	}

	@Override
	public void ca_insert(CareerDto dto) throws Exception {
		dao.ca_insert(dto);
		
	}

}
