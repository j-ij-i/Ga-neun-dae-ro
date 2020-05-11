<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="bestBoardlist.aspx.cs" Inherits="Fproject.bestBoardlist" %>
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
                <h1>베스트 게시판</h1>많은 수의 추천을 받은 게시글
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
            <asp:Label ID="writedateLabel" runat="server" Text='<%# Eval("writedate") %>' /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<i class="fa fa-heart fa-lg"></i>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("likeit") %>' /><br />
                </span>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT TOP (2) num, name, title, pass, contents, writeDate, readCount, fileUrl, likeit, useId FROM rcmdBoard ORDER BY likeit DESC"></asp:SqlDataSource>
        </div>
            </section>
</asp:Content>
