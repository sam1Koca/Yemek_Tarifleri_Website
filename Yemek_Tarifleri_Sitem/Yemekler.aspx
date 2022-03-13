<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: right;
        height: 18px;
    }
    .auto-style9 {
        text-align: right;
        width: 100px;
        height: 18px;
    }
    .auto-style10 {
        height: 18px;
        width: 226px;
    }
        .auto-style11 {
            background-color: #99CCFF;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: larger;
        }
        .auto-style14 {
            width: 30px;
        }
        .auto-style15 {
            width: 38px;
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#66CCFF" CssClass="auto-style11" BorderColor="#6699FF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td style="background-color: #99CCFF">YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                           <a href="Yemekler.aspx?Yemekİd=<%#Eval("Yemekİd")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İcons/deleteİCON.png" Width="31px"/></a>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekDuzenle.aspx?Yemekİd=<%#Eval("Yemekİd")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İcons/updateİCON2.png" Width="30px"/></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#66CCFF" CssClass="auto-style11" BorderColor="#6699FF" style="margin-top:15px;">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td style="background-color: #99CCFF">YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>YEMEK AD: </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>YEMEK TARİFİ</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="BtnEkle" runat="server" CssClass="testbutton" Text="Ekle" OnClick="BtnEkle_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>



