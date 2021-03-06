﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Noticelist.aspx.cs" Inherits="Fproject.Noticelist" %>
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
                         <h1>공지 게시판</h1>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <table class="table">
                            <thead  style="background-color: #dbd9d9">
                                <th >글번호</th>
                                <th style="width:45% ; text-align: center;">제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                           <td> <%# Eval("num") %> </td>
                            <td style="width:45% ; text-align: center;"><a href="<%# "NoticeView.aspx?No=" + Eval("num") %>">
                           <%# Eval("Title") %>
                            </a></td>
                            <td> <%# Eval("name") %> </td>
                            <td>  <%# Eval("writedate") %> </td>
                            <td> <%# Eval("readcount") %> </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate></table></FooterTemplate>
                </asp:Repeater>
                <hr />
            <asp:DropDownList ID="drdwSearch" runat="server">
            <asp:ListItem Value="title">제목</asp:ListItem>
            <asp:ListItem Value="name">작성자</asp:ListItem>
            <asp:ListItem Value="contents">내용</asp:ListItem>
        </asp:DropDownList>
         <asp:TextBox ID="txtSearch" runat="server" Width="282px"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="검색" onclick="btnSearch_Click" CssClass="btn btn-info" Width="61px" />
       <asp:Button ID="Button1" runat="server" Text="글쓰기" CssClass="pull-right btn btn-default" OnClick="Button1_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT * FROM [Notice]"></asp:SqlDataSource>
   </div>
		</section>

</asp:Content>
