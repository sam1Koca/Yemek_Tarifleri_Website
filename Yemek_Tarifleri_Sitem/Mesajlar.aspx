﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style11 {
            background-color: #99CCFF;
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
            left: 1%;
            top: -2147483648px;
            width: 191px;
            text-align: right;
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
                <td style="background-color: #99CCFF"><strong>MESAJLAR LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </strong>
                        </td>
                        
                        <td class="auto-style16">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcons/book-reading.png" Width="39px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
