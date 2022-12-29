<%@page import="board.boardDTO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//DB연결 및 CRUD작업을 위한 DAO객체를 생성한다.
boardDAO dao = new boardDAO(application);
/*
검색어가 있는 경우 클라이언트가 선택한 필드명과 검색어를 저장한
Map컬렉션을 생성한다.
*/
Map<String, Object> param = new HashMap<String, Object>();
/* 검색폼에서 입력한 검색어와 필드명을 파라미터로 받아온다.
해당<form>의 전송방식은 get, action속성은 없는 상태이므로 현재 
페이지로 폼값이 전송된다. */
String field = request.getParameter("field");
String search = request.getParameter("search");
String boardkind = request.getParameter("boardkind");
//사용자가 입력한 검색어가 있다면..
if(search != null){
	/* Map컬렉션에 컬럼명과 검색어를 추가한다. */
	param.put("field", field);
	param.put("search", search);
}
//Map컬렉션을 인수로 게시물의 갯수를 카운트한다.
int totalCount = dao.selectCount(param, boardkind);
//목록에 출력할 게시물을 추출하여 반환받는다.
List<boardDTO> boardLists = dao.selectList(param, boardkind);
//자원해제
dao.close();
%>