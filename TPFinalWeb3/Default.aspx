<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Anonymous.master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinalWeb3._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <div class="row">
            <div class="boxLogin ibox-content">
                <div class="field textCenter">
                    <h2>
                        Bienvenido al sistema Maratones</h2>
                    <p>
                        <span>Administre sus maratones y registrese a nuevos en nuestra amplia red</span>
                    </p>
                </div>
                <div class="textCenter margin20TopBottom">
                    <a href="Account/Register.aspx" class="btn btn-success">¡Empieze a Administrar sus maratones!</a>
                </div>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
            </div>
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <h2 class="text-center whiteTrans ">
                    Resultados Buenos Aires Corre 2015</h2>
                <asp:GridView ID="GVResultados" runat="server">
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
            </div>
        </div>
        <div class="separador00">
        </div>
    </div>
</asp:Content>
