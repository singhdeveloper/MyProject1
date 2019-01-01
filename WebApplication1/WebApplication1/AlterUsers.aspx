<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterUsers.aspx.cs" Inherits="WebApplication1.AlterUsers" %>

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
                <td td width="5%" rowspan="2"></td>
                <td width="50%" height="400px">
                    <div style="width: 100%; height: 400px; overflow: scroll">
                        <asp:GridView ID="UserDetailGridView" runat="server" Width="100%"></asp:GridView>
                    </div>
                </td>

                <td td width="5%" rowspan="2"></td>
            </tr>

            <tr>
                <td height="80px"></td>
            </tr>

            <tr height="100px">
                <td colspan="3"></td>
            </tr>

        </table>
    </form>
</body>
</html>
