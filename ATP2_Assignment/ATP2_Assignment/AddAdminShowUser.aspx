<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdminShowUser.aspx.cs" Inherits="ATP2_Assignment.AddAdminShowUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 605px;
        }
        .auto-style2 {
            margin-right: 126px;
        }
    </style>
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
                                    <asp:HyperLink ID="nameTxt" runat="server" NavigateUrl="~/AdminDashboardProfile.aspx">HyperLink</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="AddAdminBtn" runat="server" Text="AddAdmin" Width="93px" PostBackUrl="~/AdminDashboardAddAdmin.aspx" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="AddDoctorBtn" runat="server" Text="AddDoctor" PostBackUrl="~/AdminDashboardAddDoctor.aspx" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="ShowUserBtn" runat="server" Text="ShowUser" PostBackUrl="~/AddAdminShowUser.aspx" Width="93px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="LogoutBtn" runat="server" Text="Logout" PostBackUrl="~/Login.aspx" Width="93px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td class="auto-style1">
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
                                <td class="auto-style1" >
                                    <asp:GridView ID="GridView1" runat="server" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" AutoGenerateColumns="False" CssClass="auto-style2" Width="16px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="SL No." />
                                            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                                            <asp:BoundField DataField="LastName" HeaderText="LastName" />
                                            <asp:BoundField DataField="BirthDate" HeaderText="Birthdate" />
                                            <asp:BoundField DataField="Age" HeaderText="Age" />
                                            <asp:BoundField DataField="Gender" HeaderText="Gender" />
                                            <asp:BoundField DataField="Type" HeaderText="Type" />
                                            <asp:CommandField HeaderText="Option" ShowDeleteButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
