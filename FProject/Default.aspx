<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Fproject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <section id="featured">
			<!-- start slider -->
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- Slider -->
						<div id="main-slider" class="flexslider">
							<ul class="slides">
								<li>
									<img src="img/slides/1.png" alt="" />
									<div class="flex-caption">
										<h3>경로 선정</h3>
										<p>가는대로는 경로에 따른 대표적 휴게소 음식을 추천합니다.</p>
									</div>
								</li>
								<li>
									<img src="img/slides/2.png" alt="" />
									<div class="flex-caption">
										<h3>검색</h3>
										<p>휴게소 검색 및 게시판 검색을 통해 쉽게 정보를 얻으실 수 있습니다.</p>					
									</div>
								</li>
								<li>
									<img src="img/slides/3.png" alt="" />
									<div class="flex-caption">
										<h3>게시판</h3>
										<p>게시판을 통해 생생한 리뷰와 사진들을 보실 수 있습니다.</p>
						
									</div>
								</li>
							</ul>
						</div>
						<!-- end slider -->
					</div>
				</div>
			</div>
		</section>
    		<section class="callaction">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="big-cta">
							<div class="cta-text">
								<h2><span>가는대로</span> 휴게소 음식의 최선의 선택</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>추천 휴게소 음식 보기</h4>
										<div class="icon">
											<i class="fa fa-car fa-3x"></i>
										</div>
										<p>
											경로를 입력해 추천 휴게소를 조회할 수 있습니다.
										</p>
									</div>
									<div class="box-bottom">
										<a href="find_route.aspx">More</a>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>전국 휴게소 검색</h4>
										<div class="icon">
											<i class="fa fa-search fa-3x"></i>
										</div>
										<p>
											전국 27개 노선의 168개의 휴게소의 음식정보를 얻을 수 있습니다.
										</p>
									</div>
									<div class="box-bottom">
										<a href="find_Exp.aspx">More</a>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>휴게소 추천 게시판</h4>
										<div class="icon">
											<i class="fa fa-camera fa-3x"></i>
										</div>
										<p>
										  가는대로 유저의 생생한 리뷰와 사진들을 보실 수 있습니다.
										</p>
									</div>
									<div class="box-bottom">
										<a href="rcmdBoardlist.aspx">More</a>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>고객센터</h4>
										<div class="icon">
											<i class="fa fa-question fa-3x"></i>
										</div>
										<p>
										   궁금한 점, 건의할 점들을 올려 많은 안내 서비스를 받으실 수 있습니다.
										</p>
									</div>
									<div class="box-bottom">
										<a href="Qnalist.aspx">More</a>
									</div>
								</div>
							</div>
						</div>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT TOP(3) fileurl,writeDate,num FROM [rcmdBoard] ORDER BY num DESC;"></asp:SqlDataSource>
				<!-- Portfolio Projects -->
                <div class="row">
                    <div class="col-lg-12">
                         <h4 class="heading">유저 최근 게시물</h4>
							<section id="projects">
							<div id="thumbs" class="portfolio">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate> 
									    <div class="col-lg-3 design" data-id="id-0" data-type="web">
										<div class="item-thumbs" style="width:150px; height:150px">
											<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="최근 작성글" href='/Photo/<%# Eval("fileurl") %>' >
						                      <span class="overlay-img"></span>
						                       <span class="overlay-img-thumb font-icon-plus"></span>
					                         </a>
											<img src='/Photo/<%# Eval("fileurl") %>'" alt="작성날짜 : <%# Eval("writedate") %>  <a href ='<%#"rcmdBoardView.aspx?No=" + Eval("num")%>'>게시글 바로가기</a>"/>
										</div>
									    </div>
                                    </ItemTemplate>
                                </asp:DataList>
								</div>
							</section>
						</div>

                    </div>
				</div>
		</section>
</asp:Content>
