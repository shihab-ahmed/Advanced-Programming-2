<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ATP2_Assignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="User ID :"></asp:Label>
                    </asp:TableCell>
                     <asp:TableCell>
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                    </asp:TableCell>
                     <asp:TableCell>
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow HorizontalAlign="Right">
                     <asp:TableCell ColumnSpan="2" >
                         <asp:Button ID="Button1" runat="server" Text="Button" />
                    </asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow HorizontalAlign="Right" ForeColor="RED">
                     <asp:TableCell ColumnSpan="2" >
                         <asp:Label ID="Label3" runat="server" Text="Error message"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
