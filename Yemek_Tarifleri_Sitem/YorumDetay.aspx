<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
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
            <td class="auto-style10"><strong>Ad-Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="Txtİcerik" runat="server" Height="100px" TextMode="MultiLine" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="testbutton" Height="26px" OnClick="BtnOnayla_Click" Text="ONAYLA" Width="129px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
