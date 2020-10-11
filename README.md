# 가는대로(Ga-neun-dae-ro)


## 1. 소개
먹는대로(https://github.com/j-ij-i/Muk-neun-dae-ro) 의 ASP 기반 웹 페이지

## 2. 사용 기술
### Database
![image](https://user-images.githubusercontent.com/46212602/95671507-1dbf1880-0bd3-11eb-829f-0ee151269922.png)

### Languages
![image](https://user-images.githubusercontent.com/46212602/95671785-c1a9c380-0bd5-11eb-8d34-0d9e239278a3.png)
![image](https://user-images.githubusercontent.com/46212602/95671509-1ef04580-0bd3-11eb-9755-1a86e914cc42.png)

## 3. 주요 기능
휴게소 API를 이용해 사용자가 출발지와 도착지 경로를 입력하면, 해당 경로의 고속도로 휴게소를 나타냅니다.

### [1] 출발지, 도착지 입력
![image](https://user-images.githubusercontent.com/46212602/95675556-13ad1200-0bf3-11eb-82e7-e9303883950b.png)

### [2] 경로의 휴게소 메뉴 추천
![image](https://user-images.githubusercontent.com/46212602/95677366-fd598300-0bff-11eb-8de8-29fcb30e15fa.png)


### * 사용 API

![image](https://user-images.githubusercontent.com/46212602/95675368-bfedf900-0bf1-11eb-83e0-d0b4d320cb1c.png)

고속도로 휴게소 대표음식 현황
https://www.data.go.kr/data/15001293/openapi.do

휴게소 푸드메뉴현황 조회 서비스
https://www.data.go.kr/data/15059337/openapi.do

## 4. 화면 및 상세 설명
### 0. 메인 화면

![image](https://user-images.githubusercontent.com/46212602/95671525-4a733000-0bd3-11eb-8178-7dbbea61880f.png)

#### 사이트맵

![image](https://user-images.githubusercontent.com/46212602/95672398-624eb200-0bdb-11eb-9f62-4d78abb7864d.png)
### 1. 출발과 도착에 따른 휴게소 음식 검색
출발지와 도착지를 설정하면 그에 따른 고속도로가 나오게 되고 고속도로에 존재하는 휴게소들의 대표 음식을 나열 됩니다. 검색 시 제한 금액을 써서 원하는 가격 내에서 검색이 가능하여 이용자가 싸고 맛있는 음식을 고를 수 있도록 했습니다.

#### [ 1.1 검색화면 ]
출발지, 도착지, 원하는 가격을 입력받습니다. 가격을 입력하지 않으면 모든 가격이 출력됩니다.

![image](https://user-images.githubusercontent.com/46212602/95671558-8c9c7180-0bd3-11eb-937b-8d716dfea765.png)

#### [ 1.2 검색 결과 화면 ]
입력된 출발지, 도착지, 가격을 기준으로 해당 경로의 추천 휴게소 메뉴를 나열합니다.

![image](https://user-images.githubusercontent.com/46212602/95674203-916c2000-0be9-11eb-9b4e-3828ff8819cb.png)


### 2. 휴게소 메뉴 상세 확인


#### [ 2.1 검색 결과 확인]
경로 검색 후 휴게소 이름을 클릭하여 해당 휴게소의 상세한 메뉴를 볼 수 있습니다.

![image](https://user-images.githubusercontent.com/46212602/95672538-89f24a00-0bdc-11eb-8ec1-12b0bddabee1.png)

#### [ 2.2 휴게소 메뉴 자세히 보기]
선택된 휴게소의 모든 메뉴를 나열하여 보여줍니다.

![image](https://user-images.githubusercontent.com/46212602/95672500-3e3fa080-0bdc-11eb-9fa9-9382236a24c8.png)

#### [ 2.3 휴게소 관련 게시글 보기]
선택된 휴게소의 이름이 들어간 게시물들을 나열하여 보여줍니다.

![image](https://user-images.githubusercontent.com/46212602/95672432-b2c60f80-0bdb-11eb-8bb9-572531ac0103.png)


### 3. 휴게소 검색 정보


#### [ 3.1 휴게소 검색 화면]
경로를 입력하지 않아도 휴게소의 이름을 검색할 수 있습니다. 많이 검색된 휴게소들을 보여주며, 검색 횟수도 보여줍니다. 

![image](https://user-images.githubusercontent.com/46212602/95672573-d3429980-0bdc-11eb-8dc8-9dcbdaaabed5.png)

#### [ 3.2 휴게소 검색 결과]
휴게소 이름을 통해 검색한 결과를 나타냅니다. 검색한 휴게소의 메뉴들이 나열됩니다.

![image](https://user-images.githubusercontent.com/46212602/95672607-1dc41600-0bdd-11eb-89dc-91f8301e278b.png)

### 4. 가는대로 게시판
게시판을 통해 유저와 유저, 유저와 관리자가 소통할 수 있는 공간을 만들었습니다.

#### [ 4.1 공지 게시판 ]
관리자가 공지 게시글을 올리는 게시판 입니다. 일반 이용자는 이용할 수 없습니다.

![image](https://user-images.githubusercontent.com/46212602/95671677-c28e2580-0bd4-11eb-8124-3291a09ddac8.png)

#### [ 4.2 음식추천 게시판 ]
회원들이 휴게소의 음식을 추천하는 게시판 입니다.

![image](https://user-images.githubusercontent.com/46212602/95672365-23206100-0bdb-11eb-97b2-f04afa5c53c2.png)

#### [ 4.3 베스트 게시판 ]
음식추천 게시판에서 일정 수 이상의 추천을 받은 게시글을 보여주는 게시판 입니다.

![image](https://user-images.githubusercontent.com/46212602/95671903-f2d6c380-0bd6-11eb-8cc3-1b50bd494394.png)

#### [ 4.4 Q&A 게시판 ]
이용자가 질문을 남기고, 관리자가 답변을 하는 게시판입니다. 답글은 일반 이용자는 이용할 수 없습니다.

![image](https://user-images.githubusercontent.com/46212602/95671894-d8044f00-0bd6-11eb-912e-0b9fc586723c.png)


### 5. 회원 시스템
휴게소 경로 저장, 글쓰기 등의 회원이 쓸 수 있는 기능들을 사용할 수 있도록 MS SQL을 이용해 회원 DB를 구현 하였습니다.

#### [ 5.1 회원가입 ]
아이디, 비밀번호, 닉네임, 이메일을 정보를 받아 회원가입을 받습니다.

![image](https://user-images.githubusercontent.com/46212602/95671538-6c6cb280-0bd3-11eb-9c9d-a62a8b39a538.png)

#### [ 5.2. 로그인 ]
이용자는 회원가입한 아이디와 비밀번호를 입력해 로그인 합니다.

![image](https://user-images.githubusercontent.com/46212602/95671535-6a0a5880-0bd3-11eb-9db6-cbcaf40fdd35.png)

#### [ 5.3 나의 경로 추가하기]
휴게소 검색 후에 나의 경로 버튼을 클릭하면 회원정보에 해당 경로가 저장됩니다.

![image](https://user-images.githubusercontent.com/46212602/95671571-a76ee600-0bd3-11eb-98c7-83f441cf92a3.png)

#### [ 5.4 마이페이지]
마이페이지에서 정보를 확인 할 수 있습니다.

![image](https://user-images.githubusercontent.com/46212602/95671577-c66d7800-0bd3-11eb-8ca8-a089fdd37b38.png)
