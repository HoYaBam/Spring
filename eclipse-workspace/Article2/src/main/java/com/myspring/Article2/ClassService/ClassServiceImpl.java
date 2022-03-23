package com.myspring.Article2.ClassService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Article2.Classdao.ClassDAO;
import com.myspring.Article2.Classvo.ClassVO;


@Repository("classService")
public class ClassServiceImpl implements ClassService{
	@Autowired
	private ClassDAO classDAO;
	@Autowired
	private ClassVO classVO;
	
	@Override
	public List listClass() throws DataAccessException {
		List classsList = null;
		classsList = classDAO.selectAllClassList();
		return classsList;
	}
	@Override
	public void addClass(ClassVO ClassVO) throws DataAccessException {
		classDAO.insertClass(ClassVO);
	}
	@Override
	public void removeClass(String class_id) throws DataAccessException {
		// TODO Auto-generated method stub
	}
	@Override
	public ClassVO findClass(String class_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void updateClass(ClassVO ClassVO) {
		// TODO Auto-generated method stub
		
	}
	
}