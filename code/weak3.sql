CREATE TABLE 학원생(
   id bigserial, -- bigesrial은 PostgreSQL에서만 사용할 수 있는 자동 증가하는 숫자입니다.
   학원생이름 varchar(25), --입력할 수 있는 크기
   폰번호 varchar(13),
   나이 int,
   학교이름 varchar(25),
   학년 int,
   반 int,
   반번호 int
);
SELECT *FROM 학원생; --하이라이트하고 단일실행해야 오류가 안 뜬다

INSERT INTO 학원생(학원생이름, 폰번호, 나이, 학교이름, 학년, 반, 반번호) --학원생에 데이터 추가, ''사용
VALUES ('홍길동', '010-1237-6542', 19, '송원고', 3, 1, 10),
      ('김하나', '010-3218-8765', 18, '한빛고', 2, 2, 7),
      ('홍길동', '010-4587-9834', 19, '송원고', 3, 1, 31),
      ('박순희', '010-7789-6754', 17, '이슬고', 1, 3, 16);

CREATE TABLE 학교(
   id bigserial, -- bigesrial은 PostgreSQL에서만 사용할 수 있는 자동 증가하는 숫자입니다.
   학교명 varchar(25), --입력할 수 있는 크기
   분류 varchar(13),
   학생수 numeric, --int는 작은정수만 표현할 수 있어 numeric타입을 사용
   주소 varchar(100)
);

INSERT INTO 학교(학교명, 분류, 학생수, 주소)
VALUES ('송원고', 3, 435, '경기 성남 분당구 황새올로 123'),
      ('한빛고', 2, 377, '경기 성남 분당구 판교역로 76'),
      ('이슬고', 1, 507, '경기 성남 분당구 미금로 567');

SELECT * FROM 학교; --기본 SQL 명령
TABLE 학교; --PostgreSQL의 쉬운 명령, SELECT문과 동일한 실행 명령어


-- 기본키와 외래키를 추가
ALTER TABLE 학원생 --테이블 수정 명령어
ADD CONSTRAINT 폰번호_키 PRIMARY KEY (폰번호);

TABLE 학원생;

ALTER TABLE 학교 --테이블 수정 명령어
ADD CONSTRAINT 학교명_키 PRIMARY KEY (학교명);

TABLE 학교;

--다음주부터
ALTER TABLE 학교
ADD CONSTRAINT 학교_학원생_FK FOREIGN KEY (학교명)
REFERENCES 학원생(학교이름) 
ON DELETE CASCADE;
