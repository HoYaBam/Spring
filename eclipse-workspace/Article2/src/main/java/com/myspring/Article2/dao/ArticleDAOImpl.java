package com.myspring.Article2.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Article2.vo.ArticleVO;

@Repository("articleDAO")
public class ArticleDAOImpl implements ArticleDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllMemberList() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertMember(ArticleVO ArticleVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArticleVO findMember(String id) throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateMember(ArticleVO ArticleVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArticleVO loginById(ArticleVO ArticleVO) throws DataAccessException {
		ArticleVO articleVO = sqlSession.selectOne("mapper.member.loginById", ArticleVO);
		return articleVO;
	}
	
	

}
