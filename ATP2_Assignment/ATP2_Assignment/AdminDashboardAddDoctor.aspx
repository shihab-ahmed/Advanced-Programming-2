<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboardAddDoctor.aspx.cs" Inherits="ATP2_Assignment.AdminDashboardAddDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 151px;
        }
        .auto-style2 {
            width: 132px;
        }
        .auto-style3 {
            width: 595px;
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
                                    <asp:Button ID="AddAdminBtn" runat="server" Text="AddAdmin" PostBackUrl="~/AdminDashboardAddAdmin.aspx" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="AddDoctorBtn" runat="server" Text="AddDoctor" PostBackUrl="~/AdminDashboardAddDoctor.aspx" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="ShowUserBtn" runat="server" Text="ShowUser" PostBackUrl="~/AddAdminShowUser.aspx" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="LogoutBtn" runat="server" Text="Logout" PostBackUrl="~/Login.aspx" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style3">
                        
                         <table cellpadding="5" cellspacing="2">
                 <tr>
                     <td class="auto-style2"> <asp:Label ID="Label7" runat="server" Text="First Name: "></asp:Label></td>
                     <td> <asp:TextBox ID="FnameTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FnameTxt" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                     <td class="auto-style2"> <asp:Label ID="Label16" runat="server" Text="Last Name: "></asp:Label></td>
                     <td> <asp:TextBox ID="LnameTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LnameTxt" ErrorMessage="Last Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                  <tr>
                     <td class="auto-style2"> <asp:Label ID="Label18" runat="server" Text="User ID : "></asp:Label></td>
                     <td> <asp:TextBox ID="UserIDTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserIDTxt" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:Label ID="NameTaken" runat="server" Font-Bold="True" ForeColor="Red" Text="Name Taken" Visible="False"></asp:Label>
                      </td>
                </tr>
                 </tr>
                  <tr>
                     <td class="auto-style2"> <asp:Label ID="Label1" runat="server" Text="Email : "></asp:Label></td>
                     <td> <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email not correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email not correct format</asp:RegularExpressionValidator>
                      </td>
                </tr>
                  <tr>
                     <td class="auto-style2"> <asp:Label ID="Label20" runat="server" Text="Birthdate"></asp:Label></td>
                     <td>
                         <asp:TextBox ID="TextBoxDOB" runat="server" Enabled="False"></asp:TextBox>
                        <asp:ImageButton ID="ImageButtonShowCalendar" runat="server" ImageUrl="~/Images/1.jpg" Height="24px" OnClick="ImageButtonShowCalendar_Click" CausesValidation="False" /><br />
                        <asp:Calendar ID="CalendarDOB" runat="server" Visible="false" OnSelectionChanged="CalendarDOB_SelectionChanged"></asp:Calendar>
                    

                     </td>
                     <td class="auto-style1"> 
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxDOB" ErrorMessage="Date  Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      </td>
                </tr>
                  <tr>
                     <td class="auto-style2"> Gender:</td>
                     <td> 
                          <asp:RadioButtonList ID="GenderButtonList" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                         </asp:RadioButtonList>

                     </td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="GenderButtonList" ErrorMessage="Gender  Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      </td>
                </tr>

                 <tr>
                     <td class="auto-style2"> <asp:Label ID="Label3" runat="server" Text="Specialist : "></asp:Label></td>
                     <td> 
                         <asp:DropDownList ID="DropDownListSpecialist" runat="server">
                             <asp:ListItem>Dentist</asp:ListItem>
                             <asp:ListItem>Medicine Specialist</asp:ListItem>
                             <asp:ListItem>Cardiologist</asp:ListItem>
                         </asp:DropDownList>
                     </td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListSpecialist" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>

                 <tr>
                     <td class="auto-style2"> <asp:Label ID="Label5" runat="server" Text="Experience(year) : "></asp:Label></td>
                     <td> 
                         <asp:TextBox ID="ExperienceTxt" runat="server" MaxLength="2"></asp:TextBox>
                     </td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ExperienceTxt" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ExperienceTxt" ErrorMessage="Only Number" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                     </td>
                </tr>





                <tr>
                     <td class="auto-style2"> <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label></td>
                     <td> <asp:TextBox ID="PassTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PassTxt" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                  <tr>
                     <td class="auto-style2"> <asp:Label ID="Label4" runat="server" Text="Confirm Password: "></asp:Label></td>
                     <td> <asp:TextBox ID="CPassTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CPassTxt" ErrorMessage="Confirm pass Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTxt" ControlToValidate="CPassTxt" ErrorMessage="Password Didn't match" ForeColor="Red">Password Didn&#39;t match</asp:CompareValidator>
                      </td>
                </tr>
                  <tr>
                     <td class="auto-style2"></td>
                     <td> 
                         <asp:Button ID="Button1" runat="server" PostBackUrl="~/Login.aspx" Text="Back" CausesValidation="False" />
                         <asp:Button ID="SignUp" runat="server" Text="Sign Up" OnClick="SignUp_Click" /></td>
                     <td class="auto-style1">&nbsp;</td>
                </tr>
                  <tr>
                     <td class="auto-style2">&nbsp;</td>
                     <td>  <asp:Label ID="ResultText" runat="server" Text="Account Created" Font-Bold="True" ForeColor="Lime" Visible="False"></asp:Label></td>
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
