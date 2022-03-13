<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            color: #000000;
            margin-left: 4px;
            margin-top: 33px;
        }
        .auto-style13 {
            text-align: center;
            width: 115px;
            height: 503px;
        }
        .auto-style14 {
            font-size: x-large;
            height: 189px;
        }
        .auto-style15 {
            margin-left: 4px;
            margin-top: 31px;
        }
        .auto-style16 {
            margin-left: 138px;
            margin-top: 6px;
        }
        .auto-style17 {
            font-size: small;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style19 {
            color: #800000;
            background-color: #FF9999;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
        <div class="auto-style14">&nbsp;<asp:Image ID="Image2" runat="server" CssClass="auto-style16" Height="163px" ImageUrl="~/resimler/1712164_74070_1640790574.jpg" Width="163px" />
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style17"><em>&nbsp;&nbsp; </em></span><span class="auto-style18"><strong><em><span class="auto-style19">Author: Sayit Sami Koca</span></em></strong></span></div>
    <em>
    <div class="auto-style13">
    <asp:DataList ID="DataList2" runat="server" Width="441px" CssClass="auto-style12" Height="16px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    <strong><em>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style15" Height="252px" ImageUrl="~/resimler/blog.jpg" Width="441px" />
    </em></strong>

    </div>
    </em></strong>
    <br />
</asp:Content>
