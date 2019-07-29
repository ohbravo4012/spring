package com.company.interpia.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.company.interpia.dto.MainDto;
import com.company.interpia.page.BoardPager;
import com.company.interpia.service.MainService;
import com.company.interpia.utils.UploadFileUtils;

@Controller
public class MainController {
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	@Inject
	MainService service;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "update", method = RequestMethod.GET)
	public void getUpdate(@RequestParam("no") int no, Model model) throws Exception {
		System.out.println("nonono" + no);
		MainDto view = null;
		view = service.view(no);
		model.addAttribute("view", view);
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String postUpdate(MainDto dto, MultipartFile file, HttpServletRequest req) throws Exception {
		// 새로운 파일이 등록되었는지 확인
		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 기존 파일을 삭제
			new File(uploadPath + req.getParameter("gdsImg")).delete();
			new File(uploadPath + req.getParameter("gdsThumbImg")).delete();

			// 새로 첨부한 파일을 등록
			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			String fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),
					ymdPath);

			dto.setGdsImg(File.separator + "interpia/imgUpload" + ymdPath + File.separator + fileName);
			dto.setGdsThumbImg(File.separator + "interpia/imgUpload" + ymdPath + File.separator + "s" + File.separator
					+ "s_" + fileName);

		} else { // 새로운 파일이 등록되지 않았다면
			// 기존 이미지를 그대로 사용
			dto.setGdsImg(req.getParameter("gdsImg"));
			dto.setGdsThumbImg(req.getParameter("gdsThumbImg"));

		}

		service.update(dto);

		return "redirect:list";
	}

	@RequestMapping(value = "view", method = RequestMethod.GET)
	public void getView(@RequestParam("no") int no, Model model) throws Exception {
		MainDto view = null;
		view = service.view(no);
		model.addAttribute("view", view);
	}

	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public void insertGet() throws Exception {
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insertPost(MainDto dto, Model model, MultipartFile file) throws Exception {
		// System.out.println("filefilefile" + file);
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if (file != null) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		dto.setGdsImg(File.separator + "interpia/imgUpload" + ymdPath + File.separator + fileName);
		dto.setGdsThumbImg(File.separator + "interpia/imgUpload" + ymdPath + File.separator + "s" + File.separator
				+ "s_" + fileName);
		service.insert(dto);
		model.addAttribute("result", "success");
		return "redirect:list";
	}

	@RequestMapping("list")
	public ModelAndView list(@RequestParam(defaultValue="kor_name") String searchOption,
			@RequestParam(defaultValue = "") String keyword, @RequestParam(defaultValue = "") String keyword2,
			@RequestParam(defaultValue = "") String keyword3, @RequestParam(defaultValue = "") String keyword4,
			@RequestParam(defaultValue = "1") int curPage) throws Exception {
		System.out.println("sss" + searchOption);
		int count = service.countArticle(searchOption, keyword, keyword2, keyword3, keyword4);
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		List<MainDto> list = service.list(start, end, searchOption, keyword, keyword2, keyword3, keyword4);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("searchOption", searchOption);
		
		map.put("keyword", keyword);
		map.put("keyword2", keyword2);
		map.put("keyword3", keyword3);
		map.put("keyword4", keyword4);
		map.put("boardPager", boardPager);
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("list");
		return mav;
	}

	@RequestMapping(value = "delete", method = RequestMethod.POST)
	public String delete(@RequestParam(value = "chbox[]") List<String> chArr, MainDto no) throws Exception {

		int noNum = 0;

		for (String i : chArr) {
			// System.out.println("iii"+i);
			noNum = Integer.parseInt(i);
			// System.out.println("nonum" + noNum);
			no.setNo(noNum);

			// System.out.println("nonono"+no);
			service.delete(no);
			// System.out.println("sss"+service);
		}
		return "redirect:list";

	}
}
