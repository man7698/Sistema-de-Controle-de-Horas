<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inserir_Registro.aspx.cs" Inherits="SGEU_TCC.Adm.Inserir_Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="login2inserirregistro">
        <br />
        <br />
         <div class="label2inserirregi"><asp:Label ID="Label2" runat="server" Text="INSERIR REGISTRO" Font-Bold="True"></asp:Label></div>
              <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="820px" Height="228px" OnRowUpdating="GridView1_RowUpdating1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" style="margin-left: 13px; margin-top: 0px;" CellSpacing="2">
        <Columns>
        <asp:BoundField HeaderText="RA" DataField="idusuario" />
        <asp:BoundField HeaderText="NOME" DataField="nome_usuario" />
        <asp:TemplateField HeaderText="ENTRADA">
            <ItemTemplate>
                <asp:TextBox id="txtentrada"  runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="SAÍDA">
            <ItemTemplate >
                <asp:TextBox id="txtsaida" runat="server"  ></asp:TextBox>       
            </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Atividade">
                  <ItemTemplate >
                <asp:TextBox id="txtatividade" runat="server"  ></asp:TextBox>       
            </ItemTemplate>

            </asp:TemplateField>
        <asp:ButtonField Text="OK" CommandName="Update" />

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

        <div class="label4inse"><asp:Label ID="label1" runat="server" Text="Código:" Font-Bold="True" Visible="False"></asp:Label>
        <asp:TextBox ID="txtcod" runat="server" style="margin-left: 27px" Width="58px" Visible="False"></asp:TextBox>
        </div>

        <div class="label4inse"><asp:Label ID="label3" runat="server" Text="Entrada:" Font-Bold="True" Visible="False"></asp:Label>
        <asp:TextBox ID="txtinserirentrada" runat="server" style="margin-left: 21px" Width="182px" Visible="False"></asp:TextBox>
        </div>

        <div class="label4inse"><asp:Label ID="label4" runat="server" Text="Saída:" Font-Bold="True" Visible="False"></asp:Label>
        <asp:TextBox ID="txtinserirsaida" runat="server" style="margin-left: 40px" Width="177px" Visible="False"></asp:TextBox>
        </div>

    
        <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#FFCC00" BorderStyle="Dotted" Height="40px" ImageUrl="~/imagens/salvar.png" OnClick="ImageButton1_Click" style="margin-left: 644px" Width="66px" Visible="False" />
             


    </div>
    

</asp:Content>
