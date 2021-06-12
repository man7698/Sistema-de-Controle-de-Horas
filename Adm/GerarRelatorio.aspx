<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GerarRelatorio.aspx.cs" Inherits="SGEU_TCC.Adm.GerarRelatorio" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div class="login2relatorio2">
        <div class="label2relatorio"><asp:Label ID="Label2" runat="server" Text="RELATÓRIO" Font-Bold="True"></asp:Label></div>

        <asp:DropDownList ID="ddturma" runat="server" AutoPostBack="True" Height="40px" OnSelectedIndexChanged="ddturma_SelectedIndexChanged" Width="213px" style="margin-left: 321px; margin-top: 14px;">
        </asp:DropDownList>
        <br />
        <br />

        
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="44px" OnClick="Button1_Click" Text="GERAR RELATÓRIO" Width="208px" style="margin-left: 438px" BorderColor="Black" BorderStyle="Dashed" />

        
         <br />
         <br />
         <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="839px">
         </rsweb:ReportViewer>
         <br />

        
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        
    <div>
     </div>
    
    </div>



</asp:Content>
