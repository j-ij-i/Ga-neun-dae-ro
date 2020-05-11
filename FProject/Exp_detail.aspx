<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Exp_detail.aspx.cs" Inherits="Fproject.Exp_detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<section id="content">
			<div class="container">
                           <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                              <h2>휴게소 메뉴 자세히보기</h2>
                   <asp:Button ID="aboard" runat="server" Text="관련게시물 보기" CssClass="btn btn-info" OnClick="aboard_Click" />
                        <table class="table">
                            <thead >
                                <tr>
                                <th>휴게소명</th>
                                <th>메뉴</th>
                                <th>가격</th>
                                <th>재료</th>
                                <th>그 외 정보</th>
                                    </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td ><%# Eval("stdRestNm")%></td>
                            <td ><%# Eval("foodNm") %></td>
                            <td> <%# Eval("foodCost") %> </td>
                            <td>  <%# Eval("foodMaterial") %> </td>
                            <td> <%# Eval("etc") %> </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate></table></FooterTemplate>
                </asp:Repeater>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [stdRestNm], [foodNm], [foodMaterial], [foodCost], [etc] FROM [ExpressFood] WHERE ([stdRestNm] LIKE '%' + @stdRestNm2 + '%')">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="areaname" Name="stdRestNm2" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
                </div>
		</section>
</asp:Content>
