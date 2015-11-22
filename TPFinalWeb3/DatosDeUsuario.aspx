<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true"
    CodeBehind="DatosDeUsuario.aspx.cs" Inherits="TPFinalWeb3.Formulario_web13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">
    <div class="backTitle"><h1>Administración de datos personales</h1></div>
    <span class="failureNotification">
        <asp:Literal ID="FailureText" runat="server"></asp:Literal>
    </span>
    <asp:Panel ID="SuccessMessage" runat="server" Visible="false">
        <p class="bg-success text-success">
            <span class="glyphicon glyphicon-ok"></span>
            Se han modificado los datos.
        </p>
    </asp:Panel>
    <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
        ValidationGroup="UserValidationGroup" />
    <div class='ibox float-e-margins'>
        <div class="ibox-content">
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="txtNombreRequired" runat="server" 
                    ControlToValidate="txtNombre"
                    CssClass="failureNotification" 
                    ErrorMessage="El nombre de usuario es obligatorio."
                    ToolTip="El nombre de usuario es obligatorio." 
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator id="customTxtNameRequired" runat="server"
                    ControlToValidate = "txtNombre"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "campoRequerido"
                    ValidateEmptyText =true
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:CustomValidator>

            </div>
            <div class="form-group">
                <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
                <asp:TextBox ID="txtApellido" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredtxtApellido" runat="server" 
                    ControlToValidate="txtApellido"
                    CssClass="failureNotification" 
                    ErrorMessage="El apellido es obligatorio." 
                    ToolTip="El apellido es obligatorio."
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator id="CustomtxtApellidoRequired" runat="server"
                    ControlToValidate = "txtApellido"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "campoRequerido"
                    ValidateEmptyText =true
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:CustomValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                <asp:TextBox ID="txtFechaNacimiento" class="form-control datepicker" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFechaNac" runat="server" 
                    ControlToValidate="txtFechaNacimiento"
                    CssClass="failureNotification" 
                    ErrorMessage="La fecha de nacimiento es obligatoria."
                    ToolTip="La fecha de nacimiento es obligatoria." 
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator id="CustomFechaNacimientoRequired" runat="server"
                    ControlToValidate = "txtFechaNacimiento"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "campoRequerido"
                    ValidateEmptyText =true
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:CustomValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="lblResidencia" runat="server" Text="Residencia"></asp:Label>
                <asp:TextBox ID="txtResidencia" class="form-control" runat="server" MaxLength="200"></asp:TextBox>
                <asp:RequiredFieldValidator ID="requiredLugarRecidencia" runat="server" 
                    ControlToValidate="txtResidencia"
                    CssClass="failureNotification " 
                    ErrorMessage="El lugar de residencia es obligatorio."
                    ToolTip="El lugar de residencia es obligatorio." 
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:RequiredFieldValidator>
                <asp:CustomValidator id="CustomLugarRecidenciaRequired" runat="server"
                    ControlToValidate = "txtResidencia"
                    CssClass="failureNotification"
                    
                    ClientValidationFunction = "campoRequerido"
                    ValidateEmptyText =true
                    ValidationGroup="UserValidationGroup">
                    *
                </asp:CustomValidator>
            </div>
            <div class="submitButton">
                <asp:Button ID="btnEditarUser" runat="server" class="btn btn-primary" CommandName="MoveNext"
                    Text="Editar Datos" ValidationGroup="UserValidationGroup" 
                    onclick="btnEditarUser_Click" />
            </div>
        </div>
    </div>
    <div class="separador00">
    </div>
    <script type="text/javascript" src="<%=ResolveClientUrl("~/Scripts/datepicker.js")%>"></script>
</asp:Content>
