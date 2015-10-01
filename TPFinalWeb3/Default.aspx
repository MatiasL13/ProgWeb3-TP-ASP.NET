<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Anonymous.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="TPFinalWeb3._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div>
        <div class="boxLogin ibox-content backGround">
            <div class="field textCenter">
                <h2>Bienvenido al sistema Maratones</h2>

                <p>
                    <span>Administre sus maratones y registrese a nuevos en nuestra amplia red</span>
                </p>

            </div>
            <div class="textCenter margin20TopBottom">
                <a href="Account/Register.aspx" class="btn btn-success">¡Empieze a Administrar sus maratones!</a>
            </div>
                </div>
              <div class="row">
        <h2 class="text-center">Resultados Buenos Aires Corre 2015</h2>
        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <table class="table table-responsive table-hover table-bordered">
                <thead>
                    <tr>
                        <th>Participante</th>
                        <th>N&uacute;mero</th>
                        <th>Tiempo</th>
                        <th>Posici&oacute;n</th>
                    </tr>
                </thead>
                <tbody class="text-center">
                    <tr>
                        <td class="text-left">Homero Simpson</td>
                        <td>234</td>
                        <td>2:00</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td class="text-left">Cosme Fulanito</td>
                        <td>987</td>
                        <td>2:10</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td class="text-left">Waylon Smithers</td>
                        <td>356</td>
                        <td>2:20</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td class="text-left">Ned Flanders</td>
                        <td>074</td>
                        <td>2:30</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <td class="text-left">Edna Krabappel</td>
                        <td>127</td>
                        <td>2:40</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td class="text-left">Milhouse Van Houten</td>
                        <td>975</td>
                        <td>2:50</td>
                        <td>6</td>
                    </tr>
                    <tr>
                        <td class="text-left">Apu Nahasapeemapetilon</td>
                        <td>679</td>
                        <td>3:00</td>
                        <td>7</td>
                    </tr>
                    <tr>
                        <td class="text-left">Moe Szyslak</td>
                        <td>631</td>
                        <td>3:10</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td class="text-left">Hans Moleman</td>
                        <td>143</td>
                        <td>2:20</td>
                        <td>9</td>
                    </tr>
                    <tr>
                        <td class="text-left">Troy McClure</td>
                        <td>181</td>
                        <td>3:30</td>
                        <td>10</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
    </div>
    <div class="separador00"></div>
    
    </div>


</asp:Content>
