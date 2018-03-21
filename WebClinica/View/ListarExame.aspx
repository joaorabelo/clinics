<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarExame.aspx.cs" Inherits="WebClinica.View.ListarExame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectExame">
        <Columns>
            <asp:BoundField DataField="id_exa" HeaderText="id_exa" SortExpression="id_exa" />
            <asp:BoundField DataField="nome_exa" HeaderText="nome_exa" SortExpression="nome_exa" />
            <asp:BoundField DataField="obs_exa" HeaderText="obs_exa" SortExpression="obs_exa" />
        <asp:TemplateField>
                     <ItemTemplate>
                         <asp:LinkButton ID="lbtEdit" runat="server" PostBackUrl='<%# String.Format("~/View/CadastrarExame.aspx?IdExame={0}", Eval("id_exa")) %>'>LinkButton
                             
                         </asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectExame" runat="server" DataObjectTypeName="WebClinica.EXAME" DeleteMethod="ExcluirExame" InsertMethod="CadastarExame" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarExame" TypeName="WebClinica.Controle.ExameControl" UpdateMethod="AtualizarExame">
    </asp:ObjectDataSource>
</asp:Content>
