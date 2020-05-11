<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="givePass.aspx.cs" Inherits="Fproject.givePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    		<section id="content">
			<div class="container">
                  <div id="searchcontent" style="padding:30px">
                         
            <h2>새 비밀번호 등록</h2>
      비밀번호&nbsp;:&nbsp;<asp:TextBox ID="txtpass1" TextMode="Password" runat="server"></asp:TextBox>
     <br /><br />
      비밀번호 확인&nbsp;:&nbsp; <asp:TextBox TextMode="Password" ID="txtpass1id" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br />
                         <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button class="btn btn-theme" ID="changepass" runat="server" Text="비밀번호변경" OnClick="changepass_Click"/>
                      
                         <br />
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="비밀번호를 입력하세요" ControlToValidate="txtpass1"></asp:RequiredFieldValidator><br /> 
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="비밀번호가 일치하지 않습니다" ControlToCompare="txtpass1id" ControlToValidate="txtpass1"></asp:CompareValidator><br/>  
                         
                         </div>
                </div>
		</section>

</asp:Content>

