<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebApplication1.EditProfile" %>

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
            <tr height="30px">
                <td colspan="3"></td>
            </tr>

            <tr>
                <td td width="5%"></td>
                <td width="50%" height="500px">

                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="USER ID"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxId" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="PASSWORD"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="NAME"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="MOBILE"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxMobile" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label runat="server" Text="ADDRESS"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Text="EMAIL"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ButtonUpdate" runat="server" Text="UPDATE" OnClick="ButtonUpdate_Click" /></td>
                            <td>
                                <asp:Button ID="ButtonCancel" runat="server" Text="CANCEL" OnClick="ButtonCancel_Click" /></td>
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
