<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 

    <asp:Repeater ID="Repeater1" runat="server" 
        onitemcommand="Repeater1_ItemCommand"  >

    <ItemTemplate>
        <table style="width: 80%"  border="1px">
        <tr>
            <td width="50px">
                菜名</td>
            <td>
                <%# Eval("menuname") %></td>
                <td rowspan="3">
                    <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="caiID" CommandArgument='<%#Eval("id") %>'>订餐</asp:LinkButton>
                   </td>
        </tr>
        <tr>
            <td width="50px">
               价格</td>
            <td>
               <%#Eval("money") %></td>
               
        </tr>
        <tr>
            <td width="50px">
                图片</td>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("picturename","img/{0}") %>' Width="100px" Height="60px"/></td>
                
        </tr>
        

    </table>
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>

