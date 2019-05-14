package com.ncs.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	} // home()
	
	@RequestMapping(value = "/home")
	public ModelAndView home(ModelAndView mv) {
		mv.setViewName("home"); 
		return mv;
	}
	
	// 회원가입 화면
	@RequestMapping(value = "/joinF")
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("user/joinForm"); 
		return mv;
	}
	
	// 로그인 화면
	@RequestMapping(value = "/loginF")
	public ModelAndView loginf(ModelAndView mv) {
		mv.setViewName("user/loginForm"); 
		return mv;
	}
	
	// 국가 및 도시 InsertForm
	@RequestMapping(value = "/cityF")
	public ModelAndView locationAdmin(ModelAndView mv) {
		mv.setViewName("adminForm/cityAdminForm");
		return mv;
	}

	
}
