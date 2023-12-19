<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerReporte.aspx.cs" Inherits="Examen3JosueBonilla.VerReporte" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Reporte de Encuestas</h2>
    <div>
        <!-- Muestra aquí el reporte de encuestas -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Número de Encuesta" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre del Participante" />
                <asp:BoundField DataField="Edad" HeaderText="Edad de Nacimiento" />
                <asp:BoundField DataField="Correo" HeaderText="Correo Electrónico" />
                <asp:BoundField DataField="PartidoPolitico" HeaderText="Partido Político" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
