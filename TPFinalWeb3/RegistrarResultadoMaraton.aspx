<%@ Page Title="" Language="C#" MasterPageFile="~/Admins.master" AutoEventWireup="true"
    CodeBehind="RegistrarResultadoMaraton.aspx.cs" Inherits="TPFinalWeb3.Formulario_web14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="backTitle"><h1>Registrar resultados</h1></div>
    <span class="failureNotification">
        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
    </span>
    <asp:Panel ID="SuccessMessage" runat="server" Visible="false">
        <p class="bg-success text-success">
            <span class="glyphicon glyphicon-ok"></span>
            Se ha registrado el resultado.
        </p>
    </asp:Panel>
    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="ResultadosValidationGroup" />
    <div class='ibox float-e-margins'>
        <div class="ibox-content">
            <div class="form-group">
                <asp:Label ID="lblMaraton" runat="server" Text="Selecionar Maraton"></asp:Label>
                <asp:DropDownList ID="DDLMaraton" runat="server">
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="lblParticipante" runat="server" Text="Selecionar Participante"></asp:Label>
                <asp:DropDownList ID="DDLParticipante" runat="server">
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPosicion" runat="server" Text="Posición final"></asp:Label>
                <asp:TextBox ID="txtPosicion" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredtxtPosicion" runat="server"
                    ControlToValidate="txtPosicion"
                    CssClass="failureNotification"
                    ErrorMessage="La posici&oacute;n es obligatoria"
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator id="customPosicionRequired" runat="server"
                    ControlToValidate = "txtPosicion"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "campoRequerido"
                    ValidateEmptyText =true
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:CustomValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtPosicion"
                    ErrorMessage="La posici&oacute;n debe ser un n&uacute;mero." 
                    ValidationExpression="\d+"
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:RegularExpressionValidator>
                <asp:CustomValidator id="CustomPosicionIsNotNumber" runat="server"
                    ControlToValidate = "txtPosicion"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "shouldBeNumber"
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:CustomValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Tiempo de llegada (En Minutos)"></asp:Label>
                <asp:TextBox ID="txtTiempo" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtTiempo"
                    CssClass="failureNotification"
                    ErrorMessage="El tiempo es obligatorio."
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator id="CustomTiempoRequired" runat="server"
                    ControlToValidate = "txtTiempo"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "campoRequerido"
                    ValidateEmptyText =true
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:CustomValidator>
                <asp:RegularExpressionValidator ID="regularExpressionNumero" runat="server" 
                    ControlToValidate="txtTiempo"
                    ErrorMessage="El tiempo debe ser un n&uacute;mero." 
                    ValidationExpression="\d+"
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:RegularExpressionValidator>
                <asp:CustomValidator id="CustomTiempoIsNotNumber" runat="server"
                    ControlToValidate = "txtTiempo"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "shouldBeNumber"
                    ValidationGroup="ResultadosValidationGroup">
                    *
                </asp:CustomValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblCarreraStatus" runat="server" Text="Finalizó carrera"></asp:Label>
                <asp:DropDownList ID="DDLCarreraStatus" runat="server">
                    <asp:ListItem Value="false">Abandono</asp:ListItem>
                    <asp:ListItem Value="true">Finalizo</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="submitButton">
                <asp:Button ID="btnRegistrarResultados" runat="server" class="btn btn-primary" CommandName="MoveNext"
                    Text="Registrar Resultados Datos" ValidationGroup="ResultadosValidationGroup" OnClick="btnRegistrarResultados_Click" />
            </div>
        </div>
        <div class="separador00">
        </div>
    </div>
</asp:Content>
