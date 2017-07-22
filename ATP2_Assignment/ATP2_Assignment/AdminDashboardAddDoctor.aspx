<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboardAddDoctor.aspx.cs" Inherits="ATP2_Assignment.AdminDashboardAddDoctor" %>

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
                        <table cellpadding="5" cellspacing="2">
                         <tr>
                             <td> <asp:Label ID="Label7" runat="server" Text="First Name: "></asp:Label></td>
                             <td> <asp:TextBox ID="FnameTxt" runat="server"></asp:TextBox></td>
                             <td>  <asp:Label ID="Label9" runat="server" Text="ErrorMessage"></asp:Label></td>
                        </tr>
                         <tr>
                             <td> <asp:Label ID="Label16" runat="server" Text="Last Name: "></asp:Label></td>
                             <td> <asp:TextBox ID="LnameTxt" runat="server"></asp:TextBox></td>
                             <td>  <asp:Label ID="Label17" runat="server" Text="ErrorMessage"></asp:Label></td>
                        </tr>
                          <tr>
                             <td> <asp:Label ID="Label18" runat="server" Text="User ID : "></asp:Label></td>
                             <td> <asp:TextBox ID="UserIDTxt" runat="server"></asp:TextBox></td>
                             <td>  <asp:Label ID="Label19" runat="server" Text="ErrorMessage"></asp:Label></td>
                        </tr>
                          <tr>
                             <td> <asp:Label ID="Label20" runat="server" Text="Age: "></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="TextBoxDOB" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="ImageButtonShowCalendar" runat="server"  OnClick="ImageButtonShowCalendar_Click" /><br />
                                <asp:Calendar ID="CalendarDOB" runat="server" Visible="false" OnSelectionChanged="CalendarDOB_SelectionChanged"></asp:Calendar>
                    

                             </td>
                             <td> 
                                 <asp:Label ID="Label1" runat="server" Text="ErrorMessage"></asp:Label>

                             </td>
                        </tr>
                          <tr>
                             <td> <asp:Label ID="Label22" runat="server" Text="First Name: "></asp:Label></td>
                             <td> 
                                  <asp:RadioButtonList ID="GenderButtonList" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="M">Male</asp:ListItem>
                                    <asp:ListItem Value="F">Female</asp:ListItem>
                                 </asp:RadioButtonList>

                             </td>
                             <td>  <asp:Label ID="Label23" runat="server" Text="ErrorMessage"></asp:Label></td>
                        </tr>
                        <tr>
                             <td> <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label></td>
                             <td> <asp:TextBox ID="PassTxt" runat="server"></asp:TextBox></td>
                             <td>  <asp:Label ID="Label3" runat="server" Text="ErrorMessage"></asp:Label></td>
                        </tr>
                          <tr>
                             <td> <asp:Label ID="Label4" runat="server" Text="Confirm Password: "></asp:Label></td>
                             <td> <asp:TextBox ID="CPassTxt" runat="server"></asp:TextBox></td>
                             <td>  <asp:Label ID="Label5" runat="server" Text="ErrorMessage"></asp:Label></td>
                        </tr>
                          <tr>
                             <td></td>
                             <td> <asp:Button ID="SignUp" runat="server" Text="Sign Up" /></td>
                             <td></td>
                        </tr>
                          <tr>
                             <td></td>
                             <td>  <asp:Label ID="Label8" runat="server" Text="Account Created"> </asp:Label></td>
                             <td></td>
                        </tr>
                        </table>
                    </td>
                </tr>
               
            </table>

        </div>
    </form>
</body>
</html>
