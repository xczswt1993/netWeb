<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userlist.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"  >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="id" Width="500px" align="center">
                <Columns>
                
                <asp:BoundField DataField="username" HeaderText="用户名"/>
                <asp:BoundField DataField="userpass" HeaderText="密码" />
                <asp:BoundField DataField="regDate" HeaderText="日期" DataFormatString="{0:d}"  />
                <asp:BoundField DataField="money" HeaderText="钱"  />
                <asp:BoundField DataField="age" HeaderText="年龄"  />
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
</asp:Content>

