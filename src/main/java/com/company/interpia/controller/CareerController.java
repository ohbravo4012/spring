package com.company.interpia.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.interpia.dto.CareerDto;
import com.company.interpia.dto.LicenseDto;
import com.company.interpia.dto.ProjectDto;
import com.company.interpia.service.CareerService;

@Controller
public class CareerController {
	@Inject
	CareerService service;

	@RequestMapping(value = "ca_insert", method = RequestMethod.GET)
	public void getCa_insert(@RequestParam("no") int no, Model model) throws Exception {
		CareerDto career = null;
		career = service.career(no);
		model.addAttribute("career", career);
	}

	@RequestMapping(value = "ca_insert", method = RequestMethod.POST)
	public String postCa_insert(CareerDto dto) throws Exception {
		service.ca_insert(dto);
		return "redirect:list";
	}
	
	@RequestMapping(value = "career", method = RequestMethod.GET)
	public void getCareer(@RequestParam("no") int no, Model model) throws Exception {
		CareerDto career = null;
		career = service.career(no);
		model.addAttribute("career", career);
	}
	
	@RequestMapping(value = "career", method = RequestMethod.POST)
	public String career_update(CareerDto dto) throws Exception {
		service.career_update(dto);
		return "redirect:list";
	}

}
