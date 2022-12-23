/********************
root계정에서 db계정 생성
************************/
#새로운 DB생성 
create database project_db;
#사용자가 DB에 대한 모든 권한을 가질수 있도록 설정한다.
grant all privileges on project_db.* to 'sample_user'@'localhost';
#서버에 즉시 적용한다. Tomcat의 restart(재시작)과 유사하다.
flush PRIVILEGES;

/******************************************
project_db계정에서 하기
*******************************************/

#member테이블 생성
CREATE TABLE member(
	id VARCHAR(30) NOT NULL,
	pass VARCHAR(30) NOT NULL,
	NAME VARCHAR(30) NOT NULL,
	regidate DATETIME DEFAULT CURRENT_TIMESTAMP,
	phone VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	PRIMARY key(id)member
);

ALTER TABLE member ADD manager int DEFAULT 0 NOT NULL;
	
DESC member;

INSERT INTO member (id, pass, NAME, phone, email)
	VALUES ('test1' ,'1111', '테스트1', '010-1111-1111', 'abc@naver.com');

#board테이블 생성
CREATE TABLE board(
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY , 
	title VARCHAR(200) NOT NULL,
	content TEXT NOT NULL,
	id VARCHAR(30) NOT NULL,
	postdate DATETIME DEFAULT CURRENT_TIMESTAMP,
	visitcount SMALLINT DEFAULT 0,
	ofile VARCHAR(200),
	nfile VARCHAR(200),
	downcount SMALLINT DEFAULT 0,
	comment TEXT
);

ALTER TABLE board ADD boardkind VARCHAR(30) NOT NULL ;
DESC board;

INSERT INTO board (title, content, id, boardkind)
	VALUES ('제목1입니다' ,'내용1입니다.', 'test1', 'review');

SELECT * FROM board WHERE title LIKE '%제목%' && boardkind LIKE 'review';


