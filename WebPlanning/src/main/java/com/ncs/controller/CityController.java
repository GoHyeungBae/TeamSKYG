package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.CityAdminService;
import com.ncs.vo.CityVO;

@Controller
public class CityController {

	@Autowired
	@Qualifier("city")
	private CityAdminService service;

	@RequestMapping(value = "/cityinsert")
	public ModelAndView cityinsert(ModelAndView mav, CityVO cVO) {

		int cnt = service.insertCity(cVO);

		if (cnt > 0) {
			mav.addObject("code", 200);

		} else {
			mav.addObject("code", 201);
		}
		mav.setViewName("jsonView");
		return mav;
	}

}// Controller
