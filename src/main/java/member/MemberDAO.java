package member;

import javax.servlet.ServletContext;

import common.JDBConnect;

/*
 DAO(Data Access Object)
 : 실제 데이터베이스에 접근하여 여러가지 CRUD작업을 하기위한 객체
 */
public class MemberDAO  extends JDBConnect{
	
	//생성자 메서드
	//매개변수가 4개인 부모의 생성자를 호출하여 DB에 연결한다.
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	//application 내장객체만 매개변수로 전달한 후 DB에 연결한다.
	public MemberDAO(ServletContext application) {
		super(application);
	}
	
	/*
	 사용자가 입력한 아이디, 패스워드를 통해 회원테이블을 select한 후 
	 존재하는 정보인 경우 DTO객체에 그 정보를 담아 반환한다.
	 */
	public MemberDTO getMemberDTO(String uid, String upass) {
		
		//로그인을 위한 쿼리문을 실행한 후  회원정보를 저장하기 위해 생성
		MemberDTO dto = new MemberDTO();
		//로그인 위해 인파라미터가 있는 동적 쿼리문 작성
		String query = "SELECT * FROM member WHERE id=? AND pass=?";
		
		try {
			//쿼리문 실행을 위한 prepared객체 생성 및 인파라미터 설정
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			//select 쿼리문을 실행한 후 ResultSet으로 반환받는다.
			rs = psmt.executeQuery();
			
			//반환된 ResultSet객체를 통해 회원정보가 있는지 확인한다.
			if(rs.next()) {
				//정보가 있다면 DTO객체에 회원정보를 저장한다.
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getDate(4));
				dto.setPhone(rs.getString(5));
				dto.setEmail(rs.getString(6));
				dto.setManager(rs.getInt("manager"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		//호출한 지점으로 DTO객체를 반환한다.
		return dto;
	}
	
	public int insertMember(MemberDTO dto) {
		int result = 0;
		
		try {
			String query = "INSERT INTO member (id, pass, NAME, phone, email) "
					+ "	VALUES (? , ? , ? , ?, ?)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getPhone());
			psmt.setString(5, dto.getEmail());
			
			result = psmt.executeUpdate();
			
		}
		catch (Exception e) {
			System.out.println("회원가입 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	
	public int managerCheck(String str) {
		int result =0;
		try {
			String query = "SELECT manager FROM member "
					+ "WHERE id LIKE '"+ str +"'";
			psmt = con.prepareStatement(query);
			result = psmt.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("매니저 확인 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	
	public MemberDTO selectMember(String id) {
		MemberDTO dto = new MemberDTO();
		
		String query = " SELECT * FROM member WHERE id=? ";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getDate("regidate"));
				dto.setPhone(rs.getString("phone"));
				dto.setEmail(rs.getString("email"));
				dto.setManager(rs.getInt("manager"));
			}
		}
		catch (Exception e) {
			System.out.println("멤버 상세보기 중 예외발생");
			e.printStackTrace();
		}
		return dto;
	}
	
	public int editMember(MemberDTO dto) {
		int result = 0;
		
		try {
			String query = " UPDATE member SET "
					+ " NAME=?, pass= ?, email= ?, phone=? "
					+ " WHERE id=?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getPhone());
			psmt.setString(5, dto.getId());
			result = psmt.executeUpdate();
		}
		catch (Exception e) {
			System.out.println("회원정보 수정중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
}
