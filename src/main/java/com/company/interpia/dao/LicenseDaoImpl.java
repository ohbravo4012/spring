package com.company.interpia.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.interpia.dto.LicenseDto;

@Repository
public class LicenseDaoImpl implements LicenseDao {
	@Inject
	SqlSession sql;

	@Override
	public LicenseDto license(int no) throws Exception {
		return sql.selectOne("license.license", no);
	}

	@Override
	public void license_update(LicenseDto dto) throws Exception {
		sql.update("license.license_update", dto);
	}

	@Override
	public void licen_insert(LicenseDto dto) throws Exception {
		sql.insert("license.licen_insert", dto);

	}
}
