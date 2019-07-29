package com.company.interpia.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.company.interpia.dto.MainDto;

@Repository
public class MainDaoImpl implements MainDao {
	@Inject
	SqlSession sql;

	@Override
	public List<MainDto> list(int start, int end, String searchOption, String keyword, String keyword2, String keyword3,
			String keyword4) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("keyword2", keyword2);
		map.put("keyword3", keyword3);
		map.put("keyword4", keyword4);
		map.put("start", start);
		map.put("end", end);
		return sql.selectList("main.list", map);
	}

	@Override
	public void delete(MainDto no) throws Exception {
		sql.delete("main.delete", no);

	}

	@Override
	public void insert(MainDto dto) throws Exception {
		sql.insert("main.insert", dto);

	}

	@Override
	public int selectTotalPaging() {
		// logger.info("selectTotalPaging");
		return sql.selectOne("main.selectTotalPaging");
	}

	@Override
	public int countArticle(String searchOption, String keyword, String keyword2, String keyword3, String keyword4)
			throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("keyword2", keyword2);
		map.put("keyword3", keyword3);
		map.put("keyword4", keyword4);
		return sql.selectOne("main.countArticle", map);
	}

	@Override
	public MainDto view(int no) throws Exception {
		return sql.selectOne("main.view", no);
	}

	@Override
	public void update(MainDto dto) throws Exception {
		sql.update("main.update", dto);

	}

}
