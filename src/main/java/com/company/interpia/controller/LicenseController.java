package com.company.interpia.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.interpia.dto.EducationDto;
import com.company.interpia.dto.LicenseDto;
import com.company.interpia.service.LicenseService;

@Controller
public class LicenseController {
	@Inject
	LicenseService service;

	@RequestMapping(value = "licen_insert", method = RequestMethod.GET)
	public void getLicen_insert(@RequestParam("no") int no, Model model) throws Exception {
		LicenseDto license = null;
		license = service.license(no);
		model.addAttribute("license", license);
	}

	@RequestMapping(value = "licen_insert", method = RequestMethod.POST)
	public String postEdu_insert(LicenseDto dto) throws Exception {
		service.licen_insert(dto);
		return "redirect:list";
	}

	@RequestMapping(value = "license", method = RequestMethod.GET)
	public void getLicense(@RequestParam("no") int no, Model model) throws Exception {
		LicenseDto license = null;
		license = service.license(no);
		model.addAttribute("license", license);
	}

	@RequestMapping(value = "license", method = RequestMethod.POST)
	public String license_update(LicenseDto dto) throws Exception {
		service.license_update(dto);
		return "redirect:list";
	}

}
