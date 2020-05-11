<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="aboutboard.aspx.cs" Inherits="Fproject.aboutboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id="content">
			<div class="container">
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT * FROM [rcmdBoard] WHERE (([contents] LIKE '%' + @contents + '%') OR ([title] LIKE '%' + @title + '%'))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="quest" Name="contents"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="quest" Name="title"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

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
                </div>
            </section>
</asp:Content>

