<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="Fproject.UserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section id="content">
			<div class="container">
        <div>
        <h1>회원관리</h1>

        <h3>회원 정보보기<asp:Image ID="Image1" class="pull-right" src="img/logo/logo2.png" runat="server" Height="200px" Width="700px" />
            </h3>
        아이디:&nbsp;&nbsp;
            <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
            <br />
        패스워드:&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" Height="24px" Width="304px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="패스워드를 입력하세요" ControlToValidate="txtPassword"></asp:RequiredFieldValidator><br /> 

         이메일:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server" Height="24px" Width="306px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="이메일을 입력하세요" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br /> 
    
         이름:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" Height="24px" Width="309px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="이름을 입력하세요" ControlToValidate="txtName"></asp:RequiredFieldValidator><br /> 
       
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModify" class="btn-orange" runat="server" Text="정보 수정"  OnClick="btnModify_Click" Width="162px" Height="30px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <hr />
            
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <table class="table">
                            <thead  style="background-color: #dbd9d9">
                                <th style=" text-align: center;">선호하는 고속도로</th>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style=" text-align: center;"><a href="<%# "myrt_result.aspx?code=" + Eval("routecode") %>">
                           <%# Eval("favroute") %>
            
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate></table></FooterTemplate>
                </asp:Repeater>
                      
                      <hr />    <br />
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                    <HeaderTemplate>
                        <table class="table">
                            <thead  style="background-color: #dbd9d9">
                                <th style=" text-align: center;">마음에 드는 게시물</th>
                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style=" text-align: center;"><a href="<%# "rcmdBoardView.aspx?No=" + Eval("likerecom") %>">
                           <%# Eval("liketitle") %>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate></table></FooterTemplate>
                </asp:Repeater>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [favroute], [routecode] FROM [likeroute] WHERE ([userId] = @userId2)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblId" PropertyName="Text" DefaultValue="" Name="userId2" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
          

            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [liketitle], [likerecom] FROM [favrecomes] WHERE ([userId] = @userId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblId" PropertyName="Text" Name="userId" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:expFoodConnectionString %>' SelectCommand="SELECT [liketitle] [likerecom] FROM [favrecomes] WHERE ([userId] = @userId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblId" PropertyName="Text" Name="userId" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
     </div>
		</section>
</asp:Content>
