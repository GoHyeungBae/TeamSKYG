package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.RoomService;
import com.ncs.vo.RoomVO;

@Controller
public class RoomController {

	@Autowired
	@Qualifier("ARoom")
	private RoomService rservice;
	
	@RequestMapping(value = "/room")
	@ResponseBody
	public ModelAndView room(ModelAndView mav, RoomVO rVO) {
					
			// 도시코드 정보
			/*RoomVO cityCode = rservice.select_cityCode(rVO);
			
			System.out.println("cityCode : " + cityCode.getCity_code() );
			
			if (cityCode != null) {
				mav.addObject("cityCode", cityCode.getCity_code() );
				
				mav.setViewName("adminForm/roomForm");
			}*/
			int cnt = rservice.insertRoom(rVO);
			
			if (cnt > 0) {
				mav.addObject("code", 200); // 등록 성공
				mav.addObject("url", "home"); // 등록 성공
				
			}else {
				mav.addObject("code", 201); // 등록 실패
			}
			
			mav.setViewName("jsonView");
		
		return mav;
	}
}
