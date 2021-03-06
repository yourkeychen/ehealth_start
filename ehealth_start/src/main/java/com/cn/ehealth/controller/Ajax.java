package com.cn.ehealth.controller;

/**
 * ajax
 */
public class Ajax {

	public static final String ERROR = "-1";
	public static final String FAILURE = "0";
	public static final String SUCCESS = "1";
	public static final String EXIST = "2"; //账号已存在标识
	
	private String code;
	private String msg;
	private Object result;
	private Object role; //注册时返回角色

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getResult() {
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}
	
	public Object getRole() {
		return role;
	}

	public void setRole(Object role) {
		this.role = role;
	}
}