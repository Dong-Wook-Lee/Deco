package com.deco.controller.action;

import java.io.IOException; 
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.DibsDao;
import com.deco.dao.ReviewDao;
import com.deco.dto.Dibs;
import com.deco.dto.Food;
import com.deco.dto.SessionDto;

public class FoodDibsListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		SessionDto user = (SessionDto)session.getAttribute("user");
		if(user==null) {
			request.setAttribute("message", "세션이 만료되었습니다. 로그인 화면으로 이동합니다.");
			request.setAttribute("url", "home_login.deco");
			forward.isRedirect = false;
			forward.url="error/alert.jsp";
			return forward;
		}
		
		// 사용자 닉네임 이전 페이지에서 session으로 값 받아 넘겨주기 // request.getParameter로 받기
		String nickname = user.getNickname();
		
		DibsDao dao = DibsDao.getInstance();
		Dibs dibs = dao.getDibs(nickname);
	
		List<Food> listFood = new ArrayList<Food>();

		String dibFood = dibs.getDibFood();
		StringTokenizer dibsFood = new StringTokenizer(dibFood,"/");
		while(dibsFood.hasMoreTokens()) {	//다음 토큰이 있나?
			String fidx = dibsFood.nextToken(); // 토큰을 idx에 String 으로 담음
			Food food = dao.getFoodDibs(fidx); 
			listFood.add(food);
		}

		
		
		
		List<Food> list = new ArrayList<Food>();
		 ReviewDao rdao = ReviewDao.getInstance();
	      
	      List<Integer> reviewcnts = new ArrayList<>();
	      for(int i=0;i<list.size();i++) {  
	         int reviewCount=rdao.cafeCount(list.get(i).getFidx());
	         reviewcnts.add(reviewCount);
	      }
	
	    request.setAttribute("reviewcnts",reviewcnts);
	
		request.setAttribute("dibsFood", listFood);
		forward.isRedirect=false;
		forward.url="deco/fooddibsList.jsp";
		return forward;
	}

}
