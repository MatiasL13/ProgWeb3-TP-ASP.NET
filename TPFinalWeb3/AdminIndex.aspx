<%@ Page Title="" Language="C#" MasterPageFile="~/Admins.master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="TPFinalWeb3.Formulario_web11" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AdminMainContent" runat="server">
    <div class="backTitle">
        <h2>
            Bienvenido <asp:LoginName ID="HeadLoginName" runat="server" />
        </h2>
    </div>

        
            <div class="separador00"></div>
            <div class="col-md-5 col-md-offset-1">
                <div class="col-md-12 text-center">
                    <img src="imagenes/inicio.jpg" alt="crear" class="img-rounded img-responsive" />
                </div>
                <div class="col-lg-12 text-center"> <a href="/CrearMaraton.aspx"><h2>Crear nueva maratón <i class="fa fa-calendar-plus-o"></i></h2></a></div>
            </div>
            <div class="col-md-5 ">
                 <div class="col-md-12 text-center">
                     <img src="imagenes/fin.jpg" alt="resultados" class="img-rounded img-responsive" />
                 </div>
                <div class="col-md-12 text-center"><a href="/RegistrarResultadoMaraton.aspx"><h2>Registrar resultados <i class="fa fa-bullhorn"></i></h2></div>
            </div>
        

    
</asp:Content>
