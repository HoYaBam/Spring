package com.myspring.Article2.Classdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Article2.Classvo.ClassVO;



@Repository("classDAO")
public class ClassDAOImpl implements ClassDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllClassList() throws DataAccessException {
		List<ClassVO> classsList = null;
		classsList = sqlSession.selectList("mapper.class.selectAllClassList");
		return classsList;
	}

	@Override
	public void insertClass(ClassVO ClassVO) throws DataAccessException {
		sqlSession.insert("mapper.class.insertClass", ClassVO);
	}

	@Override
	public void deleteClass(String class_id) throws DataAccessException {
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