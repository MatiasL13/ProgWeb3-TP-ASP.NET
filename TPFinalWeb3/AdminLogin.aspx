﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="TPFinalWeb3.AdminLogin" %>



<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">


            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification"
                ValidationGroup="LoginUserValidationGroup" />
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Información de cuenta</legend>
                    <div class='ibox float-e-margins'>
                        <div class="ibox-content box">
                            <div class="form-group">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Text="Nombre de usuario:"></asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    CssClass="failureNotification" ErrorMessage="El nombre de usuario es obligatorio."
                                    ToolTip="El nombre de usuario es obligatorio." ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    CssClass="failureNotification" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria."
                                    ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:CheckBox ID="RememberMe" runat="server" />
                                <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Mantenerme conectado</asp:Label>
                            </div>
                            <div class="submitButton">
                                <asp:Button ID="LoginButton"  runat="server" CommandName="Login" Text="Iniciar sesión"
                                    class="btn btn-success" ValidationGroup="LoginUserValidationGroup" 
                                    onclick="LoginButton_Click" />
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

</asp:Content>
