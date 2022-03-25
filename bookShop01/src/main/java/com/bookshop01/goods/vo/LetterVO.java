package com.bookshop01.goods.vo;

import oracle.sql.DATE;

public class LetterVO {
	String letter_no;
	String letter_cont;
	DATE letter_date;
	
	public LetterVO() {
		
	}

	public LetterVO(String letter_no, String letter_cont, DATE letter_date) {
		super();
		this.letter_no = letter_no;
		this.letter_cont = letter_cont;
		this.letter_date = letter_date;
	}

	public String getLetter_no() {
		return letter_no;
	}

	public void setLetter_no(String letter_no) {
		this.letter_no = letter_no;
	}

	public String getLetter_cont() {
		return letter_cont;
	}

	public void setLetter_cont(String letter_cont) {
		this.letter_cont = letter_cont;
	}

	public DATE getLetter_date() {
		return letter_date;
	}

	public void setLetter_date(DATE letter_date) {
		this.letter_date = letter_date;
	}
	

}
