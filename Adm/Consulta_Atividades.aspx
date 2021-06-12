<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulta_Atividades.aspx.cs" Inherits="SGEU_TCC.Adm.Consulta_Atividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" login2consultaatividades">

          <div class="label2consultaatividades"><asp:Label ID="Label2" runat="server" Text="CONSULTA DE ATIVIDADES" Font-Bold="True"></asp:Label></div>


         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" Height="125px" Width="509px" CellSpacing="2" style="margin-left: 166px; margin-top: 42px">
        <Columns>
            <asp:BoundField DataField="idusuario" HeaderText="ID" />
            <asp:BoundField DataField="entrada" HeaderText="ENTRADA" />
            <asp:BoundField DataField="saida" HeaderText="SAÍDA" />
            <asp:BoundField DataField="atividade" HeaderText="ATIVIDADE" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
             <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    </div>

   



</asp:Content>
