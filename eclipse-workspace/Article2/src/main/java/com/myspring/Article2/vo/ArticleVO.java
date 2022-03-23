package com.myspring.Article2.vo;

import org.springframework.stereotype.Component;


@Component("articleVO")
public class ArticleVO {
	private String id;
	private String pwd;
	private String name;
	private String privllege;
	private String email;
	private String addr;
	
	
	public ArticleVO() {

	}
	
	public ArticleVO(String id, String pwd, String name, String privllege, String email, String addr) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.privllege = privllege;
		this.email = email;
		this.addr = addr;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrivllege() {
		return privllege;
	}
	public void setPrivllege(String privllege) {
		this.privllege = privllege;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
}
