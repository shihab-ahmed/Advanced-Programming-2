<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdminShowUser.aspx.cs" Inherits="ATP2_Assignment.AddAdminShowUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label Text="Name" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="AddAdminBtn" runat="server" Text="AddAdmin" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="AddDoctorBtn" runat="server" Text="AddDoctor" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="ShowUserBtn" runat="server" Text="ShowUser" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="LogoutBtn" runat="server" Text="Logout" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox ID="SearchBox" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="SearchKeyDrowDown" runat="server">
                                        <asp:ListItem>Any</asp:ListItem>
                                        <asp:ListItem>First Name</asp:ListItem>
                                        <asp:ListItem>Last Name</asp:ListItem>
                                        <asp:ListItem>Age</asp:ListItem>
                                        <asp:ListItem>Type</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
                                </td>
                              
                            </tr>
                            <tr>
                                <td >
                                    <asp:GridView ID="GridView1" runat="server">
                                        <Columns>
                                            <asp:CommandField HeaderText="Option" ShowDeleteButton="True" ShowEditButton="True" />
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                           
                        </table>
                    </td>
                </tr>
               
            </table>
        </div>
    </form>
</body>
</html>
