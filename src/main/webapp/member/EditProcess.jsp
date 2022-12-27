<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="board.boardDAO"%>
<%@page import="board.boardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%>
<%
//수정폼에서 입력한 내용을 파라미터로 받는다.
String num = request.getParameter("num");
String title = request.getParameter("title");
String content = request.getParameter("content");
String ofile = request.getParameter("ofile");
String boardkind = request.getParameter("boardkind");


//DTO객체에 수정할 내용을 세팅한다.
boardDTO dto = new boardDTO();
dto.setNum(num);
dto.setTitle(title);
dto.setContent(content);
if(ofile != "") {
	String saveDirectory = request.getServletContext().getRealPath("/Uploads_p");
	int maxFileSize = 1024*1024*2;
	
	MultipartRequest mr = new MultipartRequest(request,saveDirectory, maxFileSize ,"utf-8", new DefaultFileRenamePolicy());
	/*
	 만약 객체생성이 되지 않았다면 업로드에 실패한것이다. 이때는 파일의 
	 용량이나 디렉토리의 경로를 확인해본다.
	 만약 글 작성시 파일을 첨부하지 않더라도 객체는 생성되므로 폼값은
	 정상적으로 받을수 있다.
	 */
	String now = new SimpleDateFormat("yyyMMdd_HmsS").format(new Date());
	String ext = ofile.substring(ofile.lastIndexOf("."));
	String newFileName = now + ext;
	File oldFile = new File(saveDirectory + File.separator + ofile);
	File newFile = new File(saveDirectory + File.separator + newFileName);
	oldFile.renameTo(newFile);
	dto.setOfile(ofile);
	dto.setNfile(newFileName);
};
dto.setId(session.getAttribute("UserId").toString());
//DAO객체 생성을 통해 오라클에 연결한다.
boardDAO dao = new boardDAO(application);
//update쿼리문을 실행하여 게시물을 수정한다.
int affected = dao.updateEdit(dto);
//자원해제
dao.close();

if(affected ==1){
	/* 
	수정이 완료되었으면 수정된 내용을 확인하기 위해 주로 내용보기
	페이지로 이동한다.
	*/
	JSFunction.alertLocation(response, "글수정이 완료되었습니다.", "./"+boardkind+"_board.jsp");
}
else{
	//수정에 실패하면 뒤로 이동한다.
	JSFunction.alertBack("수정하기에 실패하였습니다", out);
}
%>
