package com.zhonghuan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.StudentDao;
import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.entity.Student;

/**
 * 学生编辑功能
 * 
 * @author Administrator
 *
 */
@WebServlet("/mng/stu/detail")
public class StudentDetailServlet extends HttpServlet {

	protected void doGet(javax.servlet.http.HttpServletRequest req,
			javax.servlet.http.HttpServletResponse resp)
			throws javax.servlet.ServletException, java.io.IOException {
		doPost(req, resp);
	};

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1、获取请求数据
		String id = req.getParameter("id");
		// 2、处理业务逻辑
		StudentDao stuDao = (StudentDao) DaoFactory.getInstance("StudentDao");
		// 根据ID查询学生数据
		Student stu = stuDao.findOne(Long.parseLong(id));
		// 3、返回响应--->请求分派
		req.setAttribute("stu", stu);
		req.getRequestDispatcher("/mng/stu/stuinfo/detail.jsp").forward(req, resp);
	}

}
