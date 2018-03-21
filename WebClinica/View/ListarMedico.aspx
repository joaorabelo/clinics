<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarMedico.aspx.cs" Inherits="WebClinica.View.ListarMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h3>Listar Médico</h3>
    <asp:Label ID="Label1" runat="server" Text="Especialidade: "></asp:Label>
    <asp:TextBox ID="TBespecialidade" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" EmptyDataText="Sem dados" AutoGenerateColumns="False" DataSourceID="ObjetcMed">
        <Columns>
            
            <asp:BoundField DataField="nome_med" HeaderText="nome_med" SortExpression="nome_med"></asp:BoundField>
            
            <asp:BoundField DataField="end_med" HeaderText="end_med" SortExpression="end_med"></asp:BoundField>
            <asp:BoundField DataField="cpf_med" HeaderText="cpf_med" SortExpression="cpf_med"></asp:BoundField>
            <asp:BoundField DataField="tel_med" HeaderText="tel_med" SortExpression="tel_med"></asp:BoundField>
            <asp:BoundField DataField="crm_med" HeaderText="crm_med" SortExpression="crm_med"></asp:BoundField>
            <asp:BoundField DataField="qtd_aten_med" HeaderText="qtd_aten_med" SortExpression="qtd_aten_med"></asp:BoundField>
            <asp:BoundField DataField="cidade_med" HeaderText="cidade_med" SortExpression="cidade_med"></asp:BoundField>
            <asp:BoundField DataField="estado_med" HeaderText="estado_med" SortExpression="estado_med"></asp:BoundField>

        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource runat="server" ID="ObjetcMed" DataObjectTypeName="WebClinica.MEDICO" OldValuesParameterFormatString="original_{0}" SelectMethod="BuscarMedEsp" TypeName="WebClinica.Controle.MedicoControl" UpdateMethod="AtualizarMedico" DeleteMethod="ExcluirMedico">
        <SelectParameters>
            <asp:ControlParameter ControlID="TBespecialidade" PropertyName="Text" Name="nomeesp" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    </asp:Content>
