<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rcmdBoardWrite.aspx.cs" Inherits="Fproject.rcmdBoardWrite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
			<div class="container">
    <div>
    <h2>음식추천게시판</h2>
        제목<br />
        <asp:TextBox ID="txtTitle" runat="server"  CssClass="form-control" Width="400px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*제목은 필수사항입니다." ControlToValidate="txtTitle"></asp:RequiredFieldValidator><br />
        작성자<br />
        <asp:TextBox ID="txtName" runat="server"  CssClass="form-control"  Width="400px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*작성자는 필수사항입니다." ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br />
        비밀번호<br />
        <asp:TextBox ID="ckpassword" runat="server" Width="200px" CssClass="form-control" TextMode="Password"  ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*비밀번호는 필수입니다. (게시물 수정 삭제시 필요)" ControlToValidate="ckpassword"></asp:RequiredFieldValidator>
        <br />
        사진등록<br />
        <asp:FileUpload ID="FileUpload" runat="server" Width="486px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*사진등록은 필수사항입니다." ControlToValidate="FileUpload"></asp:RequiredFieldValidator>
        <br />
        내용<br />
        <asp:TextBox ID="txtContents" class="form-control" runat="server" Width="500px" Height="400px" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*내용은 필수사항입니다." ControlToValidate="txtContents"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnWrite" runat="server" Text="게시물 등록" onclick="btnWrite_Click"  CssClass="btn btn-info"/>
        <asp:Button ID="btnList" runat="server" Text="목록" onclick="btnList_Click" CssClass="btn btn-theme" />
    </div>
                     </div>
		</section>
</asp:Content>
