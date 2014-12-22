<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uploadtest.aspx.cs" Inherits="uploadtest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="上传" />
    
    <asp:Image ID="Image1" runat="server" src="img/left.jpg" />
    <br />
    
</asp:Content>

