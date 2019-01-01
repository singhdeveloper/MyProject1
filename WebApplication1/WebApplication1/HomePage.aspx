<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication1.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="1">
            <tr height="100px">
                <td colspan="3"></td>
            </tr>
            <tr>
                <td width="10%"></td>
                <td>

                    <table border="1">
                        <tr>
                            
                            <td heigth="200px" width="100px">
                                <asp:Button ID="Logout" runat="server" Text="LOGOUT" Width="200px" Height="203px" OnClick="Logout_Click" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="EditProfile" runat="server" Text="EDIT PROFILE" Width="200px" Height="203px" OnClick="EditProfile_Click" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="AlterUsers" runat="server" Width="200px" Height="203px" Text="ALTER USERS" OnClick="AlterUsers_Click" /></td>
                            <td heigth="200px" width="200px">
                                <asp:Button ID="Button1" runat="server" Width="200px" Height="203px" /></td>
                        </tr>
                        <tr>
                            <td heigth="200px" width="200px">
                                <asp:Button ID="Button5" runat="server" Width="200px" Height="203px" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="Button6" runat="server" Width="200px" Height="203px" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="Button7" runat="server" Width="200px" Height="203px" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="Button8" runat="server" Width="200px" Height="203px" /></td>
                        </tr>
                        <tr>
                            <td heigth="200px" width="200px">
                                <asp:Button ID="Button9" runat="server" Width="200px" Height="203px" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="Button10" runat="server" Width="200px" Height="203px" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="Button11" runat="server" Width="200px" Height="203px" /></td>
                            <td heigth="200px" width="100px">
                                <asp:Button ID="Button12" runat="server" Width="200px" Height="203px" /></td>
                        </tr>
                    </table>



                </td>
                <td>
                    <!--<table width="100%" border="1">
                        <tr height="20px">
                            <td>
                                <center>NOTICE</center>
                            </td>
                        </tr>
                        <tr><td>
                    </td></tr>
                    </table>-->
                </td>

            </tr>
            <tr height="100px">
                <td colspan="3"></td>
            </tr>
        </table>
    </form>
</body>
</html>
