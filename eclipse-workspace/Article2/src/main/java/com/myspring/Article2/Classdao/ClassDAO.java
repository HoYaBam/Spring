package com.myspring.Article2.Classdao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Article2.Classvo.ClassVO;
import com.myspring.Article2.vo.ArticleVO;



public interface ClassDAO {
	 public List selectAllClassList() throws DataAccessException;
	 public void insertClass(ClassVO ClassVO) throws DataAccessException ;
	 public void deleteClass(String class_id) throws DataAccessException;
	 public ClassVO findClass(String class_id) throws DataAccessException;
	 public void updateClass(ClassVO ClassVO);
}