package member;
/*
 DTO(Data Transfer Object)
 : JSP와 Java파일간에 데이터를 전달하기 위한 객체로 자바빈 규약에
 의해 제작한다.
 자바빈 규약은 교재 115페이지를 참조한다.
 */

public class MemberDTO {
	
	//멤버변수: member테이블의 컬럼과 동일하게 설정한다.
	private String id;
	private String pass;
	private String name;
	private java.sql.Date regidate;
	private String phone;
	private String email;
	private int manager;
	
	/*
	 생성자의 경우 꼭 필요한 경우가 아니라면 생성하지 않아도 된다.
	 생성자를 생성하지 않는 경우 컴파일러에 의해 디폴트생성자
	 (기본생성자)가 자동으로 추가되기 때문이다.
	 */
	
	public int getManager() {
		return manager;
	}
	public void setManager(int manager) {
		this.manager = manager;
	}
	//정보은닉된 멤버변수에 접근을 위해 public으로 정의된 
	//getter, setter를 정의한다.
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public java.sql.Date getRegidate() {
		return regidate;
	}
	public void setRegidate(java.sql.Date regidate) {
		this.regidate = regidate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
