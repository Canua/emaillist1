<%@page import="com.douzon.emaillist.dao.EmaillistDao"%>
<%@page import="com.douzon.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); // 이렇게 받아야 한글이 안깨진다

	// from.jsp에서 확인
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");

	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);

	new EmaillistDao().insert(vo);

	response.sendRedirect("/emaillist1"); //Redirect 정보를 보낸다.
%>