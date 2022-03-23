package com.myspring.Article2.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Article2.vo.ArticleVO;


public interface ArticleDAO {
	 public List selectAllMemberList() throws DataAccessException;
	 public int insertMember(ArticleVO ArticleVO) throws DataAccessException ;
	 public int deleteMember(String id) throws DataAccessException;
	 public ArticleVO findMember(String id) throws DataAccessException;
	 public void updateMember(ArticleVO ArticleVO);
	 public ArticleVO loginById(ArticleVO ArticleVO) throws DataAccessException;	
}
