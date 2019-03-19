package com.zhonghuan.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhonghuan.dao.StudentDao;
import com.zhonghuan.dao.common.DaoFactory;
import com.zhonghuan.entity.Student;

/**
 * 查询学生列表
 * 
 * @author Administrator
 *
 */
@WebServlet("/list")
public class StudentListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 1、获取请求数据
		// 2、执行业务逻辑=====>查询所有的学生信息====》创建StuDao对象
		StudentDao stuDao = (StudentDao) DaoFactory.getInstance("studnetDao");
		// list中存放所有学生信息
		List<Student> list = stuDao.findAll();
		// 3、返回响应====》渲染在jsp界面
		// 1)把list带值到列表.jsp页面???
		req.setAttribute("list", list);
		req.getRequestDispatcher("/stulist.jsp").forward(req, resp);

	}
}
