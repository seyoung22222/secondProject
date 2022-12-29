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
		   		+ " WHERE boardkind ='"+ boardkind+"' ";
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
			   		+ " WHERE  boardkind ='"+ boardkind+"' ";
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
	
	 //인수로 전달된 게시물의 일련번호로 하나의 게시물을 인출한다.
	   public boardDTO selectView(String num) {
		   //하나의 레코드 저장을 위한 DTO객체 생성
		   boardDTO dto = new boardDTO();
		   
		   //inner join(내부조인)을 통해 member테이블의 name컬럼까지 가져온다
		   String query = "SELECT Bo.*, Me.name "
		   		+ " FROM board Bo "
		   		+ "    INNER JOIN member Me ON Bo.id = Me.id "
		   		+ " WHERE num=?";
		   
		   try {
			   //인파라미터 설정 및 쿼리문 실행
			   psmt = con.prepareStatement(query);
			   psmt.setString(1, num);
			   rs = psmt.executeQuery();
			   /*
			    일련번호는 중복되지 않으므로 단 한개의 게시물만 인출하게 된다.
			    따라서 while문이 아닌 if문으로 처리한다.
			    next() 메서드는 ResultSet으로 반환된 게시물을 확인해서 
			    존재하면 true를 반환해준다.
			    */
			   if(rs.next()) {
				   //DTO객체에 레코드를 저장한다.
				   dto.setNum(rs.getString(1));
				   dto.setTitle(rs.getString(2));
				   /*
				    각 컬럼의 값을 추출할때 1부터 시작하는 인덱스와 컬럼명 
				    둘다 사용할 수 있다. 날짜인 경우에는 getDate() 메서드로
				    추출할 수 있다.
				    */
				   dto.setContent(rs.getString("content"));
				   dto.setId(rs.getString("id"));
				   dto.setPostdate(rs.getDate("postdate"));
				   dto.setVisitcount(rs.getString(6));
				   dto.setOfile(rs.getString("ofile"));
				   dto.setNfile(rs.getString("nfile"));
				   dto.setDowncount(rs.getInt("downcount"));
				   dto.setComment(rs.getString("comment"));
				   dto.setBoardkind(rs.getString("boardkind"));
				   dto.setName(rs.getString("name"));
			   }
		   }
		   catch (Exception e) {
			   System.out.println("게시물 상세보기 중 예외발생");
			   e.printStackTrace();
		   }
		   return dto;
	   }
	   
	   //게시물의 조회수를 1 증가시킨다.
	   public void updateVisitCount(String num) {
		   
		   /* 게시물의 일련번호를 통해 visitcount를 1증가 시킨다.
		    해당 컬럼은 number타입이므로 사칙연산이 가능하다.  */
		   String query = "UPDATE board SET "
		   				+ " visitcount=visitcount+1 "
		   				+ " WHERE num=?";
		   try {
			   psmt = con.prepareStatement(query);
			   psmt.setString(1, num);
			   psmt.executeQuery();
		   }
		   catch (Exception e) {
			   System.out.println("게시물 조회수 증가 중 예외발생");
			   e.printStackTrace();
		   }
	   }
	   //게시물 수정하기
	   public int updateEdit(boardDTO dto) {
		   int result = 0;
		   
		   try {
			   //특정 일련번호에 해당하는 게시물을 수정한다.
			   String query = "UPDATE board SET "
			   		+ " title=?, content=?, ofile=?, nfile=? "
			   		+ " WHERE num=?";
			   
			   psmt = con.prepareStatement(query);
			   //인파라미터 설정하기
			   psmt.setString(1, dto.getTitle());
			   psmt.setString(2, dto.getContent());
			   psmt.setString(3, dto.getOfile());
			   psmt.setString(4, dto.getNfile());
			   psmt.setString(5, dto.getNum());
			   //수정된 레코드의 갯수가 반환된다.
			   result = psmt.executeUpdate();
			   System.out.print(result);
		   }
		   catch (Exception e) {
			   System.out.println("게시물 수정 중 예외 발생");
			   e.printStackTrace();
		   }
		   return result;
	   }
	   
	   //게시물 삭제하기
	   public int deletePost(boardDTO dto) {
		   int result = 0;
		   
		   try {
			   //인파라미터가 있는 delete쿼리문 작성
			   String query = "DELETE FROM board WHERE num=?";
			   
			   psmt = con.prepareStatement(query);
			   psmt.setString(1, dto.getNum());
			   
			   result = psmt.executeUpdate();
		   }
		   catch (Exception e) {
			   System.out.println("게시물 삭제 중 예외 발생");
			   e.printStackTrace();
		   }
		   return result;
	   }
}
