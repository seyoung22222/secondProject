<%@page import="common.JSFunction"%>
<%@page import="board.boardDAO"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.boardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//클라이언트가 작성한 폼값을 받는다.
String title =request.getParameter("title");
String content = request.getParameter("content");
String ofile = request.getParameter("ofile");
String boardkind = request.getParameter("boardkind");

//폼값을 DTO객체에 저장한다.
boardDTO dto = new boardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setBoardkind(boardkind);
if(ofile != "") {
	String saveDirectory = request.getServletContext().getRealPath("/Uploads_p");
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

boardDAO dao = new boardDAO(application);

int iResult = dao.insertWrite(dto);

dao.close();
String sessinokind = session.getAttribute("UserId").toString();
if (iResult == 1){
	JSFunction.alertLocation(response, "로그아웃 되었습니다.", "./"+sessinokind+"_board.jsp");
}else {
	//실패했다면 재입력을 위해 글쓰기 페이지로 다시 돌아간다.
   JSFunction.alertBack("글쓰기에 실패하였습니다", out);
}

%>