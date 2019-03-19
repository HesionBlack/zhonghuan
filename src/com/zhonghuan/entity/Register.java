package com.zhonghuan.entity;

import java.util.Date;

import com.zhonghuan.entity.common.Entity;

/**
 * 学生端注册实体类
 * 
 * @author Administrator
 *
 */
public class Register extends Entity {

	// 学生端登录名
	private String login;

	// 学生端密码
	private String pwd;

	// 注册 时间
	private Date regitster_time;

	// 备注
	private String memo;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getRegitster_time() {
		return regitster_time;
	}

	public void setRegitster_time(Date regitster_time) {
		this.regitster_time = regitster_time;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Override
	public String toString() {
		return "Register [login=" + login + ", pwd=" + pwd
				+ ", regitster_time=" + regitster_time + ", memo=" + memo + "]";
	}

}
