<%@page import="common.JSFunction"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
MemberDAO dao = new MemberDAO(application);

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

int memberedit = dao.editMember(dto);
System.out.print(dto.getPass());

dao.close();

if(memberedit == 1){
	JSFunction.alertLocation(response, "정보수정 완료", "./main.jsp");
}else{
	JSFunction.alertBack("정보수정에 실패하였습니다.", out);
}
%>