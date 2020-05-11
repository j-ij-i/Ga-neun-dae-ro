<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Exp_result.aspx.cs" Inherits="Fproject.Exp_result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		
    <section id="content">
			<div class="container">
        <h2>휴게소 검색 결과</h2>
        <asp:Button ID="aboard" runat="server" Text="관련게시물 보기" OnClick="aboard_Click" class="btn btn-info"/>
                           <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <table class="table">
                            <thead >
                                <tr>
                                <th >휴게소명</th>
                                <th>메뉴</th>
                                <th>가격</th>
                                <th>재료</th>
                                <th>그 외 정보</th>
                                    </tr>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                           <td> <%# Eval("stdRestNm") %> </td>
                            <td >
                           <%# Eval("foodNm") %></td>
                            <td> <%# Eval("foodCost") %> </td>
                            <td>  <%# Eval("foodMaterial") %> </td>
                            <td> <%# Eval("etc") %> </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate></table></FooterTemplate>
                </asp:Repeater>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [foodNm], [foodMaterial], [foodCost], [etc], [stdRestNm] FROM [ExpressFood] WHERE ([stdRestNm] LIKE '%' + @stdRestNm + '%')">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="quest" Name="stdRestNm" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
                
                </div>
		</section>

</asp:Content>
