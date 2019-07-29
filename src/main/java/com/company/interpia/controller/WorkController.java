package com.company.interpia.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.interpia.dto.CareerDto;
import com.company.interpia.dto.ProjectDto;
import com.company.interpia.dto.WorkDto;
import com.company.interpia.service.WorkService;

@Controller
public class WorkController {
	@Inject
	WorkService service;

	
	@RequestMapping(value = "work_insert", method = RequestMethod.GET)
	public void getWork_insert(@RequestParam("no") int no, Model model) throws Exception {
		WorkDto work = null;
		work = service.work(no);
		model.addAttribute("work", work);
	}

	@RequestMapping(value = "work_insert", method = RequestMethod.POST)
	public String postWork_insert(WorkDto dto) throws Exception {
		service.work_insert(dto);
		return "redirect:list";
	}
	
	@RequestMapping(value = "work", method = RequestMethod.GET)
	public void getWork(@RequestParam("no") int no, Model model) throws Exception {
		WorkDto work = null;
		work = service.work(no);
		model.addAttribute("work", work);
	}
	@RequestMapping(value = "work", method = RequestMethod.POST)
	public String work(WorkDto dto) throws Exception {
		service.work_update(dto);
		return "redirect:list";
	}

}
