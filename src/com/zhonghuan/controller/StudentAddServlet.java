package com.zhonghuan.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.StudentDao;
import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.entity.Student;

/**
* @author Hesion
* @version 创建时间：2019年3月21日 上午9:53:07
* 报考学生添加功能
*/
@WebServlet("/mng/stu/add")
public class StudentAddServlet extends HttpServlet{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	   doPost(req, resp);
}
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	   req.setCharacterEncoding("UTF-8");
		//1接受参数
	   //学生报考信息名称
	   String sname = req.getParameter("sname");
	   //民族
	   String nation = req.getParameter("nation");
	   //政治面貌
	   String political = req.getParameter("political");
	   //生日
	   String birthday = req.getParameter("birthday");
	   //地址
	   String address = req.getParameter("address");
	   //生源地
	   String source = req.getParameter("source");
	   //所在院校
	   String school = req.getParameter("school");
	   //毕业时间
	   String gradutetime = req.getParameter("gradutetime");
	   //所学专业
	   String major = req.getParameter("major");
	   //联系方式
	   String mobile = req.getParameter("mobile");
	   //曾用名
	   String realname = req.getParameter("real_name");
	   //邮箱
	   String email = req.getParameter("email");
	   //性别
	   String gender = req.getParameter("gender");
	   //注册时间
	   String register_time = req.getParameter("register_time");
	   //身份证号
	   String idcard = req.getParameter("idcard");
	   //上传头像
	   String title = req.getParameter("title");
	   //备注
	   String memo  = req.getParameter("memo");
	   String nickname = req.getParameter("nickname");	
	   //2 处理逻辑业务
	   StudentDao stuDao = (StudentDao)DaoFactory.getInstance("StudentDao");
	   Student stu = new Student();
	   stu.setSname(sname);
	   stu.setNation(nation);
	   stu.setPolitical(political);
	   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	   try {
		   stu.setBirthday(sdf.parse(birthday));
	   }catch (ParseException e) {
		   e.printStackTrace();
	   }
	   stu.setAddress(address);
	   stu.setSource(source);
	   stu.setSchool(school);
	   try {
		   stu.setGradutetime(sdf.parse(gradutetime));
	   }catch (ParseException e) {
		   e.printStackTrace();
	   }
	   stu.setMajor(major);
	   stu.setMobile(mobile);
	   stu.setRealname(realname);
	   stu.setEmail(email);
	   if(gender.equals("1")) {
		   stu.setGender(true);
	   }else {
		   stu.setGender(false);
	   }
	   
	   stu.setRegister_time(new Date());
	   stu.setThumbnail(title);
	   stu.setMemo(memo);
	   stu.setNickname(nickname);
	   stu.setIdcard(idcard);
	   
	   stuDao.save(stu);
	   //3返回响应
        resp.sendRedirect(req.getContextPath()+"/mng/stu/List");
   }
}
