<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Api_controller.aspx.cs" Inherits="Fproject.Api_controller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     추천메뉴 다운<br />
    <asp:Button ID="Button1" runat="server" Text="다운로드" OnClick="Button1_Click" />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    휴게소음식 다운<br />
    <asp:Button ID="Button2" runat="server" Text="다운로드" OnClick="Button2_Click"/>
</asp:Content>

