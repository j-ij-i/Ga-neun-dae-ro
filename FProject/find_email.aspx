<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="find_email.aspx.cs" Inherits="Fproject.find_email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<section id="content">
	    <div class="container">
                     <div id="searchcontent" style="padding:30px">
                         
            <h2>비밀번호 찾기</h2>
      아이디&nbsp;:&nbsp;<asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
     <br /><br />
      이메일&nbsp;:&nbsp;<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                         <br />
                         <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button class="btn btn-theme" ID="btnfind" runat="server" Text="확인" OnClick="btnfind_Click"
                             />
                      
                         <br />
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="이메일을 입력하세요" ControlToValidate="txtemail"></asp:RequiredFieldValidator><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="아이디를 입력하세요" ControlToValidate="txtUserID"></asp:RequiredFieldValidator><br /> 
                         
                         </div>
            </div>
		</section>
</asp:Content>
