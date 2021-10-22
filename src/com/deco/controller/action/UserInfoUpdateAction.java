package com.deco.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.UsersDao;
import com.deco.dto.SessionDto;
import com.deco.dto.Users;

public class UserInfoUpdateAction implements Action {
 // 수정 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		UsersDao dao = UsersDao.getInstance();
		SessionDto sdto = (SessionDto)session.getAttribute("user");
	
		System.out.println(sdto.getIdx());
		Users user = dao.getUser(sdto.getIdx());
		
		request.setAttribute("dto", user);
		ActionForward forward = new ActionForward();
		forward.isRedirect = false;
		forward.url="deco/userInfoUpdate.jsp";
		return forward;	
	}
}