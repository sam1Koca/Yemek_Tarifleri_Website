<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            margin-left: 40px;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            text-align: right;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
            margin-left: 40px;
        }
        .auto-style17 {
            font-family: arial;
            font-weight: bold;
            color: #000000;
            font-size: 16px;
            text-shadow: 1px 1px 7px #DECE64;
            box-shadow: 0px 0px 10px #BEE2F9;
            padding: 4px 40px;
            border-radius: 9px;
            border: 1px inset #000000;
            background: #DA98EE;
            background: #DA98EE;
            margin-left: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Ad: </strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" placeholder="Tarifinizin Adı" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Malzemeler</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtMalzemeler" placeholder="Tarif Gereksinimleri" runat="server"  Height="80px" TextMode="MultiLine" Width="250px"  CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Yapılışı: </strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TxtYapilisi" runat="server" Height="150px" placeholder="Leziz Tarifinizi Nasıl Yapıyorsunuz ?" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Resim: </strong></td>
            <td class="auto-style11">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Öneren: </strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtTarifOneren" runat="server" placeholder="İsim ve Soyisim" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Mail Adresi: </strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email"  Width="250px" CssClass="tb5" placeholder="mail@yemektarifim.com"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFCC99" CssClass="testbutton" Height="40px" OnClick="BtnTarifOner_Click" Text="Tarif Öner" Width="149px" />
            </td>
        </tr>
    </table>
</asp:Content>
