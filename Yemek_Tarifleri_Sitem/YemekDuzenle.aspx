<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
        }
    .auto-style10 {
        height: 35px;
    }
    .auto-style11 {
        text-align: left;
        height: 35px;
    }
    .auto-style12 {
        font-weight: bold;
        color: #FFFFFF;
        background-color: #990033;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Yemek <span class="auto-style4">Ad</span>:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong><span class="auto-style4">Malzemeler</span>:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong><span class="auto-style4">Tarif</span>:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong><span class="auto-style4">Kategori</span>:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:Button ID="Button1" runat="server" CssClass="testbutton" Text="Güncelle" Width="250px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
                <strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="35px" OnClick="Button2_Click" Text="GÜNÜN YEMEĞİ SEÇ" Width="250px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
