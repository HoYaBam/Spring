package com.spring.ex02;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("loginController")
@RequestMapping("/test")
public class LoginController {
	@RequestMapping(value="/loginForm.do", method=RequestMethod.GET)
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("loginForm");
		return mav;
	}
	
//	@RequestMapping(value="/login.do", method= {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView login(@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam(value="email", required=false) String email ,HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("id", id);
//		mav.addObject("name", name);
//		mav.addObject("email", email);	
//		mav.setViewName("login");
//		return mav;
//	}
	
//	@RequestMapping(value="/login.do", method= {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView login(@RequestParam Map<String, String> info,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		System.out.println(info.get("id"));
//		System.out.println(info.get("name"));
//		System.out.println(info.get("email"));
//		mav.addObject("info", info);	
//		mav.setViewName("login");
//		return mav;
//	}
	
//	@RequestMapping(value="/login.do", method= {RequestMethod.POST, RequestMethod.GET})
//	public ModelAndView login(@ModelAttribute("info") LoginVO loginVO,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		System.out.println(loginVO.getId());
//		System.out.println(loginVO.getName());
//		System.out.println(loginVO.getEmail());
//		mav.addObject("info", loginVO);	
//		mav.setViewName("login");
//		return mav;
//	}
	
	@RequestMapping(value="/login.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String login(Model model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		model.addAttribute("id", "hong");
		model.addAttribute("name", "ȫ�浿");
		return "result";
	}
}
