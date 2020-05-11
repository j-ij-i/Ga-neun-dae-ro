<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="find_route.aspx.cs" Inherits="Fproject.find_result" %>
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
                <div id="searchcontent" style="padding:50px;">
                    <br />
	<h1 style="text-align:center;" id="eformmain">추천 휴게소 조회하기</h1>
     <div id="incontent"  >
    <h4> 출발
    <asp:DropDownList ID="startn" runat="server" DataSourceID="SqlDataSource1" DataTextField="start" DataValueField="start" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [start] FROM [route]"></asp:SqlDataSource>
    
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    도착
    <asp:DropDownList ID="endn" runat="server" DataSourceID="SqlDataSource3" DataTextField="end" DataValueField="end"></asp:DropDownList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [end] FROM [route] WHERE ([start] = @start)">
        <SelectParameters>
            <asp:ControlParameter ControlID="startn" PropertyName="SelectedValue" Name="start" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [start] FROM [route]"></asp:SqlDataSource>
    <br /><br />
    가격  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="price_box" runat="server"  placeholder="공백시 모든 가격의 음식 검색" CssClass="input" Width="200px" ></asp:TextBox><br />
     <br /></h4>
            <asp:Button ID="find_btn" runat="server" Text="조회하기" OnClick="find_btn_Click" CssClass="btn btn-orange btn-large"  Width="300px"/>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br /><br />
     </div>
     </div>      

</asp:Content>
