﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admins.master" AutoEventWireup="true" CodeBehind="CrearMaraton.aspx.cs" Inherits="TPFinalWeb3.Formulario_web15" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AdminMainContent" runat="server">
<legend>Creaci&oacute;n de nueva marat&oacute;n</legend>
    <div class='ibox float-e-margins'>
        <div class="ibox-content">
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredNombre" runat="server" 
                    ControlToValidate="txtNombre"
                    CssClass="failureNotification" 
                    ErrorMessage="El nombre de la marat&oacute;n es obligatorio."
                    ToolTip="El nombre de la marat&oacute;n es obligatorio." 
                    ValidationGroup="CreateMaratonValidationGroup">
                    *
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblCantParticipantes" runat="server" Text="Cantidad máxima de participantes"></asp:Label>
                <asp:TextBox ID="txtCantParticipantes" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredCantidadParticipantes" runat="server" 
                    ControlToValidate="txtCantParticipantes"
                    CssClass="failureNotification" 
                    ErrorMessage="La cantidad de participantes es obligatoria."
                    ToolTip="La cantidad de participantes es obligatoria." 
                    ValidationGroup="CreateMaratonValidationGroup">
                    *
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblLugarSalida" runat="server" Text="Lugar de salida"></asp:Label>
                <asp:TextBox ID="txtLugarSalida" class="form-control " runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredLugarSalida" runat="server" 
                    ControlToValidate="txtLugarSalida"
                    CssClass="failureNotification" 
                    ErrorMessage="El lugar de salida es obligatorio."
                    ToolTip="El lugar de salida es obligatorio." 
                    ValidationGroup="CreateMaratonValidationGroup">
                    *
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelCantLista" runat="server" Text="Cantidad en lista de espera"></asp:Label>
                <asp:TextBox ID="txtCantLista" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredCantidadLista" runat="server" 
                    ControlToValidate="txtCantLista"
                    CssClass="failureNotification" 
                    ErrorMessage="La cantidad en lista de espera es obligatoria. En caso de no admitir lista de espera ingrese 0."
                    ToolTip="La cantidad en lista de espera es obligatoria. En caso de no admitir lista de espera ingrese 0." 
                    ValidationGroup="CreateMaratonValidationGroup">
                    *
                </asp:RequiredFieldValidator>
            </div>
            <h4>Premios</h4>
            <div class="form-group">
            
                <asp:Label ID="LabelPuesto1" runat="server" Text="1º"></asp:Label>
                <asp:TextBox ID="txtPuesto1" class="form-control " runat="server" ValidationGroup="CrearMaratonValidationGroup"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="El premio debe ser un monto de dinero entre $500 y $5000" MaximumValue="5000" MinimumValue="500"  ControlToValidate="txtPuesto1"  ValidationGroup="CrearMaratonValidationGroup" Type="Double"></asp:RangeValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelPuesto2" runat="server" Text="2º"></asp:Label>
                <asp:TextBox ID="txtPuesto2" class="form-control " runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="El premio debe ser un monto de dinero entre $500 y $5000" ControlToValidate="txtPuesto2"  MaximumValue="5000" MinimumValue="500"  ValidationGroup="CrearMaratonValidationGroup" Type="Double" ></asp:RangeValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelPuesto3" runat="server" Text="3º"></asp:Label>
                <asp:TextBox ID="txtPuesto3" class="form-control " runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="El premio debe ser un monto de dinero entre $500 y $5000" ControlToValidate="txtPuesto3" MinimumValue="500" MaximumValue="5000" ValidationGroup="CrearMaratonValidationGroup" Type="Double"></asp:RangeValidator>
            </div>
             <div class="submitButton">
                <asp:Button ID="btnCrearMaraton" runat="server" class="btn btn-success" CommandName="MoveNext"
                    Text="Crear Maraton" ValidationGroup="CrearMaratonValidationGroup" />
            </div>
        </div>

    </div>
    <div class="separador00"></div>
</asp:Content>
