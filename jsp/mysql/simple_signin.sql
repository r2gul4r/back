-- DB 생성
CREATE SCHEMA `testdb` DEFAULT CHARACTER SET utf8mb4 ;

-- DB 사용
USE testdb;
-- 테이블 생성
 CREATE TABLE users (
	userid VARCHAR(50) PRIMARY KEY, 
    userpw VARCHAR(50) NOT NULL 
);

INSERT INTO users (userid, userpw) 
VALUES ('asdasd', 'pass134');

INSERT INTO users (userid, userpw) VALUES
('minsu01', 'pass1234'),
('jiyeon88', 'hello2026'),
('sungho_dev', 'devpass99'),
('yuna_kim', 'yuna!2026'),
('taeho77', 'th7700pw');

-- 조회
SELECT * FROM users;

-- 삭제
DELETE FROM `testdb`.`users` WHERE (`userid` = 'sungho_dev');