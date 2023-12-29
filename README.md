![logo](https://github.com/saki8661/bankapp_v1/assets/135561587/06e4488a-3b25-4887-a44e-7a6e2931ef15)

# 📝 Bring It On 프로젝트 소개
- 다양한 사람들이 어울려 즐길 수 있는 스포츠 전문 공간 대여 프로젝트
- Bring It On 한번 붙어보자는 의미로 스포츠 경쟁의 의미를 두고있습니다


## 🤝🏻프로젝트 3조 소개
- 김대욱(팀장)
- 박세환
- 김언약
- 윤혜림

## 🎥 시연영상 [유튜브 링크]
유튜브 영상 링크자리

## 🛠 기술스택

### Backend
<img src="https://img.shields.io/badge/Springboot-6DB33F?style=for-the-badge&logo=Spring-Boot&logoColor=white"> <img src="https://img.shields.io/badge/MyBatis-5056E5?style=for-the-badge&logo=&logoColor=white"> <img src="https://img.shields.io/badge/JSP-F5C300?style=for-the-badge&logo=&logoColor=white">

### Frontend
<img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/CSS-1572B6?style=for-the-badge&logo=css3&logoColor=white"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=white"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">

### IDE
<img src="https://img.shields.io/badge/IntelliJ IDEA-1A1F71?style=for-the-badge&logo=intellijidea&logoColor=white"> 

### Tools
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"> <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"> <img src="https://img.shields.io/badge/postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white"> <img src="https://img.shields.io/badge/figma-764ABC?style=for-the-badge&logo=figma&logoColor=white"> <img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&logoColor=white">

### Database
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white"> <img src="https://img.shields.io/badge/h2-F9DC3E?style=for-the-badge&logo=h2&logoColor=white">


### 라이브러리
```
    implementation 'javax.servlet:javax.servlet-api:4.0.1' 
    implementation 'org.springframework.boot:spring-boot-starter-web'
    implementation 'org.springframework.boot:spring-boot-starter-web-services'
    compileOnly 'org.projectlombok:lombok'
    developmentOnly 'org.springframework.boot:spring-boot-devtools'
    runtimeOnly 'com.h2database:h2'
    runtimeOnly 'com.mysql:mysql-connector-j'
    annotationProcessor 'org.projectlombok:lombok'
    testImplementation 'org.springframework.boot:spring-boot-starter-test'
    implementation 'org.mybatis.spring.boot:mybatis-spring-boot-starter:2.3.0'
    implementation 'org.apache.tomcat.embed:tomcat-embed-jasper'
    implementation group: 'org.glassfish.web', name: 'jakarta.servlet.jsp.jstl', version: '2.0.0'
    implementation 'org.springframework.security:spring-security-crypto'
    implementation group: 'com.google.code.gson', name: 'gson', version: '2.10.1'
    implementation 'org.jsoup:jsoup:1.14.3' 
    implementation 'org.springframework.boot:spring-boot-starter-mail:3.0.5'
    implementation group: 'com.google.firebase', name: 'firebase-admin', version: '9.2.0'
```

## 🗃 ERD테이블 명세서
사진첨부!

## 💡 사이트맵
사진첨부 :

## 📝 노션
https://economic-asparagus-2ef.notion.site/3-Bring-It-On-2584b2760c204dc786ca366fbd253ec1?pvs=4

일정관리, 역할분담, 계획수립, 소통 등 노션을 통해 진행하였습니다.


### 유저 공통 기능
- 회원가입
- 카카오 회원가입
- 로그인/로그아웃
- 아이디 및 비밀번호 찾기
- 이메일 인증

### 일반 유저 관련 기능
- 시설 대여(예약)
- 시설 별점 및 후기 작성
- 시설 북마크 추가/삭제
- 시설 

### 호스트 유저 관련 기능
- 시설 등록
- 예약 리스트 조회
- 후기 관리

### 시설 관련 기능
- 지도API

### 팀 관련 기능
- 팀 등록
- 팀 전체 조회
- 지역별 팀 조회
- 인원순, 최신순 필터
- 팀 신청
- 팀 신청 내역 조회
- 팀 신청 수락 / 거절

### 결제 관련 기능
- kakaoPay 결제
- nicePay 결제
- tossPay 결제
- 결제 후 포인트 등록
- 결제 환불

### 매칭 관련 기능
- 매칭조회
- 매칭 리스트 조회
- 매칭 신청

### 게시판 관련 기능
- 

### 공지 관련 기능
- 

### 문의 관련 기능
-

## 🎬사용자 시나리오
- 회원가입  


## 🔩 보완할 점
-

 
## 📋 느낀 점
- (김대욱) 프로젝트 DB설계하면서 테이블간의 상관관계에 대한 이해가 깊어졌고 전체적인 로직을 배울 수 있었습니다 첫프로젝트에는 DTO를 구성해서 데이터를 받는 부분이 미흡했지만 이번 프로젝트를 통해서 DTO를 통한 요청, 응답하는 부분에 익숙해졌고 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////...............................................................................................................................................................................................
- (박세환) 처음 사용해보는 DB접근 기법과 템플릿 엔진에 낯설었지만 기본적인 흐름은 같아서 어렵지 않게 사용할 수 있었고 여러 API를 사용하면서 문서읽는 능력을 키울 수 있어서 유익한 시간이었다고 생각함 <br>
처음 웹프로젝트를 진행 할 때는 CSR과 SSR 그리고 DTO 등을 제대로 구현해내지 못했는데 비동기 통신과 DTO, CSR을 사용하여 조금 더 UX를 신경쓸 수 있게 되어서 좀 더 성장한 것 같다.
