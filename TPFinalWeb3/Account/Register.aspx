<%@ Page Title="Registrarse" Language="C#" MasterPageFile="~/Anonymous.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="TPFinalWeb3.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>
                    <h2>Crear una nueva cuenta</h2>
                    <p>
                        Use el formulario siguiente para crear una cuenta nueva.
                    </p>
                    <p>
                        Las contraseñas deben tener una longitud mínima de
                        <%= Membership.MinRequiredPasswordLength %>
                        caracteres.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                        ValidationGroup="RegisterUserValidationGroup" />
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Información de cuenta</legend>
                            <div class='ibox float-e-margins'>
                                <div class="ibox-content box">
                                    <div class="form-group">
                                        <asp:Label ID="LabelUserName" runat="server" AssociatedControlID="UserName">Nombre :</asp:Label>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredUserName" runat="server" 
                                            ControlToValidate="UserName"
                                            CssClass="failureNotification" 
                                            ErrorMessage="El nombre de es obligatorio."
                                            ToolTip="El nombre es obligatorio." 
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="customUserName" runat="server"
                                            ControlToValidate = "UserName"
                                            CssClass="failureNotification"
                                            ErrorMessage = "El nombre de es obligatorio."
                                            ClientValidationFunction = "campoRequerido"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="LabelUserLastName" runat="server" AssociatedControlID="txtUserLastName">Apellido :</asp:Label>
                                        <asp:TextBox ID="txtUserLastName" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredUserLastName" runat="server" 
                                            ControlToValidate="txtUserLastName"
                                            CssClass="failureNotification" 
                                            ErrorMessage="El apellido es obligatorio."
                                            ToolTip="El apellido es obligatorio." 
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="CustomLastName" runat="server"
                                            ControlToValidate = "txtUserLastName"
                                            CssClass="failureNotification"
                                            ErrorMessage = "El apellido es obligatorio."
                                            ClientValidationFunction = "campoRequerido"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="LabelEmail" runat="server" AssociatedControlID="Email">Correo electr&oacute;nico:</asp:Label>
                                        <asp:TextBox ID="Email" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredEmail" runat="server" 
                                            ControlToValidate="Email"
                                            CssClass="failureNotification" 
                                            ErrorMessage="El correo electrónico es obligatorio."
                                            ToolTip="El correo electrónico es obligatorio." 
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="CustomEmailRequired" runat="server"
                                            ControlToValidate = "Email"
                                            CssClass="failureNotification"
                                            ErrorMessage = "El correo electrónico es obligatorio."
                                            ClientValidationFunction = "campoRequerido"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                        <asp:CustomValidator id="customEmail" runat="server"
                                            ControlToValidate = "Email"
                                            CssClass="failureNotification"
                                            ErrorMessage = "Debe ingresar un correo v&aacute;lido."
                                            ClientValidationFunction = "validarEmail"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                        <asp:RegularExpressionValidator ID="regularExpressionEmail" runat="server" 
                                            ControlToValidate="Email" 
                                            ErrorMessage="Debe ingresar un correo v&aacute;lido"
                                            ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="LabelFechaNac" runat="server" AssociatedControlID="txtFechaNac">Fecha de Nacimiento:</asp:Label>
                                        <asp:TextBox ID="txtFechaNac" class="form-control datepicker" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFechaNac" runat="server" 
                                            ControlToValidate="txtFechaNac"
                                            CssClass="failureNotification" 
                                            ErrorMessage="La fecha de nacimiento es obligatoria."
                                            ToolTip="La fecha de nacimiento es obligatoria." 
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="CustomFechaNac" runat="server"
                                            ControlToValidate = "txtFechaNac"
                                            CssClass="failureNotification"
                                            ErrorMessage = "La fecha de nacimiento es obligatoria."
                                            ClientValidationFunction = "campoRequerido"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="LabelLugarRecidencia" runat="server" AssociatedControlID="txtLugarRecidencia">Lugar de Residencia:</asp:Label>
                                        <asp:TextBox ID="txtLugarRecidencia" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredLugarRecidencia" runat="server" 
                                            ControlToValidate="txtLugarRecidencia"
                                            CssClass="failureNotification " 
                                            ErrorMessage="El lugar de residencia es obligatorio."
                                            ToolTip="El lugar de residencia es obligatorio." 
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="CustomLugarRecidencia" runat="server"
                                            ControlToValidate = "txtLugarRecidencia"
                                            CssClass="failureNotification"
                                            ErrorMessage = "El lugar de residencia es obligatorio."
                                            ClientValidationFunction = "campoRequerido"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="LabelPassword" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry form-control" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredPassword" runat="server" 
                                            ControlToValidate="Password"
                                            CssClass="failureNotification" 
                                            ErrorMessage="La contraseña es obligatoria." 
                                            ToolTip="La contraseña es obligatoria."
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="CustomPasswordRequired" runat="server"
                                            ControlToValidate = "Password"
                                            CssClass="failureNotification"
                                            ErrorMessage = "La contraseña es obligatoria y debe tener al menos 6 caracteres."
                                            ClientValidationFunction = "passValidate"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="LabelConfirmPassword" runat="server" AssociatedControlID="pswConfirmPassword">Confirmar contraseña:</asp:Label>
                                        <asp:TextBox ID="pswConfirmPassword" runat="server" CssClass="passwordEntry form-control" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredConfirmPassword" runat="server" 
                                            ControlToValidate="pswConfirmPassword" 
                                            CssClass="failureNotification"
                                            Display="Dynamic" 
                                            ErrorMessage="Confirmar contraseña es obligatorio." 
                                            ToolTip="Confirmar contraseña es obligatorio." 
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="CustomConfirmPasswordRequired" runat="server"
                                            ControlToValidate = "pswConfirmPassword"
                                            CssClass="failureNotification"
                                            ErrorMessage = "Confirmar contraseña es obligatorio."
                                            ClientValidationFunction = "campoRequerido"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                        <asp:CompareValidator ID="comparePassword" runat="server" 
                                            ControlToCompare="Password"
                                            ControlToValidate="pswConfirmPassword" 
                                            CssClass="failureNotification" 
                                            Display="Dynamic"
                                            ErrorMessage="Contraseña y Confirmar contraseña deben coincidir." 
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CompareValidator>
                                        <asp:CustomValidator id="CustomConfirmPasswordCompare" runat="server"
                                            ControlToValidate = "pswConfirmPassword"
                                            CssClass="failureNotification"
                                            ErrorMessage = "Contraseña y Confirmar contraseña deben coincidir."
                                            ClientValidationFunction = "passCompare"
                                            ValidationGroup="RegisterUserValidationGroup">
                                            *
                                        </asp:CustomValidator>
                                    </div>
                                    <div class="submitButton">
                                        <asp:Button ID="CreateUserButton" runat="server" class="btn btn-success" CommandName="MoveNext"
                                            Text="Crear usuario" ValidationGroup="RegisterUserValidationGroup" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
    <%--<script type="text/javascript" src="../Scripts/registro.js"></script>--%>
    <script type="text/javascript" src="<%=ResolveClientUrl("~/Scripts/registro.js")%>"></script>
</asp:Content>
