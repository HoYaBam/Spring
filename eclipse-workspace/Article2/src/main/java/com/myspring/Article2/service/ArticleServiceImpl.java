package com.myspring.Article2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;

import com.myspring.Article2.dao.ArticleDAO;
import com.myspring.Article2.vo.ArticleVO;


@Repository("articleService")
public class ArticleServiceImpl implements ArticleService{
	@Autowired
	private ArticleDAO articleDAO;
	@Autowired
	private ArticleVO articleVO;

	@Override
	public List listMembers() throws DataAccessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addMember(ArticleVO ArticleVO) throws DataAccessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeMember(String id) throws DataAccessException {
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
	public ArticleVO login(ArticleVO ArticleVO) throws Exception {
		return articleDAO.loginById(ArticleVO);
	}
	

}
