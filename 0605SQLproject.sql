/*1. 학생명단 테이블을 생성하고 아래처럼 구성
- 조건1. 학번: 문자열 타입, 기본키로 설정
- 조건2. 이름: 문자열 타입, null키로 지정하면 안되는 칼럼
- 조건3. 학년: 숫자 타입
- 조건4. 전공: 문자열 타입*/

CREATE TABLE StudentList(학번 varchar(10) PRIMARY KEY, 이름 varchar(10) NOT NULL, 학년 Number(5), 전공 varchar(10));

/*2. 교수명단 테이블 생성하고 아래처럼 구성
-번호: 문자열 타입, 기본키로 설정
- 이름: 문자열 타입, null로 지정x
- 전화번호: 문자열, null x
- 소속전공: 문자열, null x
- 나이: 숫자 타입*/

CREATE TABLE ProfessorList(번호 varchar(10) PRIMARY KEY, 이름 varchar(10) NOT NULL, 전화번호 varchar(20) NOT NULL, 소속전공 varchar(10) NOT NULL, 나이 NUMBER(3));

/*3. 과제항목 참조*/

INSERT INTO STUDENTLIST (학번, 이름, 학년, 전공) VALUES (123, '김길동', 1 , '컴퓨터공학');
INSERT INTO STUDENTLIST (학번, 이름, 학년, 전공) VALUES (124, '권길동', 2 , '통계');
INSERT INTO STUDENTLIST (학번, 이름, 학년, 전공) VALUES (125, '박길동', 4 , '국어국문');
INSERT INTO STUDENTLIST (학번, 이름, 학년, 전공) VALUES (126, '정길동', 4 , '무역');
INSERT INTO STUDENTLIST (학번, 이름, 학년, 전공) VALUES (127, '이길동', 3 , '국어국문');


/*4. 과제항목 참조*/

INSERT INTO PROFESSORLIST (번호, 이름, 전화번호, 소속전공, 나이) VALUES (1,'김철수','010-0000-0000','국어국문',25);
INSERT INTO PROFESSORLIST (번호, 이름, 전화번호, 소속전공, 나이) VALUES (2,'이영희','010-1111-1111','통계',45);
INSERT INTO PROFESSORLIST (번호, 이름, 전화번호, 소속전공, 나이) VALUES (3,'박훈','010-2222-2222','컴퓨터공학',35);


/*5. 학생명단과 교수명단 테이블의 모든 데이터 출력*/

SELECT * FROM STUDENTLIST;
SELECT * FROM PROFESSORLIST;

/*6. 학생명단 테이블의 이름, 전공 정보만 출력*/

SELECT 이름, 전공 FROM STUDENTLIST;

/*7. 학생명단 테이블의 3학년 이상의 데이터만 검색, 학번, 이름, 학년 만 출력*/

SELECT 학번, 이름, 학년 FROM STUDENTLIST WHERE 학년>=3;

/*8. 교수명단 테이블의 번호가 1인 데이터만 검색, 이름, 전화번호, 소속전공 만 출력*/

SELECT 이름, 전화번호, 소속전공 FROM PROFESSORLIST WHERE 번호=1;

/*9. 교수명단 테이블에 나이가 35세 이상인 데이터만 검색, 이름, 나이 정보만 출력*/

SELECT 이름, 나이 FROM PROFESSORLIST WHERE 나이>=35;

/*10. 학생명단과 교수명단 테이블을 삭제*/

DROP TABLE STUDENTLIST;
DROP TABLE PROFESSORLIST;