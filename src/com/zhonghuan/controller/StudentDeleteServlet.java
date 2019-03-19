package com.zhonghuan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.StudentDao;
import com.zhonghuan.dao.common.DaoFactory;

/**
 * 学生删除功能
 * 
 * @author Administrator
 *
 */
@WebServlet("/delete")
public class StudentDeleteServlet extends HttpServlet {

	protected void doGet(javax.servlet.http.HttpServletRequest req,
			javax.servlet.http.HttpServletResponse resp)
			throws javax.servlet.ServletException, java.io.IOException {
		doPost(req, resp);

	};

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1、获取请求数据
		// 获取要删除学生信息ID
		String id = req.getParameter("id");
		// 2、执行业务逻辑 ====>删除数据库中id的相应记录
		StudentDao stuDao = (StudentDao) DaoFactory.getInstance("studnetDao");
		// 根据ID删除数据
		stuDao.delete(Long.parseLong(id));
		// 3、返回响应 ---->列表功能（查找全部学生信息）
		// 重定向
		resp.sendRedirect(req.getContextPath() + "/list");
	}

}
