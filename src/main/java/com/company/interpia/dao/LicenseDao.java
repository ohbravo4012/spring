package com.company.interpia.dao;

import com.company.interpia.dto.LicenseDto;

public interface LicenseDao {
	public LicenseDto license(int no) throws Exception;

	public void license_update(LicenseDto dto) throws Exception;

	public void licen_insert(LicenseDto dto) throws Exception;
}
