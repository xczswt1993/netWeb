﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 393px;
        }
        .style2
        {
            text-align: right;
            width: 615px;
        }
        .style3
        {
            font-size: large;
        }
        .style5
        {
            font-size: x-large;
        }
        .style6
        {
            text-align: right;
            font-size: large;
            font-weight: bold;
            width: 806px;
        }
        .style7
        {
            text-align: center;
            font-size: large;
            font-weight: bold;
            width: 615px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right">
    
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style5"><br />
&nbsp;</span><strong><span class="style5">用户注册</span></strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    <table class="style1">
        <tr>
            <td class="style6" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="415px" Width="523px" 
                    src="left.jpg" style="margin-left: 0px" />
            </td>
            <td class="style7">
                用户名</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtUserName" runat="server" style="text-align: center" 
                    Height="33px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                密码</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtUserPwd"  type="password"  runat="server" style="text-align: center" 
                    Height="34px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                邮箱</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtUserEmail" runat="server" style="text-align: center" 
                    Height="32px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lbmessage" runat="server" CssClass="style3" ForeColor="#3333CC"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:Button ID="btnReg" runat="server" BorderStyle="Double" CssClass="style3" 
                    Font-Bold="True" Font-Italic="False" Font-Names="宋体" Font-Overline="False" 
                    Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Height="37px" 
                    onclick="btnReg_Click" Text="同意并注册" Width="104px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"><a href="login.aspx">登录</a></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
