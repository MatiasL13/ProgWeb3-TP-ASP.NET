<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeBehind="RegistrarMaraton.aspx.cs" Inherits="TPFinalWeb3.Formulario_web16" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">

     <div class="backTitle">
        <h1 id="hMaraton" runat="server">Registro de maratones</h1>
     </div> 
     <asp:gridview id="GVMaratones"        
       autogeneratecolumns="False"
       onselectedindexchanged="CustomersGridView_SelectedIndexChanged"       
       runat="server" DataKeyNames="IdMaraton" CssClass="table table-hover">
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <Columns>
                      <asp:CommandField HeaderText="Seleccionar" SelectText="Seleccionar" ShowSelectButton="True"
                                                                    meta:resourcekey="CommandFieldResource3">
                                                                    <HeaderStyle Width="50px" />
                                                                    <ItemStyle Width="50px" />
                       </asp:CommandField>
                        <asp:BoundField DataField="IdMaraton" HeaderText="Nro Maraton"/>
                        <asp:BoundField DataField="Nombre" HeaderText="Maratón"  />
                        <asp:BoundField DataField="LugarSalida" HeaderText="Lugar"  />
                        <asp:BoundField DataField="FechaHorarioComienzo" HeaderText="Fecha y hora de largada"  />
                        <asp:BoundField DataField="estado" HeaderText="Estado"  />
                     </Columns> 
    </asp:GridView>
    <div id="mensaje" runat="server"></div>
</asp:Content>
