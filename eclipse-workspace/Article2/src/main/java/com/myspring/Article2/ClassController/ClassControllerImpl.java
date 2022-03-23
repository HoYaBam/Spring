package com.myspring.Article2.ClassController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Article2.ClassService.ClassService;
import com.myspring.Article2.Classvo.ClassVO;
import com.myspring.Article2.Controller.ArticleControllerImpl;



@Controller("classController")
public class ClassControllerImpl implements ClassController{
	private static final Logger logger = LoggerFactory.getLogger(ArticleControllerImpl.class);
	@Autowired
	private ClassService classService;
	@Autowired	
	private ClassVO classVO;
	
	@Override
	@RequestMapping(value="/class/listClass.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listClass(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("html/text;charset=utf-8");
		String viewName = (String)request.getAttribute("viewName");
		List classsList = classService.listClass();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("classsList", classsList);
		return mav;
	}
	@Override
	@RequestMapping(value="/class/addClass.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView addClass(ClassVO classvo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		classService.addClass(classvo);
		ModelAndView mav = new ModelAndView("redirect:/article2/OperatorForm.do");
		return mav;
	}
	@Override
	public ModelAndView removeClass(String class_id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView modClass(String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView updateClass(ClassVO classvo, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
}