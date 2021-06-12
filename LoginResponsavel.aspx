<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginResponsavel.aspx.cs" Inherits="SGEU_TCC.LoginResponsavel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="bloco_geral2">


        <asp:Label ID="Label1" runat="server" CssClass="estagiarios" Text="ESTAGIÁRIOS"></asp:Label>

       

    <div class="linhazinha"></div>

         
    
<div class="login1">
   

          <div class="campo1">

              <div class="label2"><asp:Label ID="Label2" runat="server" Text="CPF :" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtcpflogin" runat="server" style="margin-left: 52px" Width="191px"></asp:TextBox> </div>
              <br />

              <div class="label2"> <asp:Label ID="Label5" runat="server" Text="Senha :" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtsenha" runat="server" style="margin-left: 52px" Width="191px"></asp:TextBox> </div>
              <br />

              

              <div class="label4"><asp:Label ID="Label4" runat="server" CssClass="label4"></asp:Label></div>

              

              <br />
              <%--              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imagens/LOGIN.png" OnClick="ImageButton1_Click" style="margin-left: 237px; margin-top: 0px" />--%>
              <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/imagens/LOGIN.png" Width="75px" style="margin-left: 283px" OnClick="ImageButton1_Click" />
              <br />
              <br />
              <br />

               
           </div> 


       </div>

   <div class="listrado">
       <img src="imagens/pontinhos4.png" />   </div>

    
    </div>
    </form>
</body>
</html>
