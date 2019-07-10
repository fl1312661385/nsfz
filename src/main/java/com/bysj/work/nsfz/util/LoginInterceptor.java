package com.bysj.work.nsfz.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("我是拦截所有请求的拦截器！！！！！！======");
		HttpSession session = request.getSession();
        // 从session当中获取特定的数据
        Object obj = session.getAttribute("userName");
        if (obj == null) {
            // 未登录，重定向到登录页面
        	response.sendRedirect(request.getContextPath() + "/login.jsp");
            return false;
        }
        // 已登录，继续向后调用
        

		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
