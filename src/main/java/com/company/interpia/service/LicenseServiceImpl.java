package com.company.interpia.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.interpia.dao.LicenseDao;
import com.company.interpia.dto.LicenseDto;

@Service
public class LicenseServiceImpl implements LicenseService {
	@Inject
	LicenseDao dao;

	public LicenseDto license(int no) throws Exception {
		return dao.license(no);
	}

	@Override
	public void license_update(LicenseDto dto) throws Exception {
		dao.license_update(dto);
	}

	@Override
	public void licen_insert(LicenseDto dto) throws Exception {
		dao.licen_insert(dto);
		
	}
}
