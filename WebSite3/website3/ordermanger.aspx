<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ordermanger.aspx.cs" Inherits="ordermanger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" 
        AutoGenerateColumns="false" align="center" Height="308px" 
        UseAccessibleHeader="False" Width="810px" 
        onrowcommand="GridView1_RowCommand1">
    <Columns>
         <asp:BoundField DataField="cainame" HeaderText="菜名"/>
                <asp:BoundField DataField="count" HeaderText="应付价格"  />
                <asp:BoundField DataField="ordername" HeaderText="接收人"  />
                <asp:BoundField DataField="ordertel" HeaderText="联系电话"  />
                <asp:BoundField DataField="orderaddress" HeaderText="地址"  />
                <asp:BoundField DataField="status" HeaderText="状态" />
                
                 <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="yes"  CommandArgument='<%# Eval("id") %>'>确认收获</asp:LinkButton>
                    
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="20%" />
            </asp:TemplateField>

                </Columns>
    </asp:GridView>

</asp:Content>

