package com.zhonghuan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhonghuan.dao.RegisterDao;
import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.entity.Register;

/**
* @author Hesion
* @version 创建时间：2019年3月19日 下午3:59:17
* 学生登录功能实现
*/
@WebServlet("/Login")
public class StudentLoginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1、获取请求参数
		  String login = req.getParameter("usname");
		  String pwd = req.getParameter("pwd");
		  String vc = req.getParameter("cc");
		  System.out.println(vc);
		//2、处理逻辑业务
		  //系统验证码 
		  String sysvc = (String)req.getServletContext().getAttribute("vc");
		  System.out.println(sysvc);
		  if(sysvc.equalsIgnoreCase(vc)) {
			   //去数据库连接验证正确性
			  RegisterDao rsDao = (RegisterDao)DaoFactory.getInstance("registerDao");
			  Register register = rsDao.loginService(login,pwd);
			  
			  if(register!=null) {
				  //从数据库中证实用户名密码是正确的
				  //用户密码正确要求生成登录信息并存入session
				  HttpSession session = req.getSession();
				  session.setAttribute("curr_stu", register);
				  //跳转到主页面
				  resp.sendRedirect(req.getContextPath()+"/mng/stu/home.jsp");
			  }else {
				  req.setAttribute("msg","啊哟，用户名或者密码输入错误了啊，请重新输入！");
			  }
				  
		  }else {
			  //验证码出错返回登录页面并且提示
			  req.setAttribute("msg", "验证码输入错误,请重新输入");
			  req.getRequestDispatcher("/stulogin.jsp").forward(req, resp);
			  
		  }
		//3、请求返回跳转到主页面
		
	}
	
}
