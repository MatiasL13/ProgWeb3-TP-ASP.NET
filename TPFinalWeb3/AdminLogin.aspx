<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="TPFinalWeb3.AdminLogin" %>



<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">


            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
                ValidationGroup="LoginUserValidationGroup" />
            <div class="accountInfo">
                <fieldset class="login">
                    <div class="backTitle"><h1>Iniciar como administrador</h1></div>
                    <div class='ibox float-e-margins'>
                        <div class="ibox-content box">
                            <div class="form-group">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Text="Nombre de usuario:"  MaxLength="200"></asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName"
                                    CssClass="failureNotification" 
                                    ErrorMessage="El nombre de usuario es obligatorio."
                                    ToolTip="El nombre de usuario es obligatorio." 
                                    ValidationGroup="LoginUserValidationGroup">
                                    *
                                </asp:RequiredFieldValidator>
                                <asp:CustomValidator id="customUserName" runat="server"
                                    ControlToValidate = "UserName"
                                    CssClass="failureNotification"
                                    
                                    ClientValidationFunction = "campoRequerido"
                                    ValidateEmptyText =true
                                    ValidationGroup="LoginUserValidationGroup">
                                    *
                                </asp:CustomValidator>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry form-control" TextMode="Password"  MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password"
                                    CssClass="failureNotification" 
                                    ErrorMessage="La contraseña es obligatoria y debe tener al menos 6 caracteres." 
                                    ToolTip="La contraseña es obligatoria."
                                    ValidationGroup="LoginUserValidationGroup">
                                    *
                                </asp:RequiredFieldValidator>
                                <asp:CustomValidator id="CustomPasswordRequired" runat="server"
                                    ControlToValidate = "Password"
                                    CssClass="failureNotification"
                                    
                                    ClientValidationFunction = "passValidate"
                                                                        ValidateEmptyText =true
                                    ValidationGroup="LoginUserValidationGroup">
                                    *
                                </asp:CustomValidator>
                            </div>
                         
                            <div class="submitButton">
                                <asp:Button ID="LoginButton"  runat="server" CommandName="Login" Text="Iniciar sesión"
                                    class="btn btn-primary" ValidationGroup="LoginUserValidationGroup" 
                                    onclick="LoginButton_Click" />
                                    <asp:Label ID="lblIncorrecto" runat="server"  Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
    <script type="text/javascript" src="Scripts/registro.js"></script>

</asp:Content>
