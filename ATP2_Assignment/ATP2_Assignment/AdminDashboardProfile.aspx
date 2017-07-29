<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboardProfile.aspx.cs" Inherits="ATP2_Assignment.AdminDashboardProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 281px;
        }
        .auto-style3 {
            width: 273px;
        }
        .auto-style4 {
            height: 23px;
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
                                    <asp:Button ID="AddAdminBtn" runat="server" Text="AddAdmin" Width="93px" PostBackUrl="~/AdminDashboardAddAdmin.aspx" OnClick="AddAdminBtn_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="AddDoctorBtn" runat="server" Text="AddDoctor" PostBackUrl="~/AdminDashboardAddDoctor.aspx" OnClick="AddDoctorBtn_Click" />
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
                    <td class="auto-style2">
                        <table class="auto-style3">
                           <tr>
                               <td class="auto-style4">
                                   Name :
                               </td>
                               <td class="auto-style4">
                                  
                                   <asp:Label ID="pNameTxt" runat="server" Text="Name"></asp:Label>
                                  
                               </td>
                            </tr>
                             <tr>
                               <td>
                                  Birthdate :
                               </td>
                               <td>
                                  
                                   <asp:Label ID="Dobtxt" runat="server" Text="Label"></asp:Label>
                                  
                               </td>
                            </tr>
                             <tr>
                               <td>
                                  Age :
                               </td>
                               <td>
                                   
                                   <asp:Label ID="AgeTxt" runat="server" Text="Label"></asp:Label>
                                   
                               </td>
                            </tr>
                             <tr>
                               <td>
                                  Gender :
                               </td>
                               <td>
                                  
                                   <asp:Label ID="GenderTxt" runat="server" Text="Label"></asp:Label>
                                  
                               </td>
                            </tr>
                             <tr>
                               <td>
                                  Type :
                               </td>
                               <td>
                                  
                                   <asp:Label ID="Typetxt" runat="server" Text="Label"></asp:Label>
                                  
                               </td>
                            </tr>
                             <tr>
                               <td>
                                  Email :
                               </td>
                               <td>
                                  
                                   <asp:Label ID="EmailTxt" runat="server" Text="Label"></asp:Label>
                                  
                               </td>
                            </tr>
                           <tr>
                               <td>
                                
                               </td>
                               <td>
                                   <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" PostBackUrl="~/AddAdminUpdate.aspx" />
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
