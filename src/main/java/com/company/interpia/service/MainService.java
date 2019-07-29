package com.company.interpia.service;

import java.util.List;

import com.company.interpia.dto.MainDto;

public interface MainService {
	public List<MainDto> list(int start, int end, String searchOption, String keyword, String keyword2, String keyword3,
			String keyword4) throws Exception;

	public int countArticle(String searchOption, String keyword, String keyword2, String keyword3, String keyword4) throws Exception;

	public void delete(MainDto no) throws Exception;

	public void insert(MainDto dto) throws Exception;

	public int selectTotalPaging();

	public MainDto view(int no) throws Exception;

	public void update(MainDto dto) throws Exception;
}
