package com.company.interpia.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.interpia.dto.LicenseDto;
import com.company.interpia.dto.ProjectDto;
import com.company.interpia.service.ProjectService;

@Controller
public class ProjectController {
	@Inject
	ProjectService service;

	
	@RequestMapping(value = "pro_insert", method = RequestMethod.GET)
	public void getPro_insert(@RequestParam("no") int no, Model model) throws Exception {
		ProjectDto project = null;
		project = service.project(no);
		model.addAttribute("project", project);
	}

	@RequestMapping(value = "pro_insert", method = RequestMethod.POST)
	public String postPro_insert(ProjectDto dto) throws Exception {
		service.pro_insert(dto);
		return "redirect:list";
	}
	
	@RequestMapping(value = "project", method = RequestMethod.GET)
	public void getEducation(@RequestParam("no") int no, Model model) throws Exception {
		ProjectDto project = null;
		project = service.project(no);
		model.addAttribute("project", project);
	}
	@RequestMapping(value = "project", method = RequestMethod.POST)
	public String project_update(ProjectDto dto) throws Exception {
		service.project_update(dto);
		return "redirect:list";
	}

}
