package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.EatInfoService;
import com.ncs.vo.EatInfoVO;

@Controller
public class AD_EatInfoController {
	
	@Autowired
	@Qualifier("eatInfo")
	private EatInfoService service;
	
	@RequestMapping(value="/eatjoin")
	public ModelAndView eatInfo(ModelAndView eav, EatInfoVO eVO ) {
		
		
		int cnt = service.insertEatInfo(eVO);
		
		if (cnt > 0) {
			eav.addObject("code", 200);

		} else {
			eav.addObject("code", 201);
		}
		eav.setViewName("jsonView");
		return eav;
	}//eatInfo
}//AD_EatInfoController