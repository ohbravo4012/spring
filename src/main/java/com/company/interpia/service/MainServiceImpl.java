package com.company.interpia.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.company.interpia.dao.MainDao;
import com.company.interpia.dto.MainDto;

@Service
public class MainServiceImpl implements MainService {
	@Inject
	MainDao dao;

	@Override
	public List<MainDto> list(int start, int end, String searchOption, String keyword, String keyword2, String keyword3,
			String keyword4) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(start, end, searchOption, keyword, keyword2, keyword3, keyword4);
	}

	@Override
	public void delete(MainDto no) throws Exception {
		dao.delete(no);

	}

	@Override
	public void insert(MainDto dto) throws Exception {
		dao.insert(dto);

	}

	@Override
	public int selectTotalPaging() {
		return dao.selectTotalPaging();
	}

	@Override
	public int countArticle(String searchOption, String keyword, String keyword2, String keyword3, String keyword4)
			throws Exception {
		// TODO Auto-generated method stub
		return dao.countArticle(searchOption, keyword, keyword2, keyword3, keyword4);
	}

	@Override
	public MainDto view(int no) throws Exception {
		return dao.view(no);
	}

	@Override
	public void update(MainDto dto) throws Exception {
		dao.update(dto);

	}
}
