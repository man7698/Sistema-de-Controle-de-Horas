<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConUsuario.aspx.cs" Inherits="SGEU_TCC.Adm.ConUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login2ConUsuario">

          <div class="campo2">

              <div class="label2conusuario"><asp:Label ID="Label2" runat="server" Text="Consulta Usuário" Font-Bold="True"></asp:Label></div>
              <br />

              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-left: 153px; margin-top: 0px;" Height="152px" Width="450px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                  <Columns>
                      <asp:BoundField HeaderText="RA" />
                      <asp:BoundField HeaderText="NOME" />
                      <asp:BoundField HeaderText="TURMA" />
                      <asp:ButtonField Text="Editar" ImageUrl="~/imagens/iconeditar.png" ButtonType="Image" CommandName="Update" />
                      <asp:ButtonField Text="Excluir" ButtonType="Image" CommandName="Delete" ImageUrl="~/imagens/icone_exc.png" />
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

              <br />
              <br />

              <div class="label4consuario"><asp:Label ID="label4" runat="server" Text="Nome:" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtnome" runat="server" style="margin-left: 39px" Width="383px"></asp:TextBox> </div>
              </br>

             
              <div class="label4consuario"><asp:Label ID="label1" runat="server" Text="Telefone:" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txttelefone" runat="server" style="margin-left: 13px"></asp:TextBox> </div>
              </br>
       

              <div class="label4consuario"><asp:Label ID="label3" runat="server" Text="Endereço" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtendereco" runat="server" style="margin-left: 19px" Width="386px"></asp:TextBox> </div>
              </br>
 

           </div> 
    </div>
</asp:Content>
