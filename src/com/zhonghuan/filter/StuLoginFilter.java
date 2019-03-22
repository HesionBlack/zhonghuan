package com.zhonghuan.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhonghuan.entity.Register;

/**
* @author Hesion
* @version 创建时间：2019年3月19日 下午10:09:09
* 类说明
*/
@WebFilter("/mng/stu/*")
public class StuLoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
    /**
     * 过滤功能
     */
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest)arg0;
		HttpServletResponse resp = (HttpServletResponse)arg1;
       //1)查看用户是否登录过====》判断session
		HttpSession session = req.getSession();
		Register register = (Register)session.getAttribute("curr_stu");
	    if(register!=null) {
	    	//2)如果已经登录过则放行,并跳转到主页面
	    	 arg2.doFilter(arg0, arg1);
	    }else
	    {
	    	//3）如果没登录，则跳转到登录界面给出提示
	    	req.setAttribute("msg", "你还没有登录,请登录");
	    	req.getRequestDispatcher("/stulogin.jsp").forward(req,resp);
	    }
		
		
		
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
  
}
