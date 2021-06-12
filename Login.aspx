<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SGEU_TCC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Style.css" rel="stylesheet" />
    <style type="text/css">
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
 
        <div class="bloco_geral2">


        <asp:Label ID="Label1" runat="server" CssClass="estagiarios" Text="ESTAGIÁRIOS"></asp:Label>

       

    <div class="linhazinha"></div>

         
    
<div class="login1">
   

          <div class="campo1login">

              <div class="label2login"><asp:Label ID="Label2" runat="server" Text="Login:" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtlogin" runat="server" style="margin-left: 52px" Width="191px"></asp:TextBox> </div>
              <br />

              <div class="label2login"><asp:Label ID="Label3" runat="server" Text="Senha:" Font-Bold="True"></asp:Label>
              <asp:TextBox ID="txtsenha" runat="server" style="margin-left: 53px" Width="190px" TextMode="Password"></asp:TextBox> </div>
              <br />

              

              <div class="label4"><asp:Label ID="Label4" runat="server" CssClass="label4"></asp:Label></div>

              

              <br />
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imagens/LOGIN.png" OnClick="ImageButton1_Click" style="margin-left: 302px; margin-top: 0px" />
              <br />
              <br />
              <br />

              
           </div> 


       </div>

   <div class="listrado">
       <img src="imagens/pontinhos4.png" style="height: 727px" />   </div>

    
    </div>
    </form>
</body>
</html>
