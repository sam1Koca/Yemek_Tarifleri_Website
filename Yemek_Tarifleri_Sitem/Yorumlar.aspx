<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yorumlar" %>
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
    .auto-style10 {
        height: 18px;
        width: 226px;
    }
        .auto-style9 {
        text-align: right;
        width: 100px;
        height: 18px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FF6699" CssClass="auto-style11" BorderColor="#6699FF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px"/>
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px"/>
                    </strong></td>
                <td style="background-color: #99CCFF">ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcons/deleteİCON.png" Width="31px" />
                            </td>
                        <td class="auto-style7">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcons/updateİCON2.png" Width="30px" />
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#FF6699" CssClass="auto-style11" BorderColor="#6699FF" margin-top="25px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td style="background-color: #99CCFF">ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcons/deleteİCON.png" Width="31px" />
                            </td>
                        <td class="auto-style7">
                           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcons/updateİCON2.png" Width="30px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
