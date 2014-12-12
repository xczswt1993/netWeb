<%@ Page Language="C#" AutoEventWireup="true" CodeFile="install02.aspx.cs" Inherits="install02" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 339px;
        }
        .style2
        {
            height: 286px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="242px" 
                    style="margin-top: 0px" TextMode="MultiLine" Width="889px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="lbmessage" align="right"></asp:Label>
                <asp:Button ID="btnExcute" runat="server" Height="30px" Text="执行" 
                    Width="88px" onclick="btnExcute_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
