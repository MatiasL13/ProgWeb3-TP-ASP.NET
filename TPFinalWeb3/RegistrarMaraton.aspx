<%@ Page Title="" Language="C#" MasterPageFile="~/Users.master" AutoEventWireup="true" CodeBehind="RegistrarMaraton.aspx.cs" Inherits="TPFinalWeb3.Formulario_web16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContent" runat="server">

    <h2 class="text-center whiteTrans " id="hMaraton" runat="server"></h2>
    <asp:GridView ID="GVMaratones" runat="server" CssClass="table table-striped" >
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <Columns>
                    <asp:TemplateField HeaderStyle-ForeColor="Black">
                        <ItemTemplate>
                            <asp:Button ID="AddButton" runat="server" 
                          CommandName="Inscribirme" 
                          CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                          Text="Inscribirme" />
                        </ItemTemplate>
                </asp:TemplateField>                
            </Columns> 
    </asp:GridView>
</asp:Content>
