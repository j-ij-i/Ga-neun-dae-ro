<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="intro.aspx.cs" Inherits="Fproject.intro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h2>가는대로</h2>
						<h3 style="color:lightslategray;">목적</h3>
						<h3 style="color:lightslategray;">만든 계기</h3>
						<h3 style="color:lightslategray;">기능</h3>
						<h3 style="color:lightslategray;">페이지 설명</h3>
						<h3 style="color:lightslategray;">가는대로 모토</h3>
					</div>
					<div class="col-lg-4">
						<h4>목적</h4>
                        <p class="lead">
							짧은 시간 내 최고의 선택
						</p>
						<p>
                            가는대로는 적당한 가격선에서 원하는 음식을 쉽고 빠르게 찾아서 먹을 수 있는 선택을 제공하기 위해 만들어졌습니다.
						</p>
						<p>
                            즉, 짧은 휴게소 시간 동안 메뉴 선정에 힘들어하지 않으면서도 맛있는 음식을 먹기라는 편리함을 제공하는 것이 
                            저희의 궁극적인 목적입니다.
						</p>
						<p>
							<em>
					  Our ultimate goal is to giving the opportunity of selecting best menu in short time </em>
						</p>
						
					</div>
					<div class="col-lg-4">
						<h4>만든 계기</h4>
						<img src="imgs/dummies/dummy-1.jpg" alt="" class="align-left" />
						<p>
							저희가 가는대로를 만든 이유는 긴 운전시간 동안 짧게 들르는 휴게소에서 잠시나마 맛있는 음식의 여휴를 고객분들게
                            제공해 드리고 싶었기 때문입니다. 긴 운전으로 지친 몸을 편하게 맛있는 음식으로 치유하는 것 그것이 우리 가는대로의
                            존재 이유이자 계기입니다.
						</p>
                        <p>
							<em>
					  The reason of EatingRoad is giving the enjoyment of delicious food which heal the fatigue of long driving </em>
						</p>
					</div>
				</div>
				<!-- divider -->
				<div class="row">
					<div class="col-lg-12">
						<div class="solidline">
						</div>
					</div>
				</div>
				<!-- end divider -->
				<!-- Descriptions -->
				<div class="row">
					<div class="col-lg-6">
						<!-- Description -->
						<h4>경로 설정 및 검색</h4>
						<dl>
							<dt>경로 설정</dt>
							<dd>출발 도착 사이에 존재하는 휴게소 대표음식 추천합니다.</dd>
							<dt>휴게소 검색</dt>
							<dd>찾고 싶은 휴게소 검색으로 다양한 음식 정보를 확인합니다.</dd>
							<dt>관심 경로 저장</dt>
							<dd>마이페이지에 관심 경로 저장해 빠른 검색이 가능합니다.</dd>
						</dl>
					</div>
					<!-- Horizontal Description -->
					<div class="col-lg-6">
						<h4>게시물</h4>
						<dl>
							<dt>추천 게시판</dt>
							<dd>추천 게시판 내 다양한 게시물로 다양한 음식 정보를 획득합니다.</dd>
							<dt>베스트 게시판</dt>
							<dd>게시판 내 인기있는 게시물들만 모아 빠른 정보를 제공합니다.</dd>
							<dt>게시물 저장</dt>
							<dd>인상깊은 게시물을 마이페이지에 저장해 원할 때 마다 확인 가능합니다.</dd>
						</dl>
					</div>
				</div>
				<!-- divider -->
				<div class="row">
					<div class="col-lg-12">
						<div class="solidline">
						</div>
					</div>
				</div>
				<!-- end divider -->
				<!-- Lists -->
				<div class="row">
					<!-- Unordered Lists -->
					<div class="col-lg-4">
						<h4>휴게소 찾기</h4>
						<ul>
							<li>경로조회</li>
                            <ul>
									<li>출발, 도착 설정</li>
									<li>대표 음식 선정</li>
									<li>음식에 맞는 휴게소 상세 메뉴 정보</li>
									<li>휴게소 관련 게시물</li>
								</ul>
							<li>검색하기</li>
                             <ul>
									<li>궁금한 휴게소 선정</li>
									<li>휴게소 상세 음식 정보</li>
									<li>휴게소 관련 게시물</li>
								</ul>
					</div>
					<!-- Unstyled Lists -->
					<div class="col-lg-4">
						<h4>게시판</h4>
						<ul class="unstyled">
							<li>공지게시판
                                <ul>
									<li>관리자의 공지 리스트</li>
									<li>알고싶은 키워드 검색 가능</li>
								</ul>
							</li>
							<li>베스트게시판
                                <ul>
                                    <li>빠른 시간 내 인기 많은 게시물 제공</li>
									<li>가장 인기 많은 게시물 5개 선정</li>
									<li>게시물에 대해 댓글 작성 가능</li>
                                    <li>맘에 드는 게시물은 마이페이지 스크랩</li>
								</ul>
							</li>
							<li>음식추천게시판
								<ul>
									<li>다양한 추천 음식 확인</li>
									<li>원하는 게시물에 대한 다양한 검색</li>
									<li>최신순 게시물</li>
									<li>조회순 게시물</li>
                                    <li>스크랩순 게시물</li>
								</ul>
							</li>
                            </ul>
					</div>

					<!-- Unstyled Lists -->
					<div class="col-lg-4">
						<h4>고객센터</h4>
						<ul class="unstyled">
							<li>자주 묻는 질문
                                <ul>
									<li>자주 묻는 질문을 모아 정리</li>
									<li>굳이 묻지 않아도 바로 확인</li>
								</ul>
							</li>
							<li>QnA
                                <ul>
									<li>사용방법이 궁금할 경우 질문</li>
									<li>건의 사항이 있을 경우 건의</li>
                                    <li>모든 문의를 모으고 그중 원하는 것 검색</li>
								</ul>
							</li>
                            </ul>
					</div>
				</div>
				<!-- divider -->
				<div class="row">
					<div class="col-lg-12">
						<div class="solidline">
						</div>
					</div>
				</div>
				<!-- end divider -->
				<div class="row">
					<div class="col-lg-6">
						<h4>가는대로 모토1</h4>
						<blockquote>
							<i class="icon-quote-left icon-2x"></i>이 세상에는 좋은 선택, 나쁜 선택은 없다. 좋은 선택은 단지 내가 만들어 갈 뿐이다.<br />
                            <i class="icon-quote-left icon-2x"></i>There is no good choice or bad choice, Good choices are just made by Me.
						</blockquote>
					</div>
					<div class="col-lg-6">
						<h4>가는대로 모토2</h4>
						<blockquote>
							<i class="icon-quote-left icon-2x"></i> 이 세상에 의미 없는 노력은 없다. 신은 준비된 자 만을 돕는다. <br />
                            <i class="icon-quote-left icon-2x"></i> There is no meaningless effort. God only helps the one who is prepared. 
						</blockquote>
					</div>
					<!--<div class="col-lg-4">
						<h4>Pullquote left and right</h4>
						<span class="pullquote-left">
				이 세상에는 좋은 선택, 나쁜 선택은 없다. 좋은 선택은 단지 내가 만들어 갈 뿐이다.</span>
						<span class="pullquote-right margintop10">
				이 세상에 의미 없는 준비는 없다. 신은 준비된 자 만을 돕는다.</span>
					</div>-->
				</div>
				<!-- divider -->
				<div class="row">
					<div class="col-lg-12">
						<div class="solidline">
						</div>
					</div>
				</div>
				<!-- end divider -->
		
			</div>
		</section>
</asp:Content>
