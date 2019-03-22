package com.zhonghuan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
* @author Hesion
* @version 创建时间：2019年3月20日 下午3:51:15
* 实现退出功能
*/
@WebServlet("/mng/stu/Out")
public class StudentLoginOutServlet extends HttpServlet{
   @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   doPost(req, resp);
	}
   
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	   //获得登陆session
	  HttpSession session = req.getSession();
	  //清除session
	  session.removeAttribute("curr_stu");
	  //跳转到登录页面
	  resp.sendRedirect(req.getContextPath()+"/stulogin.jsp");
	}
   
}
