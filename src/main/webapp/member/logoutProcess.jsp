<%@page import="common.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.removeAttribute("UseId");
session.removeAttribute("UseName");

session.invalidate();

JSFunction.alertLocation(response, "로그아웃 되었습니다.", "./main.jsp");
%>