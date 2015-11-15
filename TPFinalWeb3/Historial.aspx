<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="TPFinalWeb3.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">

<legend>Historial de Maratones </legend>

    <asp:GridView ID="GVHistorial" runat="server" CssClass="table table-striped">
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>

</asp:Content>
