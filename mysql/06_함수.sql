DROP TABLE member;

CREATE TABLE member (
  member_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  age INT,
  gender CHAR(1),
  point INT,
  salary INT,
  regdate DATE
);

INSERT INTO member VALUES
(1, 'Hong Gildong', 35, 'M', 500, 3000000, '2023-01-01'),
(2, 'Yi Sunsin', 22, 'M', 200, 2500000, '2022-01-01'),
(3, 'Kim Younghee', 19, 'F', NULL, 1800000, '2025-01-01'),
(4, 'Park Cheolsu', 45, 'M', 900, 5000000, '2021-01-01'),
(5, 'Choi Minsu', 31, 'F', 700, NULL, '2024-01-01');

SELECT *FROM member;

-- 1. 회원 이름의 길이를 조회하시오.
-- 2. 회원 이름을 대문자로 조회하시오.
-- 3. 회원 이름의 첫 글자만 조회하시오.
-- 4. 이름과 성별을 하나의 문자열로 조회하시오.
-- 5. 포인트와 500의 차이를 절대값으로 조회하시오.
-- 6. 급여를 만원 단위로 반올림하여 조회하시오.
-- 7. 오늘 날짜를 조회하시오.
-- 8. 회원 가입 후 경과 일수를 조회하시오.
-- 9. 포인트가 NULL이면 0으로 표시하시오.
-- 10. 포인트가 500 이상이면 '우수', 아니면 '일반'으로 표시하시오.
-- 11. 나이에 따라 연령대를 분류하시오.
-- 12. 전체 회원 수를 조회하시오.
-- 13. 전체 포인트 합계를 조회하시오.
-- 14. 평균 급여를 조회하시오.
-- 15. 성별별 평균 급여를 조회하시오.