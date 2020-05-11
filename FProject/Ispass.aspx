<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Ispass.aspx.cs" Inherits="Fproject.Ispass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
			<div class="container">
    <div>
       <div id="searchcontent" style="padding:20px">
           <br />
    <h2>게시글 비밀번호 확인</h2>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        비밀번호: <asp:TextBox ID="txtPass1" runat="server" Width="148px"></asp:TextBox>
        &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;
        <br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnPass"   CssClass="btn btn-orange" runat="server" Text="확인" onClick="btnPass_Click"/>
        <asp:Button ID="btnList" CssClass="btn btn-info" runat="server" Text="목록" onClick="btnList_Click"/>
         <br/><br/>
    </div>
        </div>
           </div>
		</section>
</asp:Content>
