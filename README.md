# Your.JS


**Your** **J**ob Finding **S**ecretary

## **💜 프로젝트 진행 기간**

2022.10.11(화) ~ 2022.11.18(금)

SSAFY 7기 2학기 자율프로젝트 - Your.JS

---

## **🎵** Your.JS **- 배경**

구직 활동을 하며 일정을 착각 하기도 하고, 작성한 적 있는 정보를 까먹는 등 다양한 불편함을 겪었습니다. 저희는 이러한 불편함을 해결하기 위해 프로젝트를 시작하게 되었습니다.

---

## **💜** Your.JS **- 개요**

어려움을 겪는 IT 개발자 분들을 위해 편리한 일정 템플릿을 제공하고 태그 기반 자기소개서 항목 검색을 통해 동일한 자기 소개서를 빠르게 찾을 수 있도록 돕습니다. 그리고 평소 까먹기 쉬웠던 전공 이수 학점, 자격증 번호 등 세세한 정보까지 관리할 수 있는 서비스를 제공합니다.

---

## **💜** Your.JS **- 기대 효과**

IT 개발자들이 보다 편리하고 체계적으로 구직 활동을 할 수 있습니다

이력서에 들어갈 공통 항목들을 통합 관리하여 빠르게 이력서를 작성할 수 있습니다.

이미 종료된 공고들을 관리하여 
스케쥴링 되어 있는 공고 내용들을 한눈에 볼 수 있어 우선 순위 파악에 용이 합니다.

프로세스별 일정 관리를 통해 현재 상황을 편하게 파악 할 수 있습니다.
기존에 작성하였던 자소서들을 정리하여 한눈에 보기 용이 합니다.

---

## **💜 주요 기능**

---

- 일정 관리
    - 일정 까지 남은 시간 보기
    - 일정 카테고리별(ex) 서류, 면접 등) 등록
    - 같은 관심 분야의 다른 개발자의 일정 가져오기
- 공고 관리
    - 공고 태그 검색
- 자기소개서 관리
    - 공고별
    - 항목 태그 검색(추가 기능)
- 포트폴리오 관리
    - 인적사항
    - 병역사항
    - 학력
    - 교육
    - 자격증/어학
    - 수상내역
    - 커리어
    - 프로젝트

## **✔ 주요 기술**

---

**Backend - SpringBoot 2.7.4**

- Jpa
- Security
- Web
- Actuator
- lombok
- devtools
- mysql-connector
- springdoc-openapi-ui:1.6.11 (Swagger)
- Jwt (jjwt) 0.11.5
- Commons-io 2.11.0
- Mongodb

**Backend - DB**

- MySQL 8.0.29
- Mongo DB (Atlas)
- AWS S3

**Frontend**

- React
- react-redux
- react-router-dom
- axios
- react-cookie
- react-full-page
- react-modal
- styled-components

**CI/CD**

- AWS EC2 Ubuntu 20.04 LTS
- K8S 1.25.1
- Jenkins 2.361.1

## **✔ 협업 툴**

---

- Gitlab
- Notion
- Jira
- Discord

## **✔ 협업 환경**

---

- Gitlab
    - 코드의 버전을 관리
    - 이슈 발행, 해결을 위한 토론
    - MR시, 팀원이 코드 리뷰를 진행하고 피드백 게시
- JIRA
    - 매주 목표량을 설정하여 Sprint 진행
    - 업무의 할당량을 정하여 Story Point를 설정하고, In-Progress -> Done 순으로 작업
- Discord
    - Discord 스탠드업 회의 진행, 당일 할 업무 브리핑
    - Discord 마무리 회의 진행, 당일 업무 진행 브리핑, 다음 날 진행할 업무 브리핑
    - 빠른 소통과 신속한 대응이 가능
- Notion
    - 회의가 있을 때마다 회의록을 기록하여 보관
    - 회의가 길어지지 않도록 다음날 제시할 안건을 미리 기록
    - 기술 확보 시, 다른 팀원들도 추후 따라할 수 있도록 보기 쉽게 작업 순서대로 정리
    - 컨벤션 정리
    - 규칙, 기능 명세서 등 모두가 공유해야 하는 문서 관리

## **✔ 팀원 역할 분배**

---

| 이름 | 직책 | 파트 | 역할 |
| --- | --- | --- | --- |
| 송형근 | 팀장 | BE | 포트폴리오 관련 API 개발, Kubernetes 세팅, 모니터링 |
| 백승진 | 부팀장 | BE | 회원, 자소서, 공고 API 개발, DB DR서버 세팅 |
| 황인빈 | 팀원 | BE | 포트폴리오 관련 API 개발, S3 연동, DB 세팅 |
| 김국진 | 팀원 | FE | JWT를 통한 회원 관리, redux, session, cookie 상태관리, 회원관리페이지, 랜딩페이지, 메인페이지, 캘린더페이지 |
| 금동운 | 팀원 | FE | 공통 코드 관리, 포트폴리오 페이지, 마이페이지, |
| 배지우 | 팀원 | FE | 페이지 레이아웃 코드 작성 및 라우팅, 공고 페이지 등록 삭제 수정, 공고 가져오기 페이지 |

## **✔ 프로젝트 산출물**

---

- [컨셉 기획](https://www.notion.so/lucassong94/1-61347ca2898044a391bff120459447fe?pvs=4)
- [기능명세서](https://www.notion.so/lucassong94/1b62dfab65464a5bb1ea064ee302e398?v=a9b606a5be6a4940a2f80b84b14d3115&pvs=4)
- [와이어프레임](https://www.figma.com/file/pCLij56CBmTVwLa61Ckvfg/Front-Layout?node-id=0%3A1&t=seFKzN9fOffsJI02-1)
- [아키텍처](https://www.figma.com/file/zZnQuIyR4ga253a3GxXmZB/Architecture?node-id=0%3A1&t=WXoTOemsklZiVxVj-1)
- [API 명세서](https://www.notion.so/lucassong94/7fbd9ded233a4a42a59b9b692cb1cf75?v=88e3d362ce794c5da0dcf3d29025c2fb&pvs=4)
- [ERD](https://www.erdcloud.com/d/bSWnpzLAPhQdsWDXz)

## **✔ 프로젝트 결과물**

- [포팅매뉴얼](https://docs.google.com/document/d/1bX5ODjJKbZrHM6bcraqBOKwCGtFVvJfWZGDH9F2f8YA/edit?usp=sharing)
- [중간발표자료](https://docs.google.com/presentation/d/1RUIW3eNleiY0__jLpBtBYDCdBFNKQiQyjY-ne_VXzq8/edit?usp=sharing)
- [최종발표자료](https://docs.google.com/presentation/d/1Em1SD9hC_9JSKgGNoLgpaDDlcT1otScP2yScZGkq9m8/edit?usp=sharing)

---
