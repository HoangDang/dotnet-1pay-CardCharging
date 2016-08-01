<%@ Page Title="Test api from 1pay.vn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CardCharging._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>Test API from 1pay.vn</h2>
            </hgroup>
            <p>
                Tài liệu kiểm tra một số api kết nối của 1pay.vn
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Các phần</h3>
    <ol class="round">
        <li class="one">
            <h3>Card Charging</h3>
                
                <asp:Label ID="Label1" runat="server" Text="Thông số" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="URL" Width="150px"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="https://api.1pay.vn/card-charging/v2/topup"  Width="300px" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Method" Width="150px"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="POST"  Width="300px" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="access_key" Width="150px"></asp:Label>
                <asp:TextBox ID="txtAcess" runat="server" Width="300px" Height="30px"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Width="20px"></asp:Label>
                <asp:Label  runat="server" Text="Đại diện cho sản phầm của merchant" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="Label19" runat="server" Text="secret_key" Width="150px"></asp:Label>
                <asp:TextBox ID="txtSecret" runat="server" Width="300px" Height="30px"></asp:TextBox>
                <asp:Label ID="Label20" runat="server" Width="20px"></asp:Label>
                <asp:Label ID="Label21"  runat="server" Text="Mã secret" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="type" Width="150px"></asp:Label>
                <asp:TextBox ID="txtType" runat="server" Width="300px" Height="30px"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" Width="20px"></asp:Label>
                <asp:Label ID="Label14"  runat="server" Text="Loại thẻ" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="pin" Width="150px"></asp:Label>
                <asp:TextBox ID="txtPin" runat="server" Width="300px" Height="30px"></asp:TextBox>
                <asp:Label ID="Label12" runat="server" Width="20px"></asp:Label>
                <asp:Label ID="Label15"  runat="server" Text="Mã pin của thẻ" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="serial" Width="150px"></asp:Label>
                <asp:TextBox ID="txtSerial" runat="server" Width="300px" Height="30px"></asp:TextBox>
                <asp:Label ID="Label13" runat="server" Width="20px"></asp:Label>
                <asp:Label ID="Label16"  runat="server" Text="Mã serial của thẻ" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="Label22" runat="server" Text="transRef" Width="150px"></asp:Label>
                <asp:TextBox ID="txtTransRef" runat="server" Width="300px" Height="30px"></asp:TextBox>
                <asp:Label ID="Label23" runat="server" Width="20px"></asp:Label>
                <asp:Label ID="Label24"  runat="server" Text="Mã ngẫu nhiên" Height="30px"></asp:Label>
                <br />
                
                
                <asp:Button ID="Button1" runat="server" Text="Thực hiện" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label18" runat="server" Text="Kết quả" Font-Bold="True" Height="30px"></asp:Label>
                <br />
                <asp:Label ID="lblResult" runat="server" Height="600px" Width="800px" ForeColor="#CC3300"></asp:Label>

        </li>
        
    </ol>
</asp:Content>
