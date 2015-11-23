<%@ Page Title="" Language="C#" MasterPageFile="~/Admins.master" AutoEventWireup="true"
    CodeBehind="CrearMaraton.aspx.cs" Inherits="TPFinalWeb3.Formulario_web15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminMainContent" runat="server">
    
    <div class="backTitle"><h1>Crear nueva maratón</h1></div>
    <span class="failureNotification">
        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
    </span>
    <asp:Panel ID="SuccessMessage" runat="server" Visible="false">
        <p class="bg-success text-success">
            <span class="glyphicon glyphicon-ok"></span>
            La maraton ha sido creada.
        </p>
    </asp:Panel>
    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="CrearMaratonValidationGroup" />
    <div class='ibox float-e-margins'>
        <div class="ibox-content">
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtNombre"
                    CssClass="failureNotification" ErrorMessage="El nombre de maraton es obligatorio."
                    ToolTip="El nombre de usuario es obligatorio." ValidationGroup="CrearMaratonValidationGroup">
                                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator ID="customUserName" runat="server" ControlToValidate="txtNombre"
                    CssClass="failureNotification" ClientValidationFunction="campoRequerido" ValidateEmptyText="true"
                    ValidationGroup="CrearMaratonValidationGroup">
                                            *
                </asp:CustomValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblCantParticipantes" runat="server" Text="Cantidad máxima de participantes"></asp:Label>
                <asp:TextBox ID="txtCantParticipantes" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantParticipantes"
                    CssClass="failureNotification" ErrorMessage="La cantidad de participantes es obligatorio."
                    ValidationGroup="CrearMaratonValidationGroup">
                                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtCantParticipantes"
                    CssClass="failureNotification" ClientValidationFunction="campoRequerido" ValidateEmptyText="true"
                     ValidationGroup="CrearMaratonValidationGroup">
                                            *
                </asp:CustomValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtCantParticipantes" runat="server" 
                    ErrorMessage="La cantidad de participantes debe ser numerica" ValidationExpression="\d+" ValidationGroup="CrearMaratonValidationGroup">
                    *
                </asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblLugarSalida" runat="server" Text="Lugar de salida" ></asp:Label>
                <asp:TextBox ID="txtLugarSalida" class="form-control " runat="server"  MaxLength="50" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLugarSalida"
                    CssClass="failureNotification" ErrorMessage="El lugar es obligatorio." ValidationGroup="CrearMaratonValidationGroup">
                                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtLugarSalida"
                    CssClass="failureNotification" ClientValidationFunction="campoRequerido" ValidateEmptyText="true"
                    ValidationGroup="CrearMaratonValidationGroup">
                                            *
                </asp:CustomValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelCantLista" runat="server" Text="Cantidad en lista de espera"></asp:Label>
                <asp:TextBox ID="txtCantLista" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCantLista"
                    CssClass="failureNotification" ErrorMessage="El cantidad de espera es obligatorio."
                    ValidationGroup="CrearMaratonValidationGroup">
                                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtCantLista"
                    CssClass="failureNotification" ClientValidationFunction="campoRequerido" ValidateEmptyText="true"
                    ValidationGroup="CrearMaratonValidationGroup">
                                            *
                </asp:CustomValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtCantLista" runat="server" 
                    ErrorMessage="La cantidad de lista de espera debe ser numerica" ValidationExpression="\d+" ValidationGroup="CrearMaratonValidationGroup">
                    *
                </asp:RegularExpressionValidator>
            </div>
            <h4>
                Premios</h4>
            <div class="form-group">
                <asp:Label ID="LabelPuesto1" runat="server" Text="1º"></asp:Label>
                <asp:TextBox ID="txtPuesto1" class="form-control " runat="server" ValidationGroup="CrearMaratonValidationGroup"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="El premio debe ser un monto de dinero entre $500 y $5000"
                    MaximumValue="5000" MinimumValue="500" ControlToValidate="txtPuesto1" ValidationGroup="CrearMaratonValidationGroup"
                    Type="Double"></asp:RangeValidator>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="txtPuesto1"
                    CssClass="failureNotification" ClientValidationFunction="premioEntre5000500"
                    ValidationGroup="CrearMaratonValidationGroup">
                                            *
                </asp:CustomValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtPuesto1" runat="server" 
                    ErrorMessage="El premio debe ser numerico" ValidationExpression="\d+" ValidationGroup="CrearMaratonValidationGroup">
                    *
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPuesto1"
                    CssClass="failureNotification" ErrorMessage="El valor del 1º premio es obligatorio"
                    ValidationGroup="CrearMaratonValidationGroup">
                *
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelPuesto2" runat="server" Text="2º"></asp:Label>
                <asp:TextBox ID="txtPuesto2" class="form-control " runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator5" runat="server" ControlToValidate="txtPuesto2"
                    CssClass="failureNotification" ClientValidationFunction="premioEntre5000500"
                    ValidationGroup="CrearMaratonValidationGroup">
                                            *
                </asp:CustomValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="El premio debe ser un monto de dinero entre $500 y $5000"
                    ControlToValidate="txtPuesto2" MaximumValue="5000" MinimumValue="500" ValidationGroup="CrearMaratonValidationGroup"
                    Type="Double"></asp:RangeValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtPuesto2" runat="server" 
                    ErrorMessage="El premio debe ser numerico" ValidationExpression="\d+" ValidationGroup="CrearMaratonValidationGroup">
                    *
                </asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPuesto2"
                    CssClass="failureNotification" ErrorMessage="El valor del 2º premio es obligatorio"
                    ValidationGroup="CrearMaratonValidationGroup">
                                    *
                </asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelPuesto3" runat="server" Text="3º"></asp:Label>
                <asp:TextBox ID="txtPuesto3" class="form-control " runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator6" runat="server" ControlToValidate="txtPuesto3"
                    CssClass="failureNotification" ClientValidationFunction="premioEntre5000500"
                    ValidationGroup="CrearMaratonValidationGroup">
                                            *
                </asp:CustomValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="El premio debe ser un monto de dinero entre $500 y $5000"
                    ControlToValidate="txtPuesto3" MinimumValue="500" MaximumValue="5000" ValidationGroup="CrearMaratonValidationGroup"
                    Type="Double"></asp:RangeValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtPuesto3" runat="server" 
                    ErrorMessage="El premio debe ser numerico" ValidationExpression="\d+" ValidationGroup="CrearMaratonValidationGroup">
                    *
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPuesto3"
                    CssClass="failureNotification" ErrorMessage="El valor del 3º premio es obligatorio"
                    ValidationGroup="CrearMaratonValidationGroup">
                                    *
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="lblHora" runat="server" Text="Fecha y Hora de largada"></asp:Label>
                <asp:TextBox ID="txtFechaHora" class="form-control datetimepicker" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredHora" runat="server" ControlToValidate="txtFechaHora"
                    CssClass="failureNotification" ErrorMessage="La hora de comienzo es obligatoria."
                    ValidationGroup="CrearMaratonValidationGroup" EnableClientScript="true">
                                    *
                </asp:RequiredFieldValidator>
            </div>
            <div class="submitButton">
                <asp:Button ID="btnCrearMaraton" runat="server" class="btn btn-primary" CommandName="MoveNext"
                    Text="Crear Maraton" ValidationGroup="CrearMaratonValidationGroup" 
                    onclick="btnCrearMaraton_Click" />
            </div>
        </div>
    </div>
    <div class="separador00">
    </div>
    <script type="text/javascript" src="<%=ResolveClientUrl("~/Scripts/datepicker.js")%>"></script>
</asp:Content>
