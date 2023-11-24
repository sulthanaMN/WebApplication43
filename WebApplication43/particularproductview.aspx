<%@ Page Title="" Language="C#" MasterPageFile="~/Site5.Master" AutoEventWireup="true" CodeBehind="particularproductview.aspx.cs" Inherits="WebApplication43.particularproductview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            width: 619px;
        }
        .auto-style4 {
            width: 23px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 359px;
        }
        .auto-style8 {
            height: 22px;
            width: 359px;
        }
        .auto-style9 {
            height: 26px;
            width: 359px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" Height="464px" Width="622px" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Height="411px">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Label" Width="400px"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">₹<span style="color: rgb(189, 193, 198); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(32, 33, 36); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><asp:Label ID="lblprice" runat="server" BackColor="White" Font-Bold="True" Font-Size="Large" ForeColor="Maroon" Text="Label"></asp:Label>
                                </span></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label1" runat="server" Font-Underline="True" Text="Description"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="lbldescription" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtquantity" ErrorMessage="                        You can't leave this blank." Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Quantity:"></asp:Label>
                                <asp:TextBox ID="txtquantity" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Button ID="Button1" runat="server" BackColor="Maroon" ForeColor="White" Height="55px" OnClick="Button1_Click" Text="Add to cart" Width="190px" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" BackColor="Maroon" ForeColor="White" Height="54px" OnClick="Button2_Click" Text="Continue shopping" Width="195px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
