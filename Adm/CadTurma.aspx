<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadTurma.aspx.cs" Inherits="SGEU_TCC.Adm.CadTurma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/Style.css" rel="stylesheet" />
    <style type="text/css">
       
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login2turma">

          <div class="campo_cadturma">

              <div class="label2turma"><asp:Label ID="Label2" runat="server" Text="CADASTRO DE TURMAS" Font-Bold="True"></asp:Label></div>
              <br />

              <div class="label4turma"><asp:Label ID="label4" runat="server" Text="Nome da Turma:" Font-Bold="True"></asp:Label> 
              <asp:TextBox ID="txtTurma" runat="server" Width="246px" style="margin-left: 14px"></asp:TextBox>
              </div>
              <br />

              
              <br />
              <asp:ImageButton ID="ImageButton1" runat="server" style="margin-top: 0px; margin-left: 501px;" BorderColor="#FFCC00" BorderStyle="Dotted" Height="40px" ImageUrl="~/imagens/salvar.png" Width="66px" OnClick="ImageButton1_Click" />
              <br />
              &nbsp;<br />

              <div class="label2turma"><asp:Label ID="Label1" runat="server" Text="PESQUISA" Font-Bold="True"></asp:Label></div>
              <div class="CHECKBOXS2">  <asp:CheckBox ID="cbescolhaturma" runat="server" AutoPostBack="True" OnCheckedChanged="cbescolhaturma_CheckedChanged" Font-Bold="True" Text="PESQUISAR" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="cbescolhanome" runat="server" AutoPostBack="True" Text="PESQUISAR POR NOME" />
              <br /></div>
            
           
              
             
              <asp:Panel ID="Panel1" runat="server" Height="272px" Visible="False">
                   <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 124px"></asp:TextBox>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="Pesquisar" Width="108px" BorderStyle="Dashed" style="margin-left: 0px" BorderColor="Black" />
                   <br />
                   <asp:GridView ID="GridView1" runat="server" Width="586px" AutoGenerateColumns="False" Height="100px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="margin-left: 96px; margin-top: 21px">
                       <Columns>
                           <asp:BoundField DataField="idturma" HeaderText="Cod da Turma" />
                           <asp:BoundField DataField="nome_turma" HeaderText="Nome da Turma" />
                           <asp:ButtonField ButtonType="Image" CommandName="Delete" HeaderText="Excluir" Text="Excluir" />
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
              </asp:Panel>
              
           </div> 
    </div>


</asp:Content>
