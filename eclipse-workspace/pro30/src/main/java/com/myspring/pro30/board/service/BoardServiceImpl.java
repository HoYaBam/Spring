package com.myspring.pro30.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.pro30.board.dao.BoardDAO;
import com.myspring.pro30.board.vo.ArticleVO;
import com.myspring.pro30.board.vo.ImageVO;


@Service("boardService")
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImpl  implements BoardService{
	@Autowired
	BoardDAO boardDAO;
	
	public List<ArticleVO> listArticles() throws Exception{
		List<ArticleVO> articlesList =  boardDAO.selectAllArticlesList();
        return articlesList;
	}

	
	//단일 이미지 추가하기
//	@Override
//	public int addNewArticle(Map articleMap) throws Exception{
//		return boardDAO.insertNewArticle(articleMap);
//	}
	//여러 이미지 추가하기
	@Override
	public int addNewArticle(Map articleMap) throws Exception{
		int articleNO = boardDAO.insertNewArticle(articleMap);
		
		String imageFileNameCke = (String) articleMap.get("imageFileNameCke");
		if(imageFileNameCke.equals("")) {}
		else {
			boardDAO.insertNewImage(articleMap);
		}
		return articleNO;
	}
	
	 //단일 파일 보이기
//	@Override
//	public ArticleVO viewArticle(int articleNO) throws Exception {
//		ArticleVO articleVO = boardDAO.selectArticle(articleNO);
//		return articleVO;
//	}
	//여러 파일 보이기
		@Override
		public Map viewArticle(int articleNO) throws Exception {
			Map articleMap = new HashMap();
			ArticleVO articleVO = boardDAO.selectArticle(articleNO);
			List<ImageVO> imageFileList = boardDAO.selectImageFileList(articleNO);
			articleMap.put("article", articleVO);
			articleMap.put("imageFileList", imageFileList);
			return articleMap;
		}
	
	@Override
	public void modArticle(Map articleMap) throws Exception {
		boardDAO.updateArticle(articleMap);
		String imageFileNameCke = (String) articleMap.get("imageFileNameCke");
		String imageFileNameCke2 = (String) articleMap.get("originalFileName");
		if(imageFileNameCke.equals(imageFileNameCke2)) {
		}else {
			boardDAO.insertNewImage(articleMap);
		}
	}
	
	@Override
	public void removeArticle(int articleNO) throws Exception {
		boardDAO.deleteArticle(articleNO);
	}
	
	@Override
	public int totArticles() throws Exception {
		int totArticles = boardDAO.totArticles();
		return totArticles;
	}
	
	@Override
	public Map listArticles(Map<String, Integer> pagingMap) throws Exception{
		Map articlesMap = new HashMap();
		List<ArticleVO> articlesList = boardDAO.selectAllArticles(pagingMap);
		int totArticles = boardDAO.totArticles();
		articlesMap.put("articlesList", articlesList);
		articlesMap.put("totArticles", totArticles);
		return articlesMap;
	}
	

	
}
