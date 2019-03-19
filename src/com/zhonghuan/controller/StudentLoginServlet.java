package com.zhonghuan.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		//2、处理逻辑业务
		//3、请求返回跳转到主页面
		
	}
	
}
