<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadUsuario.aspx.cs" Inherits="SGEU_TCC.Adm.CadUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <script type="text/javascript" src="../javascript/Mascara.js"></script>
   
      <style type="text/css">
         
      </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login2usuario">
          <div class="campo3">

              <div class="label2usuario"><asp:Label ID="Label2" runat="server" Text="CADASTRO DE USUÁRIO" Font-Bold="True"></asp:Label></div>
              <br />

              <div class="label4usuario"><asp:Label ID="label4" runat="server" Text="Tipo de Usuário:" Font-Bold="True"></asp:Label>
              <asp:DropDownList ID="ddgrupousuario" runat="server" AutoPostBack="True" Height="16px" Width="222px" style="margin-left: 51px">
              </asp:DropDownList>
              <br />
              </div>

             
              <div class="label4usuario"><asp:Label ID="label1" runat="server" Text="Nome:" Font-Bold="True"></asp:Label>
              &nbsp; <asp:TextBox ID="txtnome" runat="server" style="margin-left: 113px" Width="264px"></asp:TextBox>
              </div>
              
    
              <div class="label4usuario"><asp:Label ID="label3" runat="server" Text="Telefone:" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txttel" MaxLength="14" ReadOnly="false" onkeyup="formataTelefone(this,event);" runat="server" style="margin-left: 99px" Width="264px"></asp:TextBox>
              </div>

               <div class="label4usuario"><asp:Label ID="label5" runat="server" Text="Endereço:" Font-Bold="True"></asp:Label>
              &nbsp;<asp:TextBox ID="txtend" runat="server" style="margin-left: 92px" Width="264px"></asp:TextBox>
              </div>

              <br />

              <div class="label4usuario"><asp:Label ID="label6" runat="server" Text="Login:" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtlogin" runat="server" style="margin-left: 120px" Width="264px"></asp:TextBox>
              </div>

              <div class="label4usuario"><asp:Label ID="label7" runat="server" Text="Senha:" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtsenha" runat="server" style="margin-left: 120px" Width="264px"></asp:TextBox>
              </div>

             
              <div class="label4usuario"><asp:Label ID="label8" runat="server" Text="Turma:" Font-Bold="True"></asp:Label>
              &nbsp;<asp:DropDownList ID="ddturma" runat="server" Height="19px" Width="236px" style="margin-left: 113px">
              </asp:DropDownList>
              </div>
              
              <br />
              <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#FFCC00" BorderStyle="Dotted" Height="40px" ImageUrl="~/imagens/salvar.png" OnClick="ImageButton1_Click" style="margin-left: 577px; margin-top: 0px;" Width="66px" />
             
              <br />
              <br />

              <br />

              <DIV class="CHECKBOXS"> <asp:CheckBox ID="cbescolha" runat="server" Text="PESQUISAR" Font-Bold="True" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="Cbescolhanome" runat="server" AutoPostBack="True" Text="PESQUISAR POR NOME" OnCheckedChanged="Cbescolhanome_CheckedChanged" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="cbescolhacod" runat="server" OnCheckedChanged="cbescolhacod_CheckedChanged" Text="PESQUISAR POR CÓDIGO" />
              <br />

              </DIV>
             

        
           </div> 

                      <div class="label2usuario"><asp:Label ID="Label9" runat="server" Text="PESQUISA" Font-Bold="True"></asp:Label></div>

        <asp:Panel ID="Panel1" CssClass="panel" runat="server" Height="387px" Visible="False" Width="842px">
                  <br />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="txtpesquisa" runat="server" Width="183px" style="margin-left: 77px"></asp:TextBox>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Pesquisar" Width="138px" BorderColor="Black" BorderStyle="Dashed" />
                  <asp:GridView ID="gvusuarios" CssClass="gridview" runat="server" Height="16px" Width="698px" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowUpdating="gvusuarios_RowUpdating" OnRowDeleting="gvusuarios_RowDeleting">
                      <Columns>
                          <asp:BoundField DataField="idusuario" HeaderText="Cod" />
                          <asp:BoundField DataField="idgrupousuario" HeaderText="Tipo" />
                          <asp:BoundField HeaderText="Nome" DataField="nome_usuario" />
                          <asp:BoundField DataField="telefone_usuario" HeaderText="Telefone" />
                          <asp:BoundField DataField="endereco_usuario" HeaderText="Endereço" />
                          <asp:BoundField HeaderText="Login" DataField="login" />
                          <asp:BoundField DataField="senha" HeaderText="Senha" />
                          <asp:BoundField HeaderText="Turma" DataField="id_turma" />
                          <asp:ButtonField ButtonType="Image" CommandName="Update" ImageUrl="~/imagens/application_edit.png" Text="Button" HeaderText="Editar" />
                          <asp:ButtonField ButtonType="Image" CommandName="Delete" ImageUrl="~/imagens/application_remove.png" Text="Button" HeaderText="Excluir" />
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
                  <asp:HiddenField ID="HiddenField1" runat="server" />
                  <br />
              </asp:Panel>
    </div>
</asp:Content>
