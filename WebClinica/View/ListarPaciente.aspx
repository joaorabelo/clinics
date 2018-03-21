<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarPaciente.aspx.cs" Inherits="WebClinica.View.ListarPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Listar Paciente</h3>
    <asp:GridView ID="GridView1" runat="server" EmptyDataText="Sem dados" AutoGenerateColumns="False" DataSourceID="ObjectPaciente">
        <Columns>
            <asp:BoundField DataField="id_pac" HeaderText="id_pac" SortExpression="id_pac" />
            <asp:BoundField DataField="nome_pac" HeaderText="nome_pac" SortExpression="nome_pac" />
            <asp:BoundField DataField="end_pac" HeaderText="end_pac" SortExpression="end_pac" />
            <asp:BoundField DataField="cpf_pac" HeaderText="cpf_pac" SortExpression="cpf_pac" />
            <asp:BoundField DataField="tel_pac" HeaderText="tel_pac" SortExpression="tel_pac" />
            <asp:BoundField DataField="data_pac" HeaderText="data_pac" SortExpression="data_pac" />
            <asp:BoundField DataField="cidade_pac" HeaderText="cidade_pac" SortExpression="cidade_pac" />
            <asp:BoundField DataField="estado_pac" HeaderText="estado_pac" SortExpression="estado_pac" />
            <asp:BoundField DataField="sexo_pac" HeaderText="sexo_pac" SortExpression="sexo_pac" />
            <asp:BoundField DataField="plano_pac" HeaderText="plano_pac" SortExpression="plano_pac" />
            <asp:BoundField DataField="id_conv" HeaderText="id_conv" SortExpression="id_conv" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectPaciente" runat="server" DataObjectTypeName="WebClinica.PACIENTE" DeleteMethod="ExcluirPaciente" InsertMethod="CadastrarPaciente" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarPaciente" TypeName="WebClinica.Controle.PacienteControl" UpdateMethod="AtualizarPaciente">
</asp:ObjectDataSource>
</asp:Content>
