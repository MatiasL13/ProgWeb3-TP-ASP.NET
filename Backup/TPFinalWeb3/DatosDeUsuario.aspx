<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeBehind="DatosDeUsuario.aspx.cs" Inherits="TPFinalWeb3.Formulario_web13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">
<legend>Modificar Datos Personales</legend>
    <div class='ibox float-e-margins'>
        <div class="ibox-content">
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                <asp:TextBox ID="txxApellido" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                <asp:TextBox ID="txtFechaNacimiento" class="form-control datepicker" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblResidencia" runat="server" Text="Residencia"></asp:Label>
                <asp:TextBox ID="txtResidencia" class="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="Scripts/DatosDeUsuario.js"></script>
</asp:Content>
