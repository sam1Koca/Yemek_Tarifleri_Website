<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">




        .auto-style11 {
            background-color: #FFFFFF;
        }
        .auto-style14 {
            width: 30px;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: larger;
        }
        .auto-style15 {
            width: 38px;
            text-align: center;
        }
        .auto-style16 {
        margin-left: 240px;
    }
    .auto-style17 {
        font-weight: bold;
        font-size: medium;
        font-style: italic;
    }
    .auto-style18 {
        text-align: center;
        margin-left: 240px;
    }
    .auto-style19 {
        font-style: italic;
        font-size: medium;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FF6699" CssClass="auto-style11" BorderColor="#6699FF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td style="background-color: #99CCFF" class="auto-style3"><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style19" Height="200px"  TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong><em>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style17" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                    </em></strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
