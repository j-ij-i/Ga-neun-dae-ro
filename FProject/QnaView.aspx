<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="QnaView.aspx.cs" Inherits="Fproject.QnaView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id="content">
			<div class="container">
            <h2>QnA 게시글</h2>
               <table class="table">
                  <thead style="background-color: #dbd9d9"  >
					<tr>
						<th>작성자</th>
						<th style="width:45%;text-align:center">제목</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                        <td>  <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                        <td> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                        <td> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                     </tr>
                    </tbody>
                </table>
        <asp:TextBox ID="TextBox1" runat="server" Height="377px" Width="900px"  style="border:0; overflow-y:hidden;"></asp:TextBox>
        <br/>
        
        <asp:Button ID="Button1" runat="server"  CssClass=" btn btn-default pull-right" Text="목록보기" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server"  CssClass="btn btn-danger pull-right" Text="삭제" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server"  CssClass="btn btn-orange pull-right"  Text="수정" OnClick="Button3_Click" />
         <asp:Button ID="Button4" runat="server"  CssClass=" btn btn-default pull-right" Text="답글달기" OnClick="Button4_Click" />
                <br />    <br /> 
<asp:Label ID="lblRefer" runat="server" Visible="False"></asp:Label>
<asp:Label ID="lblDepth" runat="server" Visible="False"></asp:Label>
<asp:Label ID="lblPos" runat="server" Visible="False"></asp:Label>

      작성자 : <asp:TextBox ID="txtReName" runat="server"></asp:TextBox>   한줄댓글 : <asp:TextBox ID="txtComment"  runat="server" Width="502px"></asp:TextBox>      <asp:Button ID="btnComment" runat="server" Text="댓글등록" OnClick="btnComment_Click" CssClass="btn btn-default"/>
 <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="댓글 작성자는 필수사항입니다." ControlToValidate="txtReName"></asp:RequiredFieldValidator>
            <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="댓글 내용은 필수사항입니다." ControlToValidate="txtComment"></asp:RequiredFieldValidator>
    <br />
       <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
       <ItemTemplate>
         <br/>
                <%# Eval("name") %> :
                <%# Eval("contents") %> [<%# Eval("writedate") %>] <br />
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT * FROM [QnaComment]"></asp:SqlDataSource>
              </div>
		</section>
</asp:Content>
