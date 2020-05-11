<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="find_Exp.aspx.cs" Inherits="Fproject.find_Exp" %>
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
                    <div id="searchcontent">
      <br />  <br />  <br />  <br /> 
                        
                        <h1> <span>휴게소 검색</span></h1>
    <asp:TextBox ID="seach_txt" Width="300px" runat="server"></asp:TextBox>    <asp:Button ID="Button1" runat="server" Text="검색" CssClass="btn btn-blue" OnClick="Button1_Click" /><br />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="휴게소 이름을 입력해주세요" ControlToValidate="seach_txt"></asp:RequiredFieldValidator><br /> 
    <br />
      <div id="incontent" style="background-color:white; padding:20px;">
         <h3>인기 많은 검색 휴게소</h3>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <asp:Label Text='<%# Eval("stdRestNm") %>' runat="server" ID="stdRestNmLabel" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;검색 횟수 : 
            <asp:Label Text='<%# Eval("searchnum") %>' runat="server" ID="Label1" />
         <br />
        </ItemTemplate>
    </asp:DataList>
          <br />

    </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT TOP (5) searchnum, stdRestNm 
FROM ExpressFood 
GROUP BY stdRestNm, searchnum
ORDER BY searchnum DESC, stdRestNm"></asp:SqlDataSource>
                         <br />  <br /> <br />  <br /> <br /> 
                             </div>
                </div>
		</section>
    
</asp:Content>

