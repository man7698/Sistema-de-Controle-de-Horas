<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Relatorios.aspx.cs" Inherits="SGEU_TCC.Relatorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="225px">
            <Columns>
                <asp:BoundField DataField="nome_turma" />
                <asp:BoundField DataField="nome_usuario" />
                <asp:BoundField DataField="totalhoras" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
