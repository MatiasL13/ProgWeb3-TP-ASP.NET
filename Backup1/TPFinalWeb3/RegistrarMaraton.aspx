<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeBehind="RegistrarMaraton.aspx.cs" Inherits="TPFinalWeb3.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">

<legend>Registrar resultado de Maratón</legend>
    <div class='ibox float-e-margins'>
        <div class="ibox-content">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Posición final"></asp:Label>
                <asp:TextBox ID="txtPosicion" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Tiempo de llegada"></asp:Label>

                <asp:TextBox ID="txtTiempo" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Finalizó carrera"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" ></asp:DropDownList>
            </div>
        </div>
    </div>
</asp:Content>
