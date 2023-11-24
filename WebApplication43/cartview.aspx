<%@ Page Title="" Language="C#" MasterPageFile="~/Site5.Master" AutoEventWireup="true" CodeBehind="cartview.aspx.cs" Inherits="WebApplication43.cartview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 22px;
            width: 1210px;
        }
        .auto-style3 {
            width: 1210px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 1210px;
            height: 39px;
        }
        .auto-style9 {
            height: 39px;
        }
        .auto-style10 {
            height: 22px;
            width: 223px;
        }
        .auto-style11 {
            width: 223px;
        }
        .auto-style12 {
            height: 39px;
            width: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style10">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" Text="DATE  :"></asp:Label>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">
                <center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Maroon" Text="Shopping Cart"></asp:Label>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ClientIDMode="Static" CssClass="auto-style4" DataKeyNames="cart_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1000px">
                                <Columns>
                                    <asp:BoundField DataField="cart_id" HeaderText="id">
                                    <HeaderStyle ForeColor="Maroon" />
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="pro_image" HeaderText="Product_image">
                                        <ControlStyle Height="100px" Width="100px" />
                                        <HeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" />
                                        <ItemStyle Height="20px" Width="20px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="pro_name" HeaderText="product_name">
                                    <HeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cart_quantity" HeaderText="Product_Quantity">
                                    <HeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cart_item_total_price" HeaderText="Product_Price">
                                    <HeaderStyle Font-Bold="True" Font-Size="Medium" ForeColor="Maroon" />
                                    </asp:BoundField>
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:CommandField DeleteText="❌" ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </center>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style2"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style8">
                <center><asp:Button ID="Button1" runat="server" BackColor="Maroon" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="PROCEED TO CHECKOUT" Width="346px" OnClick="Button1_Click"  /></center>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
