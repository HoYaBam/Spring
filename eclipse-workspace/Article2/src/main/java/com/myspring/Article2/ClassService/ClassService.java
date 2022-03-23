package com.myspring.Article2.ClassService;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Article2.Classvo.ClassVO;

public interface ClassService {
	public List listClass() throws DataAccessException;
	public void addClass(ClassVO ClassVO) throws DataAccessException;
	public void removeClass(String class_id) throws DataAccessException;
	public ClassVO findClass(String class_id) throws DataAccessException;
	public void updateClass(ClassVO ClassVO);
}
