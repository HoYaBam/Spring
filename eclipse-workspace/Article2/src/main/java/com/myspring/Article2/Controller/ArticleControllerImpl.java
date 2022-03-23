package com.myspring.Article2.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.Article2.service.ArticleService;
import com.myspring.Article2.vo.ArticleVO;


@Controller("articleController")
public class ArticleControllerImpl implements ArticleController{
	private static final Logger logger = LoggerFactory.getLogger(ArticleControllerImpl.class);
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleVO articleVO;
	
	@Override
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView addMember(ArticleVO article, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView removeMember(String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView modMember(String id, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ModelAndView updateMember(ArticleVO article, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	@RequestMapping(value="/article2/login.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login(@ModelAttribute("article") ArticleVO article, RedirectAttributes rAttr, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		articleVO = articleService.login(article);
		if(articleVO != null) {
			    HttpSession session = request.getSession();
			    session.setAttribute("member", articleVO);
			    session.setAttribute("isLogOn", true);
			    mav.setViewName("redirect:/article2/mainpageForm.do");
		}else {
			    rAttr.addAttribute("result","loginFailed");
			    mav.setViewName("redirect:/article2/loginForm.do");
		}
		return mav;
	}
	@Override
	@RequestMapping(value="/article2/logout.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/article2/mainpageForm.do");
		return mav;
	}
	
	@RequestMapping(value="/article2/*Form.do", method=RequestMethod.GET)
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		logger.info("viewName: "+ viewName);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
}
