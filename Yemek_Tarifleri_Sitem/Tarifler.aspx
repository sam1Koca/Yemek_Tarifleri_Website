<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Tarifler" %>
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
                <td style="background-color: #99CCFF"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong>
                        </td>
                        
                        <td class="auto-style16">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcons/fd8005874bb3da32b1e0d3052b6f38fe.png" Width="39px"/></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            <br />
            </asp:Panel>
             <asp:Panel ID="Panel3" runat="server" BackColor="#FF6699" CssClass="auto-style11" BorderColor="#6699FF" >
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td style="background-color: #99CCFF"><strong>ONAYLI TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong>
                        </td>
                        
                        <td class="auto-style16">
                          <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcons/fd8005874bb3da32b1e0d3052b6f38fe.png" Width="39px"/></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            </asp:Panel>
</asp:Content>
