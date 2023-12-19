<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LlenarEncuesta.aspx.cs" Inherits="Examen3JosueBonilla.LlenarEncuesta" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Llenar Encuesta</h2>
    <div>
     
            Nombre: <asp:TextBox ID="txtNombre" runat="server" Required="true" /><br />
            Edad: <asp:TextBox ID="txtEdad" runat="server" Required="true" /><br />
            Correo: <asp:TextBox ID="txtCorreo" runat="server" Required="true" /><br />
            Partido Político:
            <asp:DropDownList ID="ddlPartidoPolitico" runat="server" DataSourceID="Encuesta" DataTextField="PartidoPolitico" DataValueField="PartidoPolitico" OnSelectedIndexChanged="ddlPartidoPolitico_SelectedIndexChanged">
                <asp:ListItem Text="PLN" Value="PLN" />
                <asp:ListItem Text="PUSC" Value="PUSC" />
                <asp:ListItem Text="PAC" Value="PAC" />
            </asp:DropDownList>
            <asp:SqlDataSource ID="Encuesta" runat="server" ConnectionString="<%$ ConnectionStrings:EncuestasDBConnectionString %>" ProviderName="<%$ ConnectionStrings:EncuestasDBConnectionString.ProviderName %>" SelectCommand="SELECT [PartidoPolitico] FROM [Encuestas]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar Encuesta" OnClick="btnGuardar_Click" />
        
    </div>
</asp:Content>
