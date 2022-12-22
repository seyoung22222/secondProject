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
	PRIMARY key(id)member
);

ALTER TABLE member ADD phone VARCHAR(50) NOT NULL;
ALTER TABLE member ADD email VARCHAR(100) NOT NULL;	
DESC member;

INSERT INTO member (id, pass, NAME, phone, email)
	VALUES ('test1' ,'1111', '테스트1', '010-1111-1111', 'abc@naver.com');










