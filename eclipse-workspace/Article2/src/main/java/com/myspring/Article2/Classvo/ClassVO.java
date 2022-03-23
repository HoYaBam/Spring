package com.myspring.Article2.Classvo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("classVO")
public class ClassVO {
	private String class_id;
	private String sub_no;
	private String class_rate;
	private String curr;
	private Date meke_per;
	private String plan;
	private String name;
	private String sub_name;
	
	public ClassVO() {
		
	}
	
	public ClassVO(String class_id, String sub_no, String class_rate, String curr, Date meke_per, String plan,
			String name, String sub_name) {
		super();
		this.class_id = class_id;
		this.sub_no = sub_no;
		this.class_rate = class_rate;
		this.curr = curr;
		this.meke_per = meke_per;
		this.plan = plan;
		this.name = name;
		this.sub_name = sub_name;
	}  

    public ClassVO(String class_id, String name, String sub_name) {
		super();
		this.class_id = class_id;
		this.name = name;
		this.sub_name = sub_name;
	}


	public String getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = class_id;
	}

	public String getSub_no() {
		return sub_no;
	}

	public void setSub_no(String sub_no) {
		this.sub_no = sub_no;
	}

	public String getClass_rate() {
		return class_rate;
	}

	public void setClass_rate(String class_rate) {
		this.class_rate = class_rate;
	}

	public String getCurr() {
		return curr;
	}

	public void setCurr(String curr) {
		this.curr = curr;
	}

	public Date getMeke_per() {
		return meke_per;
	}

	public void setMeke_per(Date meke_per) {
		this.meke_per = meke_per;
	}

	public String getPlan() {
		return plan;
	}

	public void setPlan(String plan) {
		this.plan = plan;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}


}
