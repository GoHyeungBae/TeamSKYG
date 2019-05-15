package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.TourService;
import com.ncs.vo.TourVO;

@Controller
public class TourController {

	@Autowired
	@Qualifier("ATour")
	private TourService rservice;
	
	@RequestMapping(value = "/tour")
	@ResponseBody
	public ModelAndView tour(ModelAndView mav, TourVO tVO) {
		int cnt = rservice.insertTour(tVO);
		System.out.println("vo => " + tVO);
		
		if (tVO != null) {
			
			if(cnt > 0) {
				mav.addObject("code", 200); //등록 성공시 200
				mav.addObject("url", "home"); //등록 성공	
				
			}
			
		} else {
			mav.addObject("code", 201);//등록 실패시 201
		}
		
		mav.setViewName("JsonView");
		return mav;	 
	
	}//ModelAndView
	
}//class
