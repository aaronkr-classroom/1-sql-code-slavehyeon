Data for SQL coding will go here. It will be updated as necessary.

ENTITY|부품 회사|회사 번호(PK), 회사 이름, 신용도
ENTITY|부품|부품 번호(PK), 부품 명, 부품 가격
ENTITY|프로젝트|프로젝트 번호(PK), 프로젝트 명, 프로젝트 예산, 프로젝트 위치
ENTITY|사원|사원 번호(PK), 사원 이름, 직급

RELATIONSHIP|공급|부품 회사, 부품|L:N
RELATIONSHIP|공급|부품, 프로젝트|N:M
RELATIONSHIP|관리|프로젝트, 사원|1:1
