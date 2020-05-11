<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModifyNotice.aspx.cs" Inherits="Fproject.ModifyNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
		<section id="content">
			<div class="container">
        <h2>공지게시판 수정하기</h2>
 
    작성자 <br /><asp:Label ID="Label1" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
    <hr />
        글제목<br />
       <asp:TextBox ID="TextBox4" Width="400px"  runat="server" CssClass="form-control"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*글 제목은 필수사항입니다." ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    <br />
        글 내용<br />
       <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="500px" Height="400px"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*글 내용은 필수사항입니다." ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
   <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:Button ID="btnReset" runat="server" Text="취소" onClick="Button2_Click"  CssClass="btn btn-info"/>
        &nbsp;&nbsp;
        <asp:Button ID="btnModify" runat="server" Text="수정" onClick="Button1_Click"  CssClass="btn btn-theme"/>
        <br/>
                           </div>
		</section> 
</asp:Content>
