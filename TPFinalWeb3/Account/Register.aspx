<%@ Page Title="Registrarse" Language="C#" MasterPageFile="~/Anonymous.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="TPFinalWeb3.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript" src="../Scripts/datapicker/bootstrap-datepicker.es.js"></script>
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
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre :</asp:Label>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            CssClass="failureNotification" ErrorMessage="El nombre de es obligatorio."
                                            ToolTip="El nombre es obligatorio." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="UserLastnameLabel" runat="server" AssociatedControlID="UserLastname">Apellido :</asp:Label>
                                        <asp:TextBox ID="UserLastname" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserLastnameValidator" runat="server" ControlToValidate="UserLastname"
                                            CssClass="failureNotification" ErrorMessage="El apellido es obligatorio."
                                            ToolTip="El apellido es obligatorio." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Correo electr&oacute;nico:</asp:Label>
                                        <asp:TextBox ID="Email" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                            CssClass="failureNotification " ErrorMessage="El correo electrónico es obligatorio."
                                            ToolTip="El correo electrónico es obligatorio." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                        <asp:CustomValidator id="CustomValidatorEmail" runat="server"
                                            ControlToValidate = "Email"
                                            CssClass="failureNotification " 
                                          ErrorMessage = "Debe ingresar un correo válido"
                                          ClientValidationFunction="validarEmail" >
                                        </asp:CustomValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="FechaNacLabel" runat="server" AssociatedControlID="txtFechaNac">Fecha de Nacimiento:</asp:Label>
                                        <asp:TextBox ID="txtFechaNac" class="form-control datepicker" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="LugarRecidenciaLabel" runat="server" AssociatedControlID="LugarRecidencia">Lugar de Residencia:</asp:Label>
                                        <asp:TextBox ID="LugarRecidencia" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="LugarRecidenciaRequired" runat="server" ControlToValidate="LugarRecidencia"
                                            CssClass="failureNotification " ErrorMessage="El lugar de residencia es obligatorio."
                                            ToolTip="El lugar de residencia es obligatorio." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry form-control" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                            CssClass="failureNotification" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria."
                                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirmar contraseña:</asp:Label>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry form-control"
                                            TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                            Display="Dynamic" ErrorMessage="Confirmar contraseña es obligatorio." ID="ConfirmPasswordRequired"
                                            runat="server" ToolTip="Confirmar contraseña es obligatorio." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                            ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                            ErrorMessage="Contraseña y Confirmar contraseña deben coincidir." ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
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
    <script type="text/javascript" src="../Scripts/registro.js"></script>
</asp:Content>
