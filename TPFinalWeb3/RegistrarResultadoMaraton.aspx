<%@ Page Title="" Language="C#" MasterPageFile="~/Admins.master" AutoEventWireup="true" CodeBehind="RegistrarResultadoMaraton.aspx.cs" Inherits="TPFinalWeb3.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminMainContent" runat="server">

<legend>Registrar resultado de Maratón</legend>
    <div class='ibox float-e-margins'>
        <div class="ibox-content">
          <div class="form-group">
                <asp:Label ID="lblMaraton" runat="server" Text="Selecionar Maraton"></asp:Label>
                <asp:DropDownList ID="DDLMaraton" runat="server" >
                 <asp:ListItem>Maraton 1</asp:ListItem>
                 <asp:ListItem >Maraton 2</asp:ListItem>

                </asp:DropDownList>

            </div>
            <div class="form-group">
                <asp:Label ID="lblPosicion" runat="server" Text="Posición final"></asp:Label>
                <asp:TextBox ID="txtPosicion" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Tiempo de llegada"></asp:Label>

                <asp:TextBox ID="txtTiempo" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblCarreraStatus" runat="server" Text="Finalizó carrera"></asp:Label>
                <asp:DropDownList ID="DDLCarreraStatus" runat="server" >
                 <asp:ListItem Value= "false">Abandono</asp:ListItem>
                 <asp:ListItem Value= "true">Finalizo</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>
</asp:Content>
