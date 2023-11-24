<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="categoryview.aspx.cs" Inherits="WebApplication43.categoryview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style4 {
            width: 263px;
        }
        .auto-style6 {
            width: 66px;
        }
        .auto-style8 {
            width: 263px;
            height: 490px;
        }
        .auto-style9 {
            width: 66px;
            height: 490px;
        }
        .auto-style10 {
            height: 490px;
        }
        .auto-style11 {
            width: 263px;
            height: 22px;
        }
        .auto-style12 {
            width: 66px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;<asp:Image ID="Image1" runat="server" Height="76px" ImageUrl="giftphoto1.png" Width="103px" />
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Maroon" Text="Unique Gifts Online" Width="500px"></asp:Label>
                <asp:DataList ID="DataList1" runat="server" Height="345px" RepeatColumns="7" BackColor="Silver" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="215px" ImageUrl='<%# Eval("cat_image") %>' OnCommand="ImageButton1_Command" Width="220px" CommandArgument='<%# Eval("cat_id") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Text='<%# Eval("cat_name") %>' Font-Bold="True"></asp:Label>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style1"></td>
        </tr>
        </table>
</asp:Content>
