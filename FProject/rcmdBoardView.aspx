<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rcmdBoardView.aspx.cs" Inherits="Fproject.rcmdBoardView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">
			<div class="container">
                <table class="table">
                  <thead style="background-color: #dbd9d9" >
					<tr>
						<th>작성자</th>
						<th style="width:45%;text-align:center">제목</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td><asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></td>
                        <td>  <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></td>
                        <td> <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></td>
                        <td> <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label></td>
                     </tr>
                    </tbody>
                </table>
            <asp:Label ID="lblFileName" runat="server" Text="Label"></asp:Label>
    <br/>
  
    <asp:Image ID="Image" runat="server" Width="400" Height="400"/>
     <br />
    <asp:TextBox ID="txtContents" runat="server" Height="121px" ReadOnly="True"  Width="567px" style="border:0;overflow-y:hidden;"></asp:TextBox>
    <br />    <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="Button2" runat="server" Text="좋아요" CssClass="btn btn-pink btn-large" OnClick="Button2_Click"/>
     <asp:Label ID="like" runat="server" Text=""></asp:Label><br /><br />
    <div style="padding-right:100px"></div>
    <asp:Button ID="Button4" runat="server"  CssClass="pull-right btn btn-danger" Text="삭제" OnClick="Button4_Click" />
    <asp:Button ID="Button3" runat="server"  CssClass="pull-right btn btn-orange" Text="수정" OnClick="Button3_Click" />
    <asp:Button ID="btnList" runat="server"  CssClass="pull-right btn btn-default"  Text="목록" onclick="btnList_Click" />
    <br /><br />
       작성자:<asp:TextBox ID="txtReName" runat="server"></asp:TextBox>
      한줄댓글<asp:TextBox ID="txtComment"  runat="server" Width="502px"></asp:TextBox>
    <asp:Button ID="btnComment" runat="server" Text="댓글등록" OnClick="btnComment_Click" CssClass="btn btn-default"  />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*댓글내용은 필수사항입니다." ControlToValidate="txtComment"></asp:RequiredFieldValidator>
      <br/>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*댓글작성자는 필수사항입니다." ControlToValidate="txtReName"></asp:RequiredFieldValidator>
           
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
             <br/>
                <%# Eval("name") %> :
                <%# Eval("contents") %> [<%# Eval("writedate") %>]
             
                 <br />
            </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT * FROM [rcmdComment]"></asp:SqlDataSource>
   
                   </div>
		</section>
</asp:Content>
