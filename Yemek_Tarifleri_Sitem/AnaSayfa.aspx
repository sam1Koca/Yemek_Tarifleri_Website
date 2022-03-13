<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style12 {
            background-color: #FFCCCC;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList2" runat="server" Width="445px">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style12"><strong>

                        <a href="YemekDetay.aspx?Yemekİd=<%# Eval("Yemekİd") %>"><asp:Label ID="Labe3" runat="server" style="font-weight:700; font-size: x-large; color: #CC0066;" Text='<%# Eval
                                                                   ("YemekAd") %>'></asp:Label></a>

                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style13"></asp:Label>
                        &nbsp;- <strong><em>Puan:</em></strong> <strong><em>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style13"></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
