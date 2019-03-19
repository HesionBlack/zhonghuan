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
 * 学生更新业务
 * 
 * @author Administrator
 *
 */
@WebServlet("/update")
public class StudentUpdateServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		// 1、获取请求参数
		String id = req.getParameter("id");
		String username = req.getParameter("usname");
		String gender = req.getParameter("gender");
		String birthday = req.getParameter("birthday");
		String address = req.getParameter("address");
		String memo = req.getParameter("memo");
		// 2、执行业务逻辑
		StudentDao stuDao = (StudentDao) DaoFactory.getInstance("studnetDao");
		Student stu = stuDao.findOne(Long.parseLong(id));
		stu.setName(username);
		stu.setGender(gender);
		stu.setAddress(address);
		stu.setMemo(memo);
		stuDao.update(stu);
		// 3、返回响应--->重新查找，刷新
		resp.sendRedirect(req.getContextPath() + "/list");
	}

}
