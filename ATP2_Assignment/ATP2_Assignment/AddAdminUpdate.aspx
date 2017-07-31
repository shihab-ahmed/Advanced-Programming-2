<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdminUpdate.aspx.cs" Inherits="ATP2_Assignment.AddAdminUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 348px;
        }
        .auto-style2 {
            width: 788px;
        }
        .auto-style3 {
            width: 384px;
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
                              
                              
                            </tr>
                              
                        </table>
                    </td>

                     <td class="auto-style2">
                        <table cellpadding="5" cellspacing="2">
                         <tr>
                             <td> <asp:Label ID="Label7" runat="server" Text="First Name: "></asp:Label></td>
                             <td> <asp:TextBox ID="FnameTxt" runat="server"></asp:TextBox></td>
                             <td class="auto-style1">  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FnameTxt" ErrorMessage="First Name Required" ForeColor="Red" ValidationGroup="A">*</asp:RequiredFieldValidator>
                             </td>
                        </tr>
                         <tr>
                             <td> <asp:Label ID="Label16" runat="server" Text="Last Name: "></asp:Label></td>
                             <td> <asp:TextBox ID="LnameTxt" runat="server"></asp:TextBox></td>
                             <td class="auto-style1">  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LnameTxt" ErrorMessage="Last Name Required" ForeColor="Red" ValidationGroup="A">*</asp:RequiredFieldValidator>
                             </td>
                        </tr>
                         
                         </tr>
                          <tr>
                             <td> <asp:Label ID="Label1" runat="server" Text="Email : "></asp:Label></td>
                             <td> <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox></td>
                             <td class="auto-style1">  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email Required" ForeColor="Red" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email not correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="A">Email not correct format</asp:RegularExpressionValidator>
                              </td>
                        </tr>
                          <tr>
                             <td> <asp:Label ID="Label20" runat="server" Text="Birthdate"></asp:Label></td>
                             <td>
                                 <asp:TextBox ID="TextBoxDOB" runat="server" Enabled="False"></asp:TextBox>
                                <asp:ImageButton ID="ImageButtonShowCalendar" runat="server" ImageUrl="~/Images/1.jpg" Height="24px" OnClick="ImageButtonShowCalendar_Click" CausesValidation="False" /><br />
                                <asp:Calendar ID="CalendarDOB" runat="server" Visible="false" OnSelectionChanged="CalendarDOB_SelectionChanged"></asp:Calendar>
                    

                             </td>
                             <td class="auto-style1"> 
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Date  Required" ForeColor="Red" ValidationGroup="A">*</asp:RequiredFieldValidator>
                              </td>
                        </tr>
                          <tr>
                             <td> <asp:Label ID="Label22" runat="server" Text="Gender: "></asp:Label></td>
                             <td> 
                                  <asp:RadioButtonList ID="GenderButtonList" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="Male">Male</asp:ListItem>
                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                 </asp:RadioButtonList>

                             </td>
                             <td class="auto-style1">  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="GenderButtonList" ErrorMessage="Gender  Required" ForeColor="Red" ValidationGroup="A">*</asp:RequiredFieldValidator>
                              </td>
                        </tr>
                          <tr>
                             <td></td>
                             <td> 
                                 <asp:Button ID="UpdateProfile" runat="server" Text="Update" OnClick="UpdateProfile_Click" ValidationGroup="A" /></td>
                             <td class="auto-style1">&nbsp;</td>
                        </tr>
                          <tr>
                             <td>&nbsp;</td>
                             <td>  <asp:Label ID="ResultText" runat="server" Text="Account Updated" Font-Bold="True" ForeColor="Lime" Visible="False"></asp:Label></td>
                             <td class="auto-style1"></td>
                        </tr>
                        </table>
                    </td>

                    <td class="auto-style3">
                        <table>
                             <tr>
                             <td> <asp:Label ID="Label5" runat="server" Text="Current Password : "></asp:Label></td>
                             <td> <asp:TextBox ID="changepassTxt" runat="server"></asp:TextBox></td>
                             <td class="auto-style1">  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PassTxt" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="B">*</asp:RequiredFieldValidator>
                                 <asp:Label ID="wrongpassTxt" runat="server" ForeColor="Red" Text="Wrong Pass" Visible="False"></asp:Label>
                             </td>
                        </tr>
                             <tr>
                             <td> <asp:Label ID="Label2" runat="server" Text="New Password : "></asp:Label></td>
                             <td> <asp:TextBox ID="PassTxt" runat="server"></asp:TextBox></td>
                             <td class="auto-style1">  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PassTxt" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="B">*</asp:RequiredFieldValidator>
                             </td>
                        </tr>
                          <tr>
                             <td> <asp:Label ID="Label4" runat="server" Text="Confirm Password: "></asp:Label></td>
                             <td> <asp:TextBox ID="CPassTxt" runat="server"></asp:TextBox></td>
                             <td class="auto-style1">  
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CPassTxt" ErrorMessage="Confirm pass Required" ForeColor="Red" ValidationGroup="B">*</asp:RequiredFieldValidator>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTxt" ControlToValidate="CPassTxt" ErrorMessage="Password Didn't match" ForeColor="Red" ValidationGroup="B">Password Didn&#39;t match</asp:CompareValidator>
                              </td>
                        </tr> 
                         <tr>
                             <td></td>
                             <td> 
                                 <asp:Button ID="ChangePassBtn" runat="server" Text="Update" OnClick="ChangePassBtn_Click" ValidationGroup="B" /></td>
                             <td class="auto-style1">&nbsp;</td>
                        </tr>
                          <tr>
                             <td>&nbsp;</td>
                             <td>  <asp:Label ID="ChangePassText" runat="server" Text="Password Changed" Font-Bold="True" ForeColor="Lime" Visible="False"></asp:Label></td>
                             <td class="auto-style1"></td>
                        </tr>
                        </table>
                    </td>
                </tr>
               
            </table>


        </div>
    </form>
</body>
</html>
