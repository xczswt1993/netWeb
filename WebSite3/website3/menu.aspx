<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
    DataKeyNames="id" Width="800px" align="center" Height="179px" 
    onrowcommand="GridView1_RowCommand">
                <Columns>
                
                <asp:BoundField DataField="menuname" HeaderText="菜名"/>       
                <asp:BoundField DataField="money" HeaderText="钱"  />
                
                    <asp:TemplateField HeaderText="图片">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("picturename","img/{0}") %>'  Width="100px" Height="60px"/>
                    </ItemTemplate>
                    </asp:TemplateField>
              
                
                 <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="upd" CommandArgument='<%# Eval("id") %>'>修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="del" OnClientClick="return confirm('确定删除吗？')"
                        CommandArgument='<%# Eval("id") %>'>删除</asp:LinkButton>
                       
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="20%" />

            </asp:TemplateField>

                </Columns>
                </asp:GridView>
<asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="增加菜单" />
</asp:Content>

