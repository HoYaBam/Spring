package com.myspring.Article2.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Article2.vo.ArticleVO;

public interface ArticleService {
	public List listMembers() throws DataAccessException;
	public int addMember(ArticleVO ArticleVO) throws DataAccessException;
	public int removeMember(String id) throws DataAccessException;
	public ArticleVO findMember(String id) throws DataAccessException;
	public void updateMember(ArticleVO ArticleVO);
	public ArticleVO login(ArticleVO ArticleVO) throws Exception;
}
