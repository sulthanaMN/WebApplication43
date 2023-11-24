<%@ Page Title="" Language="C#" MasterPageFile="~/Site5.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="WebApplication43.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 128px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 265px;
        }
        .auto-style7 {
            width: 265px;
        }
        .auto-style8 {
            height: 23px;
            width: 252px;
        }
        .auto-style9 {
            width: 252px;
        }
        .auto-style11 {
            height: 22px;
            width: 809px;
        }
        .auto-style12 {
            width: 809px;
        }
        .auto-style13 {
            width: 633px;
        }
        .auto-style16 {
            width: 809px;
            height: 34px;
        }
        .auto-style17 {
            width: 1247px;
        }
        .auto-style18 {
            width: 1247px;
            height: 34px;
        }
        .auto-style19 {
            height: 22px;
            width: 1247px;
        }
        .auto-style20 {
            width: 438px;
        }
        .auto-style21 {
            width: 438px;
            height: 34px;
        }
        .auto-style22 {
            height: 22px;
            width: 438px;
        }
    .auto-style23 {
        width: 1247px;
        height: 26px;
    }
    .auto-style24 {
        width: 438px;
        height: 26px;
    }
    .auto-style25 {
        width: 809px;
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20"></td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                </td>
            <td class="auto-style18">
                </td>
            <td class="auto-style18">
                </td>
            <td class="auto-style21">
                <center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="Maroon" Text="ORDER SUMMARY"></asp:Label></center>
            </td>
            <td class="auto-style16">
                </td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style22"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style22"></td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style22">
                <asp:DataList ID="DataList1" runat="server" Width="1142px" CssClass="auto-style20">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Image ID="Image1" runat="server" Height="127px" Width="127px" ImageUrl='<%# Eval("pro_image") %>' />
                                </td>
                                <td>
                                    <asp:Panel ID="Panel1" runat="server" Height="122px">
                                        <table class="w-100">
                                            <tr>
                                                <td class="auto-style8">
                                                    <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" Text='<%# Eval("pro_name") %>'></asp:Label>
                                                </td>
                                                <td class="auto-style6"></td>
                                                <td class="auto-style5">₹<asp:Label ID="lblprice" runat="server" Font-Bold="True" Font-Size="Medium" Text='<%# Eval("pro_price") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">&nbsp;</td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">&nbsp;</td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">&nbsp;</td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" Text="Qty:"></asp:Label>
                                                    <asp:Label ID="lblqty" runat="server" Text='<%# Eval("cart_quantity") %>'></asp:Label>
                                                </td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style20">
                <asp:Panel ID="Panel2" runat="server" Width="1143px">
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="TOTAL:"></asp:Label>
                                <asp:Label ID="lbl" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Maroon" Text="₹"></asp:Label>
                                <asp:Label ID="lbltotalprice" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Maroon" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style22"> <center><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" ForeColor="Maroon" Text="DELIVERY DETAILS"></asp:Label></center></td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">
               <center> </center>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style22"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style22">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="Full Name"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" Font-Bold="True" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style22">
                <asp:TextBox ID="txtname" runat="server" Width="828px" ForeColor="Gray" placeholder="Enter your full name"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style22"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style22">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Mobile Number"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtphone" runat="server" ForeColor="#999999" TextMode="Phone" Width="824px" placeholder="Enter your mobile number"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style22"></td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Address"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtaddress" runat="server" ForeColor="Gray" TextMode="MultiLine" Width="825px" placeholder="Enter full address"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style22"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Email"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmail" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style23"></td>
            <td class="auto-style23"></td>
            <td class="auto-style24">
                <asp:TextBox ID="txtmail" runat="server" ForeColor="Gray" Width="826px" placeholder="Enter your mail address"></asp:TextBox>
            </td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style22"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="Button3" runat="server" BackColor="Maroon" Font-Bold="True" ForeColor="White" Text="MAKE PAYMENT" Width="839px" OnClick="Button3_Click" />
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
