<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<script type="text/javascript">
function enfocus() {

    var t1 = document.getElementById("ContentPlaceHolder1_lbmoney").value;
    var t2 = document.getElementById("ContentPlaceHolder1_txtnumber").value;
    

    if (t1 != "" && t2 != "") {
        
        document.getElementById("ContentPlaceHolder1_lmcount").value = parseInt(t1) * parseInt(t2); 
}
    else { document.getElementById("ContentPlaceHolder1_lmcount").value = ""; }
} 
</script>--%>

    <table style="width: 100%" align="center">
        <tr>
            <td style="height: 42px">
                菜名</td>
            <td style="height: 42px">
                <asp:Label ID="lbcainame" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 50px">
                价格</td>
            <td style="height: 50px">
                <asp:TextBox ID="lbmoney" runat="server" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 39px">
                数量</td>
            <td style="height: 39px">
                <asp:TextBox ID="txtnumber" runat="server" 
                    AutoPostBack="True" ontextchanged="txtnumber_TextChanged" Height="24px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 38px">
                应付价格</td>
            <td style="height: 38px">
                
                <asp:TextBox ID="lmcount" runat="server" Enabled="false" Height="23px" 
                    ></asp:TextBox>
                    
            </td>

        </tr>
        <tr>
            <td>
                订餐人</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                联系电话</td>
            <td>
                <asp:TextBox ID="txttel" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 46px">
                送餐地址</td>
            <td style="height: 46px">
                <asp:TextBox ID="txtaddress" runat="server" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 81px">
                <asp:Button ID="btnorder" runat="server" Text="确认订餐" onclick="btnorder_Click" />
            </td>
            <td style="height: 81px">
                <asp:Button ID="btnreturn" runat="server" Text="返回" onclick="btnreturn_Click" />
            </td>
        </tr>
    </table>



</asp:Content>

