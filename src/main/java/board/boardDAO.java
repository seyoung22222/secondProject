package board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class boardDAO extends JDBConnect{
	
	public boardDAO(ServletContext application) {
		super(application);
	}
	
	public int selectCount(Map<String, Object> map, String boardkind) {
		   int totalCount = 0;
		   
		   String query = "SELECT COUNT(*) FROM board "
		   		+ " WHERE boardkind like '"+ boardkind + "' ";
		   if(map.get("search") != null) {
			   query += " && "+ map.get("field") 
			   + " LIKE '%"+ map.get("search")+ "%'";
		   }
		   
		   try {
		         stmt = con.createStatement();
		         rs = stmt.executeQuery(query);
		         rs.next();
		         totalCount = rs.getInt(1);
		      } 
		      catch (Exception e) {
		         System.out.println("게시물 수를 구하는 중 예외 발생");
		         e.printStackTrace();
		      }
		   return totalCount;
	   }
	
	public List<boardDTO> selectList(Map<String, Object> map, String boardkind){
	      
	      List<boardDTO> bbs = new Vector<boardDTO>();
	      
	      String query = "SELECT * FROM board "
			   		+ " WHERE  boardkind like '"+ boardkind + "' ";
			   if(map.get("search") != null) {
				   query += " && "+ map.get("field") 
				   + " LIKE '%"+ map.get("search")+ "%'";
			   }
	      query += " ORDER BY num DESC ";
	      
	      try {
	         stmt = con.createStatement();
	         rs = stmt.executeQuery(query);
	         
	         while (rs.next()) {
	        	 boardDTO dto = new boardDTO();
	            
	            dto.setNum(rs.getString("num"));
	            dto.setTitle(rs.getString("title"));
	            dto.setContent(rs.getString("content"));
	            dto.setId(rs.getString("id"));
	            dto.setPostdate(rs.getDate("postdate"));
	            dto.setVisitcount(rs.getString("visitcount"));
	            dto.setOfile(rs.getString("ofile"));
	            dto.setNfile(rs.getString("nfile"));
	            dto.setDowncount(rs.getInt("downcount"));
	            dto.setComment(rs.getString("comment"));
	            dto.setBoardkind(rs.getString("boardkind"));
	   
	            bbs.add(dto);
	         }
	      } 
	      catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return bbs;
	   }

	public int insertWrite(boardDTO dto) {
		   int result = 0;
		   
		   try {
			   String query = "INSERT INTO board( "
					   		+ " title, content, id, ofile, nfile, boardkind, comment) "
					   		+ " VALUES ( "
					   		+ " ?, ?, ?, ?, ?, ?, ?)";
			   
			   psmt = con.prepareStatement(query);
			   psmt.setString(1, dto.getTitle());
			   psmt.setString(2, dto.getContent());
			   psmt.setString(3, dto.getId());
			   psmt.setString(4, dto.getOfile());
			   psmt.setString(5, dto.getNfile());
			   psmt.setString(6, dto.getBoardkind());
			   psmt.setString(7, dto.getComment());
			   
			   result = psmt.executeUpdate();
		   }
		   catch (Exception e) {
			   System.out.println("게시물 입력 중 예외 발생");
			   e.printStackTrace();
		   }
		   return result;
		   
	   }
}
