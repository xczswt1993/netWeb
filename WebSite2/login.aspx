<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 437px;
            margin-bottom: 0px;
        }
        .style3
        {
            text-align: center;
            font-weight: 700;
            font-size: large;
        }
        .style5
        {
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            width: 214px;
            height: 104px;
        }
        .style6
        {
            color: #FF3300;
        }
        .style8
        {
            text-align: left;
            height: 104px;
        }
        .style9
        {
            width: 214px;
            height: 184px;
        }
        .style11
        {
            text-align: right;
        }
        .style12
        {
            text-align: right;
            font-weight: 700;
            font-size: x-large;
            width: 696px;
        }
        .style13
        {
            height: 184px;
        }
        .style14
        {
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            width: 214px;
            height: 125px;
        }
        .style15
        {
            text-align: left;
            height: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td colspan="3" class="style11">
                用户登录<br />
                <asp:Label ID="lbmessage" runat="server" BorderStyle="Double" 
                    ForeColor="#0000CC"></asp:Label>
                <br />
                </td>
        </tr>
        <tr>
            <td class="style12" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="421px" style="margin-left: 0px; text-align: right;" 
                    Width="505px" src="left.jpg"/>
            </td>
            <td class="style5">
                用户名</td>
            <td class="style8">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="style3" Height="32px"></asp:TextBox>
            &nbsp;<span class="style6"> </span></td>
        </tr>
        <tr>
            <td class="style14" scope="col">
                密码</td>
            <td class="style15">
                <asp:TextBox ID="txtUserPwd" type="password" runat="server" CssClass="style3" Height="33px"></asp:TextBox>
            &nbsp; </td>
        </tr>
        <tr>
            <td class="style9" style="text-align: center">
            </td>
            <td style="text-align: center" class="style13">
                <asp:Button ID="btnlogin" runat="server" Text="登录" BackColor="#3366FF" 
                    BorderColor="#CCFFFF" BorderStyle="Double" ForeColor="Black" Height="79px" 
                    onclick="btnCreate_Click" Width="246px" />
                <br />
                <br />
&nbsp;&nbsp;
                <asp:LinkButton ID="lkbtn" runat="server" onclick="LinkButton1_Click">注册</asp:LinkButton>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
