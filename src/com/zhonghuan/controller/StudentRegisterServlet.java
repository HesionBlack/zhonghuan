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

import com.zhonghuan.dao.RegisterDao;
import com.zhonghuan.dao.StudentDao;
import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.entity.Register;
import com.zhonghuan.entity.Student;

/**
 * 添加学生信息
 * 
 * @author Administrator
 *
 */
@WebServlet("/register")
public class StudentRegisterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		// 1、获取请求数据=====》获取用户名和密码
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String description = req.getParameter("description");
		System.out.println(username);
		// 2、执行业务逻辑 ====>保存在数据库
		RegisterDao rs = (RegisterDao)DaoFactory.getInstance("registerDao");
		Register register = new Register();
		register.setLogin(username);
		register.setPwd(password);
		register.setMemo(description);
		register.setRegitster_time(new Date());
		rs.save(register);
		// 3、返回响应===>登录界面返回响应
        req.setAttribute("msg","注册成功，请登录");
		req.getRequestDispatcher("/stulogin.jsp").forward(req,resp);

	}
}
