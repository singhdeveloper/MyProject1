<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 110px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="1">
            <tr height="100px">
                <td colspan="3"></td>
            </tr>
            <tr>
                <td></td>
                <td width="50%" height="500px">

                    <table width="100%" height="100%">
                        <tr height="15%">
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td width="50%" class="auto-style1">
                                <center><asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label></center></td>
                            <td class="auto-style1">
                                <center><asp:TextBox ID="UserId" runat="server"></asp:TextBox></center></td>
                            
                        </tr>
                        <tr>
                            <td>
                                <center><asp:Label ID="Label2" runat="server" Text="Password" required></asp:Label></center></td>
                            <td>
                                <center><asp:TextBox ID="Password" runat="server" TextMode="Password" required></asp:TextBox></center></td>
                        </tr>
                        <tr>
                            <td>
                                <center><asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" /></center></td>
                            <td>
                                <center><asp:Button ID="ButtonClear" runat="server" Text="Clear" /></center></td>
                        </tr>
                        <tr height="15%">
                            <td colspan="2"></td>
                        </tr>
                    </table>



                </td>
                <td width="5%"></td>
            </tr>
            <tr height="100px">
                <td colspan="3"></td>
            </tr>


        </table>
    </form>
</body>
</html>
