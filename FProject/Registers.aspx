<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registers.aspx.cs" Inherits="Fproject.Registers" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<!-- css -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<!-- css -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"/>
	<link href="css/jcarousel.css" rel="stylesheet" />
	<link href="css/flexslider.css" rel="stylesheet" />
	<link href="css/style.css" rel="stylesheet" />
	<!-- Theme skin -->
	<link href="skins/default.css" rel="stylesheet" />
     <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.2/sweetalert2.all.min.js"></script>
           <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: '가입을 성공했습니다',
                type: 'success'
            });
        }
        function erroralert() {
            swal({
                title: 'ERROR',
                text: '약관을 동의해주세요',
                type: 'error'
            });
        }
    </script>
    <title>가는대로</title>
</head>
<body>
    <form id="form1" runat="server">

		<header>
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
						<a class="navbar-brand" href="/"><img src="img/logo/logo.png" style=" width:170px; height:65px "/></a>
					</div>
					<div class="navbar-collapse collapse ">
                     
						<ul class="nav navbar-nav">
                               <li><a href="/">Home</a></li>
                        <li class="dropdown">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">소개<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
                                    <li><a href="intro.aspx">사이트소개</a></li>                                             
									<li><a href="sitemaplist.aspx">사이트맵</a></li>
								</ul>
                      
							</li>
                         <li class="dropdown">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">휴게소 찾기<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
                                    <li><a href="find_route.aspx">경로조회</a></li>                                               
									<li><a href="find_Exp.aspx">검색하기</a></li>
								</ul>
							</li>
                            <li class="dropdown">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">게시판<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
                                    <li><a href="Noticelist.aspx">공지게시판</a></li>                                               
									<li><a href="bestBoardlist.aspx">베스트게시판</a></li>
									<li><a href="rcmdBoardlist.aspx">음식추천게시판</a></li>
								</ul>
							</li>
                            <li class="dropdown">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">고객센터<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">              
									<li><a href="FAQ.aspx">자주묻는질문</a></li>
									<li><a href="Qnalist.aspx">Q&A</a></li>
								</ul>
							</li>
                        <asp:LoginView ID="LoginView1" runat="server">
                           <AnonymousTemplate>
                            <li><a href="Login.aspx">Login</a></li>
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                             <li><a href="Logout.aspx">Logout</a></li>
                             <li><a href="UserInfo.aspx">MyPage</a></li>          
                        </LoggedInTemplate>
                        </asp:LoginView>
						</ul>
					</div>
				</div>
			</div>
		</header>
<section id="content">
			<div class="container">
                <h2>회원가입</h2>
    <textarea readonly="readonly" cols="100" rows="10" style="resize:none" >
    제 1 조 (목적)
    이 약관은 가는대로(이하 "사이트"라 합니다)에서 제공하는 인터넷서비스(이하 "서비스"라 합니다)의 이용 조건 및 절차에 관한 기본적인 사항을 규정함을 목적으로 합니다.


    제 2 조 (약관의 효력 및 변경)
    ① 이 약관은 서비스 화면이나 기타의 방법으로 이용고객에게 공지함으로써 효력을 발생합니다.
    ② 사이트는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.

 
    제 3 조 (용어의 정의)
    ① 만든이:  가천대학교 컴퓨터공학과 201636015 윤지영
	       가천대학교 컴퓨터공학과 201636028 이선민
    ② 강의명: 서버프로그래밍
    ③ 목적: 서버프로그래밍 기말프로젝트
    ④ 제출일: 2018.12.24
    </textarea>
    <br/>
     
    약관에 동의합니다. <asp:CheckBox ID="CheckBoxOverride" runat="server" AutoPostBack="True"/>
   <div>

    *아이디 : <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="아이디를 입력하세요" ControlToValidate="txtID"></asp:RequiredFieldValidator><br />
    *비밀번호 : <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="비밀번호를 입력하세요" ControlToValidate="txtPassword"></asp:RequiredFieldValidator> <br/>
    *비밀번호확인 : <asp:TextBox ID="chkPassword" TextMode="Password" runat="server"></asp:TextBox> 
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비밀번호가 일치하지 않습니다" ControlToCompare="chkPassword" ControlToValidate="txtPassword"></asp:CompareValidator><br/>
    *이메일 : <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="이메일을 입력하세요" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br/>
    *닉네임 : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="닉네임을 입력하세요" ControlToValidate="txtName"></asp:RequiredFieldValidator><br/>
    주소 : <asp:TextBox ID="postcode" runat="server" BorderColor="#b9b9b9" ></asp:TextBox>                                
         <asp:TextBox ID="address" runat="server" BorderColor="#b9b9b9" BorderWidth="1px" Width="500px" placeholder="우편번호찾기 클릭하여 주소를 입력 하세요"></asp:TextBox>                   
         <input type="button" id="btnpost" onclick="sample6_execDaumPostcode(); " value="우편번호 찾기" style="width:100px;" class="btn btn-blue"/><br />      
       <br />
        <asp:Button ID="signup" runat="server" Text="가입하기" OnClick="signup_Click" CssClass="btn  btn-blue" />
        <asp:Button ID="Button1" runat="server" Text="메인으로" OnClick="Button1_Click" CssClass="btn btn-default" />
              </div>
                </div>
		</section>

    <footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Get in touch with us</h5>
							<address>
					<strong>Moderna company Inc</strong><br/>
					 Modernbuilding suite V124, AB 01<br/>
					 Someplace 16425 Earth </address>
							<p>
								<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
								<i class="icon-envelope-alt"></i> email@domainname.com
							</p>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Pages</h5>
							<ul class="link-list">
								<li><a href="#">Press release</a></li>
								<li><a href="#">Terms and conditions</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Career center</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget">
							<h5 class="widgetheading">Latest posts</h5>
							<ul class="link-list">
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
								<li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
								<li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; Moderna Theme. All right reserved.</p>
								<div class="credits">
									<!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Moderna
                  -->
									Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
    
    </form>
      <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = ''; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수
                    var dong = '';
                    // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        fullAddr = data.jibunAddress;

                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        fullAddr = data.jibunAddress;
                    }
                    dong = data.bname;
                    // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                    if (data.userSelectedType === 'R') {
                        //법정동명이 있을 경우 추가한다.
                        if (data.bname !== '') {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if (data.buildingName !== '') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
                    }
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    // document.getElementById("ContentPlaceHolder1_WUC_BizCompanyReg_sample6_postcode").value = data.postcode; //6자리 우편번호 사용
                    document.getElementById("postcode").value = data.zonecode; //5자리 기초구역번호 사용
                    document.getElementById("address").value = fullAddr;
                    // 커서를 상세주소 필드로 이동한다.
                }
            }).open();
        }
</script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.2/sweetalert2.all.min.js"></script>
    <script src="js/jquery.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>
	<script src="js/google-code-prettify/prettify.js"></script>
	<script src="js/portfolio/jquery.quicksand.js"></script>
	<script src="js/portfolio/setting.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>
