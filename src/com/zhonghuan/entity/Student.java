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

	private String sname;// 姓名
	private String nation;//  民族
	private String political;// 政治面貌
	private Date birthday;// 出生日期
	private String source; //生源地
	private String school; //学校
	private Date gradutetime; //毕业时间
	private String major; //专业
    private String mobile; //联系电话
    private String realname;//曾用名
    private String nickname;//昵称
    private String email ;//邮箱
    private Boolean gender;//性别
    private Date register_time ;//注册时间
    private String thumbnail;//上传头像
    private String idcard;//身份证
    private String address;//地址
    private String  memo;//备注
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getPolitical() {
		return political;
	}
	public void setPolitical(String political) {
		this.political = political;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public Date getGradutetime() {
		return gradutetime;
	}
	public void setGradutetime(Date gradutetime) {
		this.gradutetime = gradutetime;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public Date getRegister_time() {
		return register_time;
	}
	public void setRegister_time(Date register_time) {
		this.register_time = register_time;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
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
	@Override
	public String toString() {
		return "Student [sname=" + sname + ", nation=" + nation + ", political=" + political + ", birthday=" + birthday
				+ ", source=" + source + ", school=" + school + ", gradutetime=" + gradutetime + ", major=" + major
				+ ", mobile=" + mobile + ", realname=" + realname + ", nickname=" + nickname + ", email=" + email
				+ ", gender=" + gender + ", register_time=" + register_time + ", thumbnail=" + thumbnail + ", idcard="
				+ idcard + ", address=" + address + ", memo=" + memo + "]";
	}
	
	
	
	
}
