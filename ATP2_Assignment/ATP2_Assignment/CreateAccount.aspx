<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="ATP2_Assignment.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table cellpadding="5" cellspacing="2">
                 <tr>
                     <td> <asp:Label ID="Label7" runat="server" Text="First Name: "></asp:Label></td>
                     <td> <asp:TextBox ID="FnameTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FnameTxt" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                     <td> <asp:Label ID="Label16" runat="server" Text="Last Name: "></asp:Label></td>
                     <td> <asp:TextBox ID="LnameTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LnameTxt" ErrorMessage="Last Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                  <tr>
                     <td> <asp:Label ID="Label18" runat="server" Text="User ID : "></asp:Label></td>
                     <td> <asp:TextBox ID="UserIDTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserIDTxt" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      </td>
                </tr>
                 </tr>
                  <tr>
                     <td> <asp:Label ID="Label1" runat="server" Text="Email : "></asp:Label></td>
                     <td> <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email not correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email not correct format</asp:RegularExpressionValidator>
                      </td>
                </tr>
                  <tr>
                     <td> <asp:Label ID="Label20" runat="server" Text="Birthdate"></asp:Label></td>
                     <td>
                         <asp:TextBox ID="TextBoxDOB" runat="server" Enabled="False"></asp:TextBox>
                        <asp:ImageButton ID="ImageButtonShowCalendar" runat="server" ImageUrl="~/Images/1.jpg" Height="24px" OnClick="ImageButtonShowCalendar_Click" /><br />
                        <asp:Calendar ID="CalendarDOB" runat="server" Visible="false" OnSelectionChanged="CalendarDOB_SelectionChanged"></asp:Calendar>
                    

                     </td>
                     <td class="auto-style1"> 
                         &nbsp;</td>
                </tr>
                  <tr>
                     <td> <asp:Label ID="Label22" runat="server" Text="First Name: "></asp:Label></td>
                     <td> 
                          <asp:RadioButtonList ID="GenderButtonList" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                         </asp:RadioButtonList>

                     </td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="GenderButtonList" ErrorMessage="Gender  Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                      </td>
                </tr>
                <tr>
                     <td> <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label></td>
                     <td> <asp:TextBox ID="PassTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PassTxt" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                     </td>
                </tr>
                  <tr>
                     <td> <asp:Label ID="Label4" runat="server" Text="Confirm Password: "></asp:Label></td>
                     <td> <asp:TextBox ID="CPassTxt" runat="server"></asp:TextBox></td>
                     <td class="auto-style1">  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CPassTxt" ErrorMessage="Confirm pass Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTxt" ControlToValidate="CPassTxt" ErrorMessage="Password Didn't match" ForeColor="Red">Password Didn&#39;t match</asp:CompareValidator>
                      </td>
                </tr>
                  <tr>
                     <td></td>
                     <td> <asp:Button ID="SignUp" runat="server" Text="Sign Up" OnClick="SignUp_Click" /></td>
                     <td class="auto-style1"></td>
                </tr>
                  <tr>
                     <td></td>
                     <td>  <asp:Label ID="ResultText" runat="server" Text="Account Created" Font-Bold="True" ForeColor="Lime" Visible="False"></asp:Label></td>
                     <td class="auto-style1"></td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
