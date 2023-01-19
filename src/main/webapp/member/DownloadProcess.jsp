<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
//다운로드 메서드를 호출한다.
//FileUtil.download(request, response, "/Uploads", nfile, ofile);
	
	
	String fileName = request.getParameter("nfile");
	String downLoadFile = "C:/02Workspaces/K08JSPServlet/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/project02/Uploads_p/" + fileName; 
	
	File file = new File(downLoadFile);
    FileInputStream in = new FileInputStream(downLoadFile);
	
    fileName = new String(fileName.getBytes("utf-8"), "8859_1");   

    response.setContentType("application/octet-stream");							
    response.setHeader("Content-Disposition", "attachment; filename=" + fileName ); 

	out.clear();					
	out = pageContext.pushBody();
    
    OutputStream os = response.getOutputStream();
    
    int length;
    byte[] b = new byte[(int)file.length()];

    while ((length = in.read(b)) > 0) {
    	os.write(b,0,length);
    }
    
    os.flush();
    
    os.close();
    in.close();

%>