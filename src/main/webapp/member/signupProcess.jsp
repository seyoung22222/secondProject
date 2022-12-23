<%@page import="common.JSFunction"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String mysqlDriver = application.getInitParameter("MysqlDriver");
String mysqlURL = application.getInitParameter("MysqlURL");
String mysqlId = application.getInitParameter("MysqlId");
String mysqlPwd = application.getInitParameter("MysqlPwd");
MemberDAO dao = new MemberDAO(mysqlDriver, mysqlURL, mysqlId, mysqlPwd); 


String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String email = request.getParameter("email")+ "@"+ request.getParameter("emailaddr");
String phone = request.getParameter("htel1")+ "-" +request.getParameter("htel2")
							+ "-" +request.getParameter("htel3");

MemberDTO dto = new MemberDTO();
dto.setName(name);
dto.setId(id);
dto.setPass(pw);
dto.setEmail(email);
dto.setPhone(phone);

int memberchk = dao.insertMember(dto);

dao.close();

if(memberchk == 1){
	JSFunction.alertLocation(response, "회원가입 완료", "./login.jsp");
}else{
	JSFunction.alertBack("회원가입에 실패하였습니다.", out);
}

%>