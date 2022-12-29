<%@page import="org.apache.tomcat.util.http.fileupload.FileUtils"%>
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
//클라이언트가 작성한 폼값을 받는다.
	String saveDirectory = application.getRealPath("/Uploads_p");
	int maxFileSize = 1024 * 1024; 
	String encoding = "UTF-8"; 
	
	try{
		/*
		   앞에서 준비한 3개의 인수와 request내장객체까지를 이용해서 
		   MultipartRequest객체를 생성한다. 해당 객체가 정상적으로 생성되면 
		   파일 업로드는 완료된다. 
		   */
		MultipartRequest mr = new MultipartRequest(request, saveDirectory,maxFileSize, encoding);
		
		 /*
	    파일을 제외한 나머지 폼값을 받는다. 단 이때 request내장객체를 통해서가
	    아니라 mr객체를 통해 받아야 하므로 주의해야한다. 객체는 다르지만 폼값을
	    받기위한 메서드명은 동일하다. 
	    */
		String title =mr.getParameter("title");
		String num =mr.getParameter("num");
		String content = mr.getParameter("content");
		String boardkind = mr.getParameter("boardkind");
		String prevOfile = mr.getParameter("prevOfile");
		String prevNfile = mr.getParameter("prevNfile");
		
		//DTO 생성 및 폼값을 세팅한다. 
		boardDTO dto = new boardDTO();
		dto.setTitle(title);
		dto.setNum(num);
		dto.setContent(content);
		dto.setBoardkind(boardkind);
		dto.setId(session.getAttribute("UserId").toString());
		
		String ofile = mr.getFilesystemName("ofile"); 
		
		if(ofile !=null){
			String now = new SimpleDateFormat("yyyMMdd_HmsS").format(new Date());
			String ext = ofile.substring(ofile.lastIndexOf("."));
			String newFileName = now + ext;
		/*
	      서버에 저장된 파일의 파일명을 새로운 파일명으로 변경해준다. 
	      여기서 사용된 separator는 경로를 표시할때 사용하는 구분기호로
	      윈도우의 경우 \(역슬러쉬), 리눅스의 경우 /(슬러쉬)를 자동으로 
	      부여해준다. File객체를 각각 생성한 후 renameTo()메서드를 통해 변경한다.
	      */
			File oldFile = new File(saveDirectory + File.separator + ofile);
			File newFile = new File(saveDirectory + File.separator + newFileName);
			oldFile.renameTo(newFile);
			dto.setOfile(ofile);
			dto.setNfile(newFileName);
			//새로운파일이 등록되었으므로 기존파일은 삭제한다.
			/* FileUtils.deleteFile(request, "/Uploads_p", prevNfile); */
		}
		else {
			   //새로운 파일을 등록하지 않은 경우 기존 파일명을 DTO에 저장한다.
			   dto.setOfile(prevOfile);
			   dto.setNfile(prevNfile);
		   }
		
		
		//DAO를 통해 데이터베이스에 입력한다. 
		boardDAO dao = new boardDAO(application);
		int iResult = dao.updateEdit(dto);
		
		dao.close();
		if (iResult == 1){
			JSFunction.alertLocation(response, "글수정이 완료되었습니다.", "./"+boardkind+"_board.jsp");
		}else {
			//실패했다면 재입력을 위해 글쓰기 페이지로 다시 돌아간다.
		   JSFunction.alertBack("글수정에 실패하였습니다", out);
		}
		
	}
	catch(Exception e){
		e.printStackTrace();
		System.out.print("파일 업로드 오류");
	}
%>
