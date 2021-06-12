<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadresponsavel.aspx.cs" Inherits="SGEU_TCC.Adm.Cadresponsavel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/Style.css" rel="stylesheet" />
  <script type="text/javascript" src="../javascript/Mascara.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login2">

              <div class="label2resp"><asp:Label ID="Label2" runat="server" Text="Cadastro Responsável" Font-Bold="True"></asp:Label></div>
              <br />


             <div class="label4usuario">&nbsp;&nbsp; <asp:Label ID="label4" runat="server" Text="Tipo de Usuário:" Font-Bold="True"></asp:Label>
              &nbsp;&nbsp; <asp:DropDownList ID="ddresponsavel" runat="server" Height="16px" Width="184px">
                 </asp:DropDownList>
              </div>
              <br />

              <div class="label4usuario">&nbsp;&nbsp; <asp:Label ID="label3" runat="server" Text="CPF:" Font-Bold="True"></asp:Label>
              &nbsp;
              <asp:TextBox ID="txt_Cpf" ReadOnly="false" onkeyup="formataCPF(this,event);" runat="server" style="margin-left: 93px" Height="18px" Width="157px" MaxLength="14"></asp:TextBox> </div>
              <br />
              
              <div class="label4usuario">&nbsp;&nbsp; <asp:Label ID="label5" runat="server" Text="Nome:" Font-Bold="True"></asp:Label>
              &nbsp;&nbsp; <asp:TextBox ID="txt_Nome" runat="server" style="margin-left: 80px" Height="19px" Width="279px"></asp:TextBox> </div>
              <br />

              <div class="label4usuario">&nbsp;&nbsp; <asp:Label ID="label6" runat="server" Text="Telefone:" Font-Bold="True"></asp:Label>
              &nbsp;
              <asp:TextBox ID="txt_telefone"  MaxLength="14" ReadOnly="false" onkeyup="formataTelefone(this,event);" runat="server" style="margin-left: 61px" Height="19px" Width="146px"></asp:TextBox> 
                  <br />
                  <br />
                  <br />
                  <br />
              </div>
              <br />

              <div class="label4usuario">&nbsp;&nbsp; <asp:Label ID="label7" runat="server" Text="Endereço:" Font-Bold="True"></asp:Label>
              &nbsp;&nbsp; <asp:TextBox ID="txtendereco" runat="server" style="margin-left: 55px" Height="21px" Width="142px"></asp:TextBox> </div>
              <br />

             <div class="label4usuario">&nbsp;&nbsp; <asp:Label ID="label8" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtemail" runat="server" style="margin-left: 56px" Height="21px" Width="278px"></asp:TextBox> </div>
              <br />

             <div class="label4usuario">&nbsp;&nbsp; <asp:Label ID="label9" runat="server" Text="Telefone:" Font-Bold="True"></asp:Label>
              &nbsp;&nbsp; <asp:TextBox ID="txttel" runat="server" style="margin-left: 57px" Height="21px" Width="200px"></asp:TextBox> </div>
              <br />

              <asp:Label ID="Label1" runat="server"></asp:Label>


         
         
              <asp:ImageButton ID="ImageButton1" runat="server" style="margin-top: 0px; margin-left: 585px;" BorderColor="#FFCC00" BorderStyle="Dotted" Height="40px" ImageUrl="~/imagens/salvar.png" Width="66px" OnClick="ImageButton1_Click" />
              <br />
              <br />


         
         
    </div>
</asp:Content>
