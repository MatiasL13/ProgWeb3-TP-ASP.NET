<%@ Page Title="Cambiar contraseña" Language="C#" MasterPageFile="~/Anonymous.master"
    AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="TPFinalWeb3.Account.ChangePassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Cambiar contraseña
    </h2>
    <p>
        Use el formulario siguiente para cambiar la contraseña.
    </p>
    <p>
        Las contraseñas nuevas deben tener una longitud mínima de
        <%= Membership.MinRequiredPasswordLength %>
        caracteres.
    </p>
    <asp:ChangePassword ID="ChangeUserPassword" runat="server" CancelDestinationPageUrl="~/"
        EnableViewState="false" RenderOuterTable="false" SuccessPageUrl="ChangePasswordSuccess.aspx">
        <ChangePasswordTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification"
                ValidationGroup="ChangeUserPasswordValidationGroup" />
            <div class="accountInfo">
                <fieldset class="changePassword">
                    <legend>Información de cuenta</legend>
                    <div class='ibox float-e-margins'>
                        <div class="ibox-content box">
                            <div class="form-group">
                                <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Contraseña anterior:</asp:Label>
                                <asp:TextBox ID="CurrentPassword" runat="server" CssClass="passwordEntry form-control"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                    CssClass="failureNotification" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña anterior es obligatoria."
                                    ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">Nueva contraseña:</asp:Label>
                                <asp:TextBox ID="NewPassword" runat="server" CssClass="passwordEntry form-control"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                    CssClass="failureNotification" ErrorMessage="La nueva contraseña es obligatoria."
                                    ToolTip="La nueva contraseña es obligatoria." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirmar la nueva contraseña:</asp:Label>
                                <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="passwordEntry form-control"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                    CssClass="failureNotification" Display="Dynamic" ErrorMessage="Confirmar la nueva contraseña es obligatorio."
                                    ToolTip="Confirmar la nueva contraseña es obligatorio." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                    ControlToValidate="ConfirmNewPassword" CssClass="failureNotification" Display="Dynamic"
                                    ErrorMessage="Confirmar la nueva contraseña debe coincidir con la entrada Nueva contraseña."
                                    ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                            </div>
                            <div class="submitButton">
                                <asp:Button ID="CancelPushButton" runat="server" class="btn btn-danger" CausesValidation="False" CommandName="Cancel"
                                    Text="Cancelar" />
                                <asp:Button ID="ChangePasswordPushButton" runat="server"  class="btn btn-success" CommandName="ChangePassword"
                                    Text="Cambiar contraseña" ValidationGroup="ChangeUserPasswordValidationGroup" />
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </ChangePasswordTemplate>
    </asp:ChangePassword>
</asp:Content>
