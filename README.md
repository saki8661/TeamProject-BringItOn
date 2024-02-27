
![logo](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/298e8ad3-904f-4173-b1df-e2134add2b9a)

# 📝 Bring It On 프로젝트 소개
- 다양한 사람들이 어울려 즐길 수 있는 스포츠 전문 공간 대여 프로젝트
- Bring It On 한번 붙어보자는 의미로 스포츠 경쟁의 의미를 두고있습니다




## 🤝🏻프로젝트 3조 소개
- 김대욱([@saki8661](https://github.com/saki8661))[팀장]
- 박세환[(@bbarkse93](https://github.com/bbarkse93))[팀원]
- 김언약([@yakyakyak12](https://github.com/yakyakyak12))[팀원]
- 윤혜림([@YHYELIM](https://github.com/YHYELIM))[팀원]




## 목차
- [시연영상](#-시연영상)
- [기술스택](#-기술스택)
- [ERD 테이블 명세서](#ERD-테이블-명세서)
- [사이트맵](#사이트맵)
- [노션](#노션)
- [기능정리](#기능정리)
- [사용자 시나리오](#사용자-시나리오)
- [Directory Tree](#Directory-Tree)




## 🎥 시연영상 
### [유튜브 링크]
(https://www.youtube.com/watch?v=F5ZpQlHCKd8)


## 🧰 기술스택

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

## 📝 ERD 테이블 명세서
![erd](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/d29001c8-8fcf-4a6d-bb1e-cb0e3acb4948)



## 📍 사이트맵
### User
![user](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/fe926a65-b535-4eae-aff6-a509c3574689)

### Host
![host](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/bfb6da91-79eb-4e17-a643-fa0640d9e061)

### Admin
![admin](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/b1901980-372e-4a42-85a1-56ecca5669d8)

## 📓 노션
https://economic-asparagus-2ef.notion.site/3-Bring-It-On-2584b2760c204dc786ca366fbd253ec1?pvs=4

일정관리, 역할분담, 계획수립, 소통 등 노션을 통해 진행하였습니다.

## 🏷️ 기능정리

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
- 예약 확인/결제

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
- 매칭 리스트 조회
- 유저별 매칭 리스트 조회
- 매칭 신청

### 게시판 관련 기능
- 게시글 작성
- 게시글 목록 조회
- 게시글 수정/삭제
- 댓글 작성/삭제

### 공지 관련 기능
- 공지 작성
- 공지 리스트 조회
- 공지 수정/삭제

### 문의 관련 기능
- 문의 작성
- 문의 리스트 조회
- 문의 수정/삭제


## 🎞️ 사용자 시나리오
|회원가입, OAuth, 이메일 인증|개인정보수정|
|----|---|
|![회원가입, OAuth, 이메일인증-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/6999cb9a-6b59-408a-8604-e1535fccb145)|![개인정보수정-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/09b6fff8-1a54-45e5-9023-c5a19c4ce553)|
|공간 리스트, 공간상세보기|후기, 별점, 북마크|
|![2](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/396ce88e-6666-4f44-89bc-dd915480ceec)|![후기, 별점, 북마크-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/24472962-2bcf-4494-ae03-0ba3e1e6155d)|
|공간예약|캐시충전, 예약결제|
|![공간예약-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/748ee9ba-1e6f-4cb6-a74d-3d0a3c055d24)|![캐시충전, 예약 결제-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/3598383f-11b4-43a1-9a69-71955f66caf7)|
|팀 리스트, 팀 지원, 팀 확인|매칭리스트, 신청, 목록 조회|
|![4](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/118582a9-e60d-4cf7-99f7-1a0bfbb3bb7f)|![매칭리스트, 매칭 신청, 나의 매칭 조회-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/a7549160-d83a-4471-91bf-c2161dfc0a37)|
|게시글CRUD|댓글리스트, 작성, 삭제|
|![게시글 CRUD-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/906961ba-09fb-4332-b1ab-b777dc6288e1)|![댓글 리스트, 댓글작성, 댓글삭제-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/0a21c7cd-ee24-4af6-a5ec-42aaecf60f51)|
|시설등록, 수정|예약목록, 후기관리|
|![시설등록, 수정-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/e25804f2-4e0e-4e8b-a72f-35897cfab6c0)|![예약목록, 후기관리-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/07e68a14-bcd1-4078-9bbd-4044a8c07b8b)|
|고객센터 공지,문의 FAQ|---|
|![고객센터, 공지, 문의, FAQ-min](https://github.com/saki8661/TeamProject-BringItOn/assets/135561587/db2ff4d5-1fdc-41c8-8ed6-379909830f26)|---|


## 🌳Directory Tree
```📦teamprojectbringiton
 ┣ 📂admin
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┗ 📜UserSearchReqDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜UserCountRespDTO.java
 ┃ ┃ ┃ ┗ 📜UserSearchRespDTO.java
 ┃ ┗ 📜AdminController.java
 ┣ 📂age
 ┃ ┣ 📜Age.java
 ┃ ┣ 📜AgeController.java
 ┃ ┣ 📜AgeRepository.java
 ┃ ┗ 📜AgeService.java
 ┣ 📂answer
 ┃ ┗ 📜Answer.java
 ┣ 📂bank
 ┃ ┗ 📜Bank.java
 ┣ 📂board
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┣ 📜BoardUpdateDTO.java
 ┃ ┃ ┃ ┗ 📜BoardWriteDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜BoardDetailDTO.java
 ┃ ┃ ┃ ┣ 📜BoardDTO.java
 ┃ ┃ ┃ ┗ 📜BoardListDTO.java
 ┃ ┣ 📜Board.java
 ┃ ┣ 📜BoardController.java
 ┃ ┣ 📜BoardRepository.java
 ┃ ┗ 📜BoardService.java
 ┣ 📂bookmark
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┗ 📜BookmarkDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┗ 📜BookmarkListDTO.java
 ┃ ┣ 📜Bookmark.java
 ┃ ┣ 📜BookmarkController.java
 ┃ ┣ 📜BookmarkRepository.java
 ┃ ┗ 📜BookmarkService.java
 ┣ 📂cart
 ┃ ┗ 📜Cart.java
 ┣ 📂FCM
 ┃ ┣ 📜FCMController.java
 ┃ ┗ 📜FCMService.java
 ┣ 📂gender
 ┃ ┣ 📜Gender.java
 ┃ ┣ 📜GenderRepository.java
 ┃ ┗ 📜GenderService.java
 ┣ 📂host
 ┃ ┗ 📜HostController.java
 ┣ 📂inquire
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┣ 📜InquireUpdateDTO.java
 ┃ ┃ ┃ ┗ 📜InquireWriteDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┗ 📜InquireListDTO.java
 ┃ ┣ 📂inquireCategory
 ┃ ┃ ┣ 📜InquireCategory.java
 ┃ ┃ ┗ 📜InquireCategoryRepository.java
 ┃ ┣ 📜Inquire.java
 ┃ ┣ 📜InquireController.java
 ┃ ┣ 📜InquireRepository.java
 ┃ ┗ 📜InquireService.java
 ┣ 📂matching
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┗ 📜MatchingDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜MyMatchingApplyListDTO.java
 ┃ ┃ ┃ ┗ 📜MyMatchingListDTO.java
 ┃ ┣ 📜Matching.java
 ┃ ┣ 📜MatchingController.java
 ┃ ┣ 📜MatchingRepository.java
 ┃ ┗ 📜MatchingService.java
 ┣ 📂notice
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┣ 📜NoticeUpdateDTO.java
 ┃ ┃ ┃ ┗ 📜NoticeWriteDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┗ 📜NoticeListDTO.java
 ┃ ┣ 📂noticeCategory
 ┃ ┃ ┣ 📜NoticeCategory.java
 ┃ ┃ ┗ 📜NoticeCategoryRepository.java
 ┃ ┣ 📜Notice.java
 ┃ ┣ 📜NoticeController.java
 ┃ ┣ 📜NoticeRepository.java
 ┃ ┗ 📜NoticeService.java
 ┣ 📂option
 ┃ ┣ 📂spaceOption
 ┃ ┃ ┗ 📜SpaceOption.java
 ┃ ┗ 📜Option.java
 ┣ 📂order
 ┃ ┗ 📜Order.java
 ┣ 📂payment
 ┃ ┣ 📂request
 ┃ ┃ ┗ 📜UpdatePointDTO.java
 ┃ ┣ 📂response
 ┃ ┃ ┣ 📜PaymentDTO.java
 ┃ ┃ ┗ 📜UpdatePointRespDTO.java
 ┃ ┣ 📜Payment.java
 ┃ ┣ 📜PaymentController.java
 ┃ ┣ 📜PaymentRepository.java
 ┃ ┣ 📜PaymentRestController.java
 ┃ ┗ 📜PaymentService.java
 ┣ 📂point
 ┃ ┣ 📂dto
 ┃ ┃ ┗ 📂request
 ┃ ┃ ┃ ┗ 📜PointUseDTO.java
 ┃ ┣ 📜Point.java
 ┃ ┣ 📜PointController.java
 ┃ ┣ 📜PointRepository.java
 ┃ ┗ 📜PointService.java
 ┣ 📂pointCharge
 ┃ ┗ 📜PointCharge.java
 ┣ 📂pointHistory
 ┃ ┣ 📜PointHistory.java
 ┃ ┣ 📜PointHistoryRepository.java
 ┃ ┗ 📜PointHistoryService.java
 ┣ 📂region
 ┃ ┣ 📜Region.java
 ┃ ┗ 📜RegionRepository.java
 ┣ 📂reply
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┗ 📜ReplyWriteDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┗ 📜ReplyDTO.java
 ┃ ┣ 📜Reply.java
 ┃ ┣ 📜ReplyController.java
 ┃ ┣ 📜ReplyRepository.java
 ┃ ┗ 📜ReplyService.java
 ┣ 📂reservation
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┗ 📜ReservationReqDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜MatchingReservationDTO.java
 ┃ ┃ ┃ ┣ 📜ReservationRespDTO.java
 ┃ ┃ ┃ ┗ 📜UserReservationListDTO.java
 ┃ ┣ 📜Reservation.java
 ┃ ┣ 📜ReservationController.java
 ┃ ┣ 📜ReservationRepository.java
 ┃ ┗ 📜ReservationService.java
 ┣ 📂reservationTime
 ┃ ┣ 📂dto
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┗ 📜ReservationTimeDTO.java
 ┃ ┣ 📜ReservationTime.java
 ┃ ┣ 📜ReservationTimeController.java
 ┃ ┣ 📜ReservationTimeRepository.java
 ┃ ┗ 📜ReservationTimeService.java
 ┣ 📂review
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┗ 📜SpaceReviewDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜ReviewListDTO.java
 ┃ ┃ ┃ ┣ 📜SpaceRatingAvg.java
 ┃ ┃ ┃ ┣ 📜SpaceReviewCountDTO.java
 ┃ ┃ ┃ ┗ 📜SpaceReviewDTO.java
 ┃ ┣ 📜Review.java
 ┃ ┣ 📜ReviewController.java
 ┃ ┣ 📜ReviewRepository.java
 ┃ ┗ 📜ReviewService.java
 ┣ 📂space
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┣ 📜SaveDTO.java
 ┃ ┃ ┃ ┣ 📜SpaceRatingReviewDTO.java
 ┃ ┃ ┃ ┗ 📜UpdateDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜MySpaceReservationListDTO.java
 ┃ ┃ ┃ ┣ 📜SpaceDetailDTO.java
 ┃ ┃ ┃ ┣ 📜SpaceDTO.java
 ┃ ┃ ┃ ┣ 📜SpaceListDTO.java
 ┃ ┃ ┃ ┣ 📜SpaceReviewDTO.java
 ┃ ┃ ┃ ┗ 📜SpaceUserIdPicJoinDTO.java
 ┃ ┣ 📂spacePic
 ┃ ┃ ┣ 📜SpacePic.java
 ┃ ┃ ┣ 📜SpacePicController.java
 ┃ ┃ ┣ 📜SpacePicRepository.java
 ┃ ┃ ┗ 📜SpacePicService.java
 ┃ ┣ 📜Space.java
 ┃ ┣ 📜SpaceController.java
 ┃ ┣ 📜SpaceRepository.java
 ┃ ┣ 📜SpaceRestController.java
 ┃ ┗ 📜SpaceService.java
 ┣ 📂spaceInquire
 ┃ ┣ 📂request
 ┃ ┃ ┣ 📜SpaceInquireDTO.java
 ┃ ┃ ┗ 📜SpaceInqUpdateDTO.java
 ┃ ┣ 📂response
 ┃ ┃ ┣ 📜SpaceInqAnswerCountDTO.java
 ┃ ┃ ┣ 📜SpaceInquireCountDTO.java
 ┃ ┃ ┗ 📜SpaceInquireDTO.java
 ┃ ┣ 📜SpaceInquire.java
 ┃ ┣ 📜SpaceInquireController.java
 ┃ ┣ 📜SpaceInquireRepository.java
 ┃ ┗ 📜SpaceInquireService.java
 ┣ 📂sponsor
 ┃ ┗ 📜Sponsor.java
 ┣ 📂sport
 ┃ ┗ 📜Sport.java
 ┣ 📂team
 ┃ ┣ 📂apply
 ┃ ┃ ┣ 📜Apply.java
 ┃ ┃ ┗ 📜ApplyRepository.java
 ┃ ┣ 📂captain
 ┃ ┃ ┣ 📜Captain.java
 ┃ ┃ ┗ 📜CaptainRepository.java
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┣ 📜TeamApplyDTO.java
 ┃ ┃ ┃ ┣ 📜TeamCreateDTO.java
 ┃ ┃ ┃ ┗ 📜UpdateTeamIdDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜TeamDetailDTO.java
 ┃ ┃ ┃ ┣ 📜TeamIdDTO.java
 ┃ ┃ ┃ ┗ 📜TeamListDTO.java
 ┃ ┣ 📂position
 ┃ ┃ ┣ 📜Position.java
 ┃ ┃ ┗ 📜PositionRepository.java
 ┃ ┣ 📜Team.java
 ┃ ┣ 📜TeamController.java
 ┃ ┣ 📜TeamRepository.java
 ┃ ┗ 📜TeamService.java
 ┣ 📂user
 ┃ ┣ 📂dto
 ┃ ┃ ┣ 📂request
 ┃ ┃ ┃ ┣ 📜IdFindDTO.java
 ┃ ┃ ┃ ┣ 📜JoinDTO.java
 ┃ ┃ ┃ ┣ 📜KakaoLoginDTO.java
 ┃ ┃ ┃ ┣ 📜LoginDTO.java
 ┃ ┃ ┃ ┣ 📜PasswordFindDTO.java
 ┃ ┃ ┃ ┣ 📜UserUpdateImageDTO.java
 ┃ ┃ ┃ ┗ 📜UserUpdatePasswordDTO.java
 ┃ ┃ ┗ 📂response
 ┃ ┃ ┃ ┣ 📜CheckPasswordDTO.java
 ┃ ┃ ┃ ┣ 📜KakaoProfile.java
 ┃ ┃ ┃ ┣ 📜OAuthToken.java
 ┃ ┃ ┃ ┣ 📜UserApplyListDTO.java
 ┃ ┃ ┃ ┣ 📜UserInfoDTO.java
 ┃ ┃ ┃ ┣ 📜UserPointDTO.java
 ┃ ┃ ┃ ┣ 📜UserTeamInfoDTO.java
 ┃ ┃ ┃ ┗ 📜UserUpdateDTO.java
 ┃ ┣ 📜AddressParer.java
 ┃ ┣ 📜PhoneNumberFormatter.java
 ┃ ┣ 📜User.java
 ┃ ┣ 📜UserController.java
 ┃ ┣ 📜UserRepository.java
 ┃ ┗ 📜UserService.java
 ┣ 📂_core
 ┃ ┣ 📂config
 ┃ ┃ ┣ 📜EbailConfig.java
 ┃ ┃ ┣ 📜FilterConfig.java
 ┃ ┃ ┗ 📜WebMvcConfig.java
 ┃ ┣ 📂filter
 ┃ ┃ ┗ 📜MyFilter1.java
 ┃ ┣ 📂handler
 ┃ ┃ ┣ 📂exception
 ┃ ┃ ┃ ┣ 📜CustomPageException.java
 ┃ ┃ ┃ ┣ 📜CustomRestfullException.java
 ┃ ┃ ┃ ┗ 📜UnAuthorizedException.java
 ┃ ┃ ┣ 📜AuthInterceptor.java
 ┃ ┃ ┣ 📜MyPageExceptionHandler.java
 ┃ ┃ ┗ 📜MyRestfullExceptionHandler.java
 ┃ ┣ 📂interceptor
 ┃ ┃ ┣ 📜BookmarkInterceptor.java
 ┃ ┃ ┣ 📜LoginInterceptor.java
 ┃ ┃ ┗ 📜ReservationInterceptor.java
 ┃ ┣ 📂utils
 ┃ ┃ ┣ 📜ApiUtils.java
 ┃ ┃ ┣ 📜Define.java
 ┃ ┃ ┣ 📜Function.java
 ┃ ┃ ┣ 📜PageVO.java
 ┃ ┃ ┣ 📜Script.java
 ┃ ┃ ┗ 📜TimeStampUtil.java
 ┃ ┗ 📂vo
 ┃ ┃ ┗ 📜MyPath.java
 ┗ 📜TeamProjectBringItOnApplication.java
```

## 🔩 보완할 점
- 매칭페이지 일자별 지역별 필터링
- 관리자 페이지 ajax구현

 
## 📋 느낀 점
- (김대욱) 프로젝트 DB설계하면서 테이블간의 상관관계에 대한 이해가 깊어졌고 전체적인 로직을 배울 수 있었습니다. 첫 프로젝트에는 DTO를 구성해서 데이터를 받는 부분이 미흡했지만 이번 프로젝트를 통해서 DTO를 통한 요청, 응답하는 부분에서 익숙해지고 오류를 파악하면서 프로그램의 구조를 보는 시야가 넓어졌습니다.
- (박세환) 처음 사용해보는 DB접근 기법과 템플릿 엔진에 낯설었지만 기본적인 흐름은 같아서 어렵지 않게 사용할 수 있었고 여러 API를 사용하면서 문서읽는 능력을 키울 수 있어서 유익한 시간이었다고 생각함 <br>
처음 웹프로젝트를 진행 할 때는 CSR과 SSR 그리고 DTO 등을 제대로 구현해내지 못했는데 비동기 통신과 DTO, CSR을 사용하여 조금 더 UX를 신경쓸 수 있게 되어서 좀 더 성장한 것 같다.
