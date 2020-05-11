<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NoticeWrite.aspx.cs" Inherits="Fproject.NoticeWrite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<section id="content">
	<div class="container">
     <h3>공지 글작성</h3>
       작 성 자<br/>
        <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" Width="400px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*작성자는 필수사항입니다." ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br/>
        비밀번호<br/>
        <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="form-control" TextMode="Password"  ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*비밀번호는 필수사항입니다.(게시물 수정 삭제시 필요)" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br/>
        <hr/>
        글제목<br/>
        <asp:TextBox ID="TextBox4" runat="server"  Width="400px" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*글 제목은 필수사항입니다." ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        <br />
        내용<br/>
        <asp:TextBox ID="TextBox5" class="form-control" runat="server" Width="500px" Height="400px" TextMode="MultiLine"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*글 내용은 필수사항입니다." ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnWrite" runat="server" Text="게시물 등록" onclick="Button1_Click"  CssClass="btn btn-info"/>
        <asp:Button ID="btnList" runat="server" Text="목록" onclick="Button2_Click" CssClass="btn btn-theme" />
        <br />
         </div>
		</section>
</asp:Content>
