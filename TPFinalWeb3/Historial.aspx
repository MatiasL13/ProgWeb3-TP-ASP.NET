﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="TPFinalWeb3.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">
    
<div class="backTitle"><h1>Historial de maratones realizados</h1></div>
  
    <table id="tablaHistorial" class="table" >
        <tr id="cabecera">
            <td>
                Maraton
            </td>
            <td>Posicion</td>
            <td>Tiempo</td>
            <td>Premio</td>
        </tr>
    </table>

    <script src="Scripts/Historial.js" type="text/javascript"></script>
</asp:Content>
