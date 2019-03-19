package com.zhonghuan.entity;

import java.util.Date;

import com.zhonghuan.entity.common.Entity;

/**
 * 学生实体类 :实体类中的字段名必须和数据库中的字段名完全一致<br/>
 * 表名和实体类类名一致。
 * 
 * @author Administrator
 *
 */
public class Student extends Entity {

	private String name; // 学生姓名
	private String gender;// 性别
	private String address;// 地址
	private String memo;// 备注
	private Date birthday;// 出生日期

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", gender=" + gender + ", address="
				+ address + ", memo=" + memo + ", birthday=" + birthday + "]";
	}

}
