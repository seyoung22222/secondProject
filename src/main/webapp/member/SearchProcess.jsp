<%@page import="board.boardDTO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//DB���� �� CRUD�۾��� ���� DAO��ü�� �����Ѵ�.
boardDAO dao = new boardDAO(application);
/*
�˻�� �ִ� ��� Ŭ���̾�Ʈ�� ������ �ʵ��� �˻�� ������
Map�÷����� �����Ѵ�.
*/
Map<String, Object> param = new HashMap<String, Object>();
/* �˻������� �Է��� �˻���� �ʵ���� �Ķ���ͷ� �޾ƿ´�.
�ش�<form>�� ���۹���� get, action�Ӽ��� ���� �����̹Ƿ� ���� 
�������� ������ ���۵ȴ�. */
String field = request.getParameter("field");
String search = request.getParameter("search");
String boardkind = request.getParameter("boardkind");
//����ڰ� �Է��� �˻�� �ִٸ�..
if(search != null){
	/* Map�÷��ǿ� �÷���� �˻�� �߰��Ѵ�. */
	param.put("field", field);
	param.put("search", search);
}
//Map�÷����� �μ��� �Խù��� ������ ī��Ʈ�Ѵ�.
int totalCount = dao.selectCount(param, boardkind);
//��Ͽ� ����� �Խù��� �����Ͽ� ��ȯ�޴´�.
List<boardDTO> boardLists = dao.selectList(param, boardkind);
//�ڿ�����
dao.close();
%>