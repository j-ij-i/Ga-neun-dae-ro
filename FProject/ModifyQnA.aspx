<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModifyQnA.aspx.cs" Inherits="Fproject.ModifyQnA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
		<section id="content">
			<div class="container">

     <div>
    <h2>QnA 수정하기</h2>
        작성자<br/>
        <asp:Label ID="lblname" runat="server" Text="Label"  Width="400px" CssClass="form-control"></asp:Label>
        <hr />
        글제목<br/>
        <asp:TextBox ID="txtTitle" Width="400px"  runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="글제목을 입력하세요." ControlToValidate="txtTitle"></asp:RequiredFieldValidator><br /> 
        <br />
        내용<br/>
        <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Width="500px" Height="400px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="글내용을 입력하세요." ControlToValidate="txtContent"></asp:RequiredFieldValidator><br />  
     <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnReset" runat="server" Text="수정취소" onClick="btnReset_Click"  CssClass="btn btn-info"/>
        &nbsp;&nbsp;
        <asp:Button ID="btnModify" runat="server" Text="수정" onClick="btnModify_Click"  CssClass="btn btn-theme"/>
    </div>
                </div>
		</section>
</asp:Content>
