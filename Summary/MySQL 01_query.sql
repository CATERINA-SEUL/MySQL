# Database

# 1. CREATE : 생성

# 1) DATABASE

    SHOW DATABASES; #현재 데이터 베이스 확인

# 생성

    CREATE DATABASE test;
      
# 선택
 
	USE test;
     
# 현재 데이터 베이스 확인
 	
 	SELECT DATABASE();

# 2) Table

CREATE TABLE user1(
	user_id INT,
	name VARCHAR(20),
	email VARCHAR(30),
	age INT(3),
	rdate DATE
	
)

#제약조건 포함
CREATE TABLE user2(
	user_id INT PRIMARY KEY AUTO_INCREMENT, 
	
	#PRIMARY KEY : unique (중복되는 데이터가 들어갈 수 없다), not null (null 데이터가 들어갈 수 없다) 라는 조건이 포함 
	#AUTO_INCREMENT : 데이터가 없으면 1씩 증가할 수 있게 숫자를 넣어준다.
	 
	name VARCHAR(20) NOT NULL,
	email VARCHAR(30) UNIQUE NOT NULL,
	age INT(3) DEFAULT '30',
	rdate TIMESTAMP # 데이터를 넣지 않으면 현재시간이 자동으로 입력됨
	
)

---

# 2. Alter : 수정

# 1) DATABASE

SHOW VARIABLES like 'character_set_database'
ALTER DATABASE test CHARACTER SET = utf8

# 2) TABLE

ALTER TABLE user2 ADD tmp TEXT
ALTER TABLE user2 MODIFY COLUMN tmp INT(3)
ALTER TABLE user2 DROP tmp

---

# 3. DROP : 삭제

# 1) DATABASE

CREATE DATABASE tmp
DROP DATABASE tmp

# 2) TABLE

USE test;
CREATE TABLE user3(
	NAME VARCHAR(30),
	AGE INT(3),
	EMAIL VARCHAR(20)
);
SHOW DATABASES;

DROP TABLE user3;

SELECT DATABASE()

---

# 4. INSERT : 삽입

INSERT INTO user1(`user_id`,name, email, age, `rdate`)
VALUE(1, "JIN", 'jin@gmail.com','30',now()),
(2, "JUN", 'jun@gmail.com','32',now()),
(3, "HYUN", 'hyun@gmail.com','32',now()),
(4, "MIN", 'min@gmail.com','31',now()),
(5, "EUN", 'eun@gmail.com','38',now()),
(6, "JAE", 'jae@gmail.com','29',now()),
(7, "JOO", 'joo@daum.net','29',now()),
(8, "HYUK", 'hyuk@naver.com','40',now()),
(9, "HUN", 'hun@gmail.com','27',now()),
(10, "HUR", 'hur@naver.com','25',now()),
(11, "JOON", 'joon@daum.net','41',now())

---

# 5. SELECT

SELECT user_id, name, age # 데이터 조회
FROM user1

SELECT *
FROM user1

SELECT user_id as 'ID', name as 'USER NAME', age as 'AGES'
FROM user1 

---

# 1) DISTINCT : 중복제거

SELECT DISTINCT(NAME)
FROM user1

---

# 2) WHERE : 조건 검색 

SELECT *
FROM user1
WHERE age != 30

# 30세 이상의 사용자를 출력해서 이름의 갯수를 출력
SELECT COUNT(DISTINCT(name))
FROM user1
WHERE age >= 30

---

SELECT *
FROM user1
WHERE age > 20 | age < 40

# 3) BETWEEN A AND B

SELECT *
FROM user1
WHERE age BETWEEN 32 AND 40

---

# 4) ORDER BY : 정렬

SELECT *
FROM user1
ORDER BY age ASC

SELECT *
FROM user1
ORDER BY age DESC

SELECT *
FROM user1
ORDER BY name , age DESC #이중정렬

---
# 나이가 20세에서 40세 사이에 있는 사용자를 이름 순으로 내림차순 정렬하고 중복데이터를 제거해서 이름만 출력

SELECT DISTINCT (name)
FROM user1
WHERE age BETWEEN 20 AND 40
ORDER BY name DESC

---

# 5) CONCAT

SELECT name, age, CONCAT (name, age) as 'name_age'
FROM user1

---

# 6) like : where 절에서 특정 문자열이 들어간 데이터 조회

SELECT *
FROM user1
-- WHERE email like '%@naver.%'
WHERE email not like '%net'

---

# 7) in : 여러개의 조건을 조회할 때 사용

SELECT *
FROM user1
WHERE name in ('JUN', 'HUN', 'JIN')

---
#서브쿼리

SELECT * 
FROM user1
WHERE name in (
	SELECT DISTINCT(name)
	FROM user1 # 다른 테이블에서 가져올 수 있다
	WHERE age BETWEEN 20 AND 30
)

---
# 8) LIMIT : 출력 갯수 제한

SELECT *
FROM user1
LIMIT 3

SELECT *
FROM user1
LIMIT 3, 5 # row 3에서 밑으로 5개

--- 

# 6. UPDATE

UPDATE user1
SET age = 20, rdate = '2019-12-23'
WHERE age BETWEEN 20 AND 29

SELECT *
FROM user1
WHERE age BETWEEN 20 AND 29

---

# 7. DELETE 

DELETE FROM user1
WHERE name = 'JIN'

SELECT *
FROM user1


