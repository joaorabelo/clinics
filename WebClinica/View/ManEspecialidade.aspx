<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManEspecialidade.aspx.cs" Inherits="WebClinica.View.ManEspecialidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectEspecialidade">
        <EditItemTemplate>
            id_esp:
            <asp:TextBox Text='<%# Bind("id_esp") %>' runat="server" ID="id_espTextBox" /><br />
            nome_esp:
            <asp:TextBox Text='<%# Bind("nome_esp") %>' runat="server" ID="nome_espTextBox" /><br />
            des_esp:
            <asp:TextBox Text='<%# Bind("des_esp") %>' runat="server" ID="des_espTextBox" /><br />
            id_med:
            <asp:TextBox Text='<%# Bind("id_med") %>' runat="server" ID="id_medTextBox" /><br />
            MEDICO:
            <asp:TextBox Text='<%# Bind("MEDICO") %>' runat="server" ID="MEDICOTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
           
            Nome:
            <asp:TextBox Text='<%# Bind("nome_esp") %>' runat="server" ID="nome_espTextBox" /><br />
            Descrição:
            <asp:TextBox Text='<%# Bind("des_esp") %>' Height="6cm" Width="10cm" runat="server" ID="des_espTextBox" /><br />
            <br />
            <asp:LinkButton runat="server" Text="Salvar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_esp:
            <asp:Label Text='<%# Bind("id_esp") %>' runat="server" ID="id_espLabel" /><br />
            nome_esp:
            <asp:Label Text='<%# Bind("nome_esp") %>' runat="server" ID="nome_espLabel" /><br />
            des_esp:
            <asp:Label Text='<%# Bind("des_esp") %>' runat="server" ID="des_espLabel" /><br />
            id_med:
            <asp:Label Text='<%# Bind("id_med") %>' runat="server" ID="id_medLabel" /><br />
            MEDICO:
            <asp:Label Text='<%# Bind("MEDICO") %>' runat="server" ID="MEDICOLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectEspecialidade" runat="server" DataObjectTypeName="WebClinica.ESPECIALIDADE" DeleteMethod="ExcluirEspecialidade" InsertMethod="CadastrarEspecialidade" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterEspecialidade" TypeName="WebClinica.Controle.EspecialidadeControl" UpdateMethod="AtualizarEspecialidade">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="IdEspecialidade" Name="id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
