<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fproject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<section id="content">
			<div class="container">
                <div id="searchcontent">
    <div></div> 
        <br />
        <h1>로그인</h1> 
        아이디&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtUserID" runat="server"></asp:TextBox><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="아이디를 입력하세요" ControlToValidate="txtUserID"></asp:RequiredFieldValidator><br />
       <br />
        비밀번호 : <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="비밀번호를 입력하세요" ControlToValidate="txtPassword"></asp:RequiredFieldValidator><br />
       <br />
        <asp:Button class="btn" ID="btnLogin" runat="server" Text="로그인"  OnClick ="btnLogin_Click" CssClass="btn btn-info"/>
        <asp:Button class="btn" ID="Button1" runat="server" Text="회원가입"  OnClick ="btnSignup_Click" CssClass="btn btn-orange"/> 
  <asp:Button ID="Button2"  class="btn" runat="server" OnClick="Button2_Click" Text="비밀번호찾기"  CssClass="btn btn-warning"/>
       <br />
       <br />
<br />
         </div>
        </div>
		</section>

</asp:Content>
