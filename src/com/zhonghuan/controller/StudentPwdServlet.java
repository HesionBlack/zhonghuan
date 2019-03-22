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
* @version 创建时间：2019年3月22日 下午3:19:27
* 学生端账号密码更改
*/
@WebServlet("/mng/stu/pwd")
public class StudentPwdServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	//获取参数
    	String oldpwd = req.getParameter("oldpwd");
    	String newpwd = req.getParameter("newpwd");
    	String okpwd = req.getParameter("okpwd");
    	//处理逻辑业务
    	//验证用户登录的旧密码是否正确
    	HttpSession session = req.getSession();
    	//从session中获取已登录用户信息
    	Register  register = (Register) session.getAttribute("curr_stu");
    	if(register.getPwd().equals(oldpwd)) {
    		//2）两次密码输入一致
    		if(newpwd.equals(okpwd)) {
    			//3)更改数据库中的密码
    			RegisterDao rsDao = (RegisterDao)DaoFactory.getInstance("registerDao");
    			rsDao.updatePwd(register.getId(),newpwd);
    			req.setAttribute("msg", "密码修改成功请重新登录");
    			req.getRequestDispatcher("/stulogin.jsp").forward(req, resp);
    		}else {
    			req.setAttribute("msg", "两次密码输入不一致");
    			req.getRequestDispatcher("/mng/stu/pwd/pwd.jsp").forward(req, resp);
    		}
    		
    	}else {
    	   //界面提示用户旧密码输入错误
    	}
    	
    	//返回响应---》跳转登录页面重新登录
    	req.setAttribute("msg", "旧密码输入错误");
    	req.getRequestDispatcher("/mng/stu/pwd/pwd.jsp").forward(req, resp);
    }
}
