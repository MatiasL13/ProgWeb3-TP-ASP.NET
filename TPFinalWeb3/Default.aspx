<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Anonymous.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="TPFinalWeb3._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div class="">
        <div class="boxLogin ibox-content">
            <div class="field textCenter">
                        <h2>  Bienvenido al sistema Maratones</h2>
        
            <p>
            <span>Administre sus maratones y registrese a nuevos en nuestra amplia red</span>
            </p>
          
                   </div>
            <div class="textCenter margin20TopBottom">
              <a href="Account/Login.aspx" class="btn btn-success">¡Empieze a Administrar sus maratones!</a>
            </div>
          
        </div>
    </div>
</asp:Content>
