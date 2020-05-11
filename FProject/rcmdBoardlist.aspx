<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rcmdBoardlist.aspx.cs" Inherits="Fproject.rcmdBoardlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    		<section id="inner-headline">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ul class="breadcrumb">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
						</ul>
					</div>
				</div>
			</div>
		</section>
    <section id="content">
			<div class="container">
                <h1>음식추천 게시판</h1>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="num" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <span class="border">
                    <br />
                   <a href ="<%#"rcmdBoardView.aspx?No=" + Eval("num")%>">
                   <img src='/Photo/<%# Eval("fileurl") %>' style="width:300px; height:300px"/>
                   </a>
            <br />
             <div style="text-align:center; font-weight:bold"><asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />   </div>
              <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="writedateLabel" runat="server" Text='<%# Eval("writedate") %>' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<i class="fa fa-heart fa-lg"></i>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("likeit") %>' />
                <i class="fa fa-eye fa-lg"></i>
                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("readcount") %>' /><br />
                </span>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT * FROM [rcmdBoard]"></asp:SqlDataSource>
        <hr />
           <asp:DropDownList ID="drdwSearch" runat="server">
            <asp:ListItem Value="title">제목</asp:ListItem>
            <asp:ListItem Value="name">작성자</asp:ListItem>
            <asp:ListItem Value="contents">내용</asp:ListItem>
        </asp:DropDownList>
         <asp:TextBox ID="txtSearch" runat="server" Width="282px"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="검색" onclick="btnSearch_Click" CssClass="btn btn-info" Width="61px" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT * FROM [rcmdBoard]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="글쓰기" CssClass="pull-right btn btn-default" OnClick="Write_btn"/>
          <asp:Button ID="recent_btn" runat="server" Text="최신순" CssClass="btn btn-orange" OnClick="recent_btn_Click" />
            <asp:Button ID="pop_btn" runat="server" Text="인기순" CssClass="btn btn-orange" OnClick="pop_btn_Click" />
            <asp:Button ID="view_btn" runat="server" Text="조회순" CssClass="btn btn-orange" OnClick="view_btn_Click" />
                    </div>
		</section>
</asp:Content>
