<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="myrt_result.aspx.cs" Inherits="Fproject.myrt_result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<section id="content">
			<div class="container">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">

        <Columns>
            <asp:BoundField DataField="batchMenu" HeaderText="batchMenu" SortExpression="batchMenu"></asp:BoundField>
            <asp:BoundField DataField="routeName" HeaderText="routeName" SortExpression="routeName"></asp:BoundField>
            <asp:BoundField DataField="salePrice" HeaderText="salePrice" SortExpression="salePrice"></asp:BoundField>
            <asp:TemplateField HeaderText="휴게소"> 
             <ItemTemplate>
                <a href="<%# "Exp_detail.aspx?areaname=" + Eval("serviceAreaName")%>">
                <%# Eval("serviceAreaName") %>
                </a>
                </ItemTemplate>
                <HeaderStyle Width="250px" />  
                </asp:TemplateField>
            <asp:BoundField DataField="serviceAreaName" HeaderText="serviceAreaName" SortExpression="serviceAreaName"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [batchMenu], [routeName], [salePrice], [serviceAreaName] FROM [RecomFoods] WHERE (([routeCode] = @routeCode))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="code" Name="routeCode" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
                </div>
		</section>
</asp:Content>
