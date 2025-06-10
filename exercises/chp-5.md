01 다음 SOL 문장 중 문법적으로 옳은 것은?
답: 1

02 다음 SOL문 중 문법적으로 옳은 것은?
답: 4

03 SOL의 SELECT절에 사용할 수 없는 키워드는?
답: 1

04 다음 SOL문에 대한설명으로옳지 않은것은?
답: 4

05 다음 SOL문 중 문법적으로 옳지 않은 것은?
답: 4

06 네 이터 베 이스에셔 널 (NULL) 값에 대 한 설명 중 옳지 않은 것은?
답: 3

07 다음 중 SELECT 문의 질의를 계산하는 순서로 맞는 것은?
답: 2

08 SO L의 GROUP BY 에 대한 설명으로 옳지 않은 것은?
답: 4

09 다음문장이 참이면 0, 거짓이면 x 를하시오.
답: 1-0, 2-x, 3-x, 4-0, 5-0, 6-x, 7-0, 8-0

10 다음 (_____) 안에 적당한 용어를 채워 완성하시오.
답:

Structured Query Language

대화식, 배치식

USE

TOP

HAVING

AS

서브쿼리

IN

EXISTS

상관 서브쿼리

n-1

11 다음 학생 테이블에 대해 "1 학년부터 4학년 순으로 학년별 평균 성적을 검색하라.’’는 SOL문을 작성한 것이다. (_____) 안에 알맞은 용어를 쓰시오.
답:
ㄱ) 학년
ㄴ) AVG
ㄷ) GROUP BY
ㄹ) ORDER BY

12 다음 학생 테이블에 대해 “이 씨 성을 가진 2,3,4학년 학생들의 성적을 내림차순으로 검색하라 .’’는 SOL문을 작성한 것이다 (_____) 안에 알맞은 용어를 쓰시오.
답:
ㄱ) IN
ㄴ) LIKE
ㄷ) ORDER BY
ㄹ) DESC

13 다음 과목 테이블에 내해 ‘‘ 1 학년을 제외한 2,3,4학년별 평균성적이 80점 이상인 과목에 내해서 과목별 학생수를 검색하라.’’는 SOL문을 작성한 것이다. (_____) 안에 알맞은 용어를 쓰시오.
답:
ㄱ) AS
ㄴ) <>
ㄷ) 과목
ㄹ) HAVING

14 다음 SOL문의 절과 연관되는 관계 대수 연산을 보기에서 선택하시오.
답:

ㄷ

ㄹ, ㄱ

ㄴ

15 다음 ‘학생’ 테이블에 대해 4학년 학생들의 성적을 10점씩 증가시키는 SOL 명령문율 쓰시오.
답:
UPDATE 학생 SET 성적 = 성적 + 10 WHERE 학년 = 4;

16 다음 데이터베이스를 대상으로 질의 요구사항을 SOL로 표현하시오.
답:

SELECT 이름 FROM 학생 WHERE 나이 IS NULL;

SELECT DISTINCT 나이 FROM 학생 WHERE 이름 LIKE '김%' AND 학년 = 3;

SELECT 성별, AVG(나이) FROM 학생 GROUP BY 성별;

SELECT 학번, 나이, 학년 FROM 학생 ORDER BY 나이 DESC, 학년 ASC;

SELECT 학번, 이름, 나이 FROM 학생 WHERE 성별 = 'M' ORDER BY 나이 ASC LIMIT 1;

SELECT 나이, COUNT() FROM 학생 GROUP BY 나이 HAVING COUNT() >= 50;

17 다음 데이터베이스를 대상으로 질의 요구 사항을 SOL로 표현하시오.
답:

SELECT 이름, 학년 FROM 학생 WHERE 소속학과 = '컴퓨터학과' ORDER BY 학년 DESC;

SELECT 학번, 과목번호, (중간성적 + 기말성적) AS 총점 FROM 수강;

SELECT 학생.이름, (중간성적 + 기말성적) AS 총점 FROM 학생 JOIN 수강 ON 학생.학번 = 수강.학번;

SELECT 과목번호, AVG(기말성적) FROM 수강 GROUP BY 과목번호 HAVING AVG(기말성적) >= 90;

SELECT 평가학점, COUNT(*) FROM 수강 GROUP BY 평가학점;

SELECT 학생.이름, 과목.과목이름, 수강.평가학점 FROM 학생 JOIN 수강 ON 학생.학번 = 수강.학번 JOIN 과목 ON 수강.과목번호 = 과목.과목번호 WHERE 학생.이름 LIKE '이%';

SELECT 학생.이름, 과목.과목이름 FROM 학생 JOIN 수강 ON 학생.학번 = 수강.학번 JOIN 과목 ON 수강.과목번호 = 과목.과목번호 WHERE 학생.소속학과 = '컴퓨터학과';
