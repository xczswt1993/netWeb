<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="edit.aspx.cs" Inherits="edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style1">
        <tr>
            <td class="style6" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="415px" Width="399px" 
                    src="left.jpg" style="margin-left: 0px" />
            </td>
            <td class="style4">
                用户名</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtUserName" runat="server" style="text-align: center"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                密码</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtUserPwd"  type="password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                年龄</td>
            <td style="text-align: center">
                <asp:TextBox ID="txtUserAge" runat="server" style="text-align: center"></asp:TextBox>
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
                    onclick="btnEdit_Click" Text="修改" Width="104px" />
            </td>
        </tr>
    </table>
</asp:Content>

