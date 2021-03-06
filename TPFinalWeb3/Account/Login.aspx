﻿<%@ Page Title="Iniciar sesión" Language="C#" MasterPageFile="~/Anonymous.master"
    AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPFinalWeb3.Account.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  
    
          
            <div class="accountInfo">
                <fieldset class="login">
                    <div class='ibox float-e-margins'>
                        <div class="ibox-content box boxLogin">
                            <div class="form-group">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Text="Nombre de usuario:"></asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry form-control" MaxLength="30"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName"
                                    CssClass="failureNotification" 
                                    ErrorMessage="El nombre de usuario es obligatorio."
                                    ToolTip="El nombre de usuario es obligatorio." 
                                    ValidationGroup="LoginUserValidationGroup">
                                    
                                </asp:RequiredFieldValidator>
                                <asp:CustomValidator id="customUserNameRequired" runat="server"
                                    ControlToValidate = "UserName"
                                    CssClass="failureNotification"
                                    ErrorMessage = "El nombre de usuario es obligatorio."
                                    ClientValidationFunction = "campoRequerido"
                                    ValidateEmptyText =true
                                    ValidationGroup="LoginUserValidationGroup">
                                    *
                                </asp:CustomValidator>

                            </div>
                            <div class="form-group">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry form-control" TextMode="Password" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password"
                                    CssClass="failureNotification" 
                                    ErrorMessage="La contraseña es obligatoria." 
                                    ToolTip="La contraseña es obligatoria."
                                    ValidationGroup="LoginUserValidationGroup">
                                    
                                </asp:RequiredFieldValidator>
                                <asp:CustomValidator id="CustomPasswordRequired" runat="server"
                                    ControlToValidate = "Password"
                                    CssClass="failureNotification"
                                    ErrorMessage = "La contraseña es obligatoria y debe tener al menos 6 caracteres."
                                    ClientValidationFunction = "passValidate"
                                      ValidateEmptyText =true
                                    ValidationGroup="LoginUserValidationGroup">
                                    *
                                </asp:CustomValidator>
                            </div>
                      
                            <div class="submitButton">
                               
                                <asp:Button ID="LoginButton" runat="server"  Text="Iniciar sesión"
                                    class="btn btn-primary" ValidationGroup="LoginUserValidationGroup" 
                                    onclick="LoginButton_Click" />
                                    <asp:Label ID="lblIncorrecto" runat="server"  Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

    <script type="text/javascript" src="../Scripts/registro.js"></script>
</asp:Content>
