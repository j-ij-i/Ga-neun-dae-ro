<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rt_result.aspx.cs" Inherits="Fproject.rt_result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section id="content">
			<div class="container">
       <h2>추천 메뉴 목록</h2>
                  <asp:Button ID="fav_btn" runat="server" Text="나의경로 추가" CssClass="btn btn-medium btn-blue" OnClick="fav_btn_Click" /> 
             <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div id="searchsa" >
                  <div id="dp">
                            <br />
               <h2> <a href="<%# "Exp_detail.aspx?areaname=" + Eval("serviceAreaName")%>">
                <%# Eval("serviceAreaName") %>
                </a></h2>
                          <h3 > <%# Eval("batchMenu") %></h3>
                          <h5><%# Eval("salePrice") %><br /></h5>
                            <%# Eval("routeName") %>
                      </div>
                            <div id="db">
                             
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [batchMenu], [routeName], [salePrice], [serviceAreaName] FROM [RecomFoods] WHERE (([salePrice] <= @salePrice) AND ([routeCode] = @routeCode))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="price" Name="salePrice" Type="Int32"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="code" Name="routeCode" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
                  </div>
		</section>

</asp:Content>
