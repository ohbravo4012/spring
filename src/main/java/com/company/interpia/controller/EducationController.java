package com.company.interpia.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.interpia.dto.EducationDto;
import com.company.interpia.service.EducationService;

@Controller
public class EducationController {
	@Inject
	EducationService service;

	@RequestMapping(value="edu_insert", method = RequestMethod.GET)
	public void getEdu_insert(@RequestParam("no") int no, Model model) throws Exception {
		EducationDto education = null;
		education = service.education(no);
		model.addAttribute("education", education);
	}
	@RequestMapping(value = "edu_insert", method = RequestMethod.POST)
	public String postEdu_insert(EducationDto dto) throws Exception {
		service.edu_insert(dto);
		return "redirect:list";
	}
	
	@RequestMapping(value = "education", method = RequestMethod.GET)
	public void education(@RequestParam("no") int no, Model model) throws Exception {
		EducationDto education = null;
		education = service.education(no);
		model.addAttribute("education", education);
	}

	@RequestMapping(value = "education", method = RequestMethod.POST)
	public String education_update(EducationDto dto) throws Exception {
		service.education_update(dto);
		return "redirect:list";
	}

}
