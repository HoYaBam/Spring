package com.myspring.Article2.ClassController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.myspring.Article2.Classvo.ClassVO;

public interface ClassController {
	public ModelAndView listClass(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addClass(@ModelAttribute("class") ClassVO classvo, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeClass(@RequestParam("class_id") String class_id,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView modClass(@RequestParam("class_id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView updateClass(@ModelAttribute("class") ClassVO classvo, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
