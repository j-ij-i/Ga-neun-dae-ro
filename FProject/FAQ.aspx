<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Fproject.FAQ" %>
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
    <h1>자주 묻는 질문</h1>
                <br /><br />
<a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)"> 
   <h3 style="color:#68A4C4">Q. 대표음식 말고 다른 음식들도 알고 싶은데 어디가서 알 수 있을까요?</h3>
    </a><div style="DISPLAY: none">
    <h4>일단 저희 가는대로를 이용해주셔서 감사합니다^^ 
        <br />저희 가는대로에서는 <a href="find_Exp.aspx">고속도로 검색 기능</a>을 통하거나
        혹은 상세 정보 기능을 통해 더욱 다양한 정보를 얻으실 수 있습니다.</h4>
</div>
    <br />
    <a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)"> 
   <h3 style="color:#68A4C4">Q. 로그인을 해야만 검색이 가능한가요?</h3>
    </a><div style="DISPLAY: none">
  <h4>  일단 저희 가는대로를 이용해주셔서 감사합니다^^<br />
      저희 가는대로는 로그인을 반드시 하지 않으셔도 고속도로 검색이 가능합니다.
        또한 경로 설정도 가능하므로 마음껏 이용해주십시오.</h4>
</div>
        <br />
    <a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)"> 
  <h3 style="color:#68A4C4">Q. 궁금한 사항이 있을경우에는 어떻게하나요?</h3>
    </a><div style="DISPLAY: none">
 <h4>  저희 <a href="Qnalist.aspx">QnA 게시판</a>에 작성해주시거나 sunmlee7@naver.com이나 apfhd9043@naver.com으로 메일을 보내주십시오<br />
       혹은 가천대 503호로 오시면 가능합니다.</h4>
</div>
                        </div>
		</section>
</asp:Content>