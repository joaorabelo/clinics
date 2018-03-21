<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CadastrarConvenio.aspx.cs" Inherits="WebClinica.View.CadastrarConvenio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectConvenio">
        <EditItemTemplate>
            nome_conv:
            <asp:TextBox ID="nome_convTextBox" runat="server" Text='<%# Bind("nome_conv") %>' />
            <br />
            tel_conv:
            <asp:TextBox ID="tel_convTextBox" runat="server" Text='<%# Bind("tel_conv") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Nome:
            <asp:TextBox ID="nome_convTextBox" runat="server" Text='<%# Bind("nome_conv") %>' />
            <br />
            Telefone:
            <asp:TextBox ID="tel_convTextBox" TextMode="Phone" runat="server" Text='<%# Bind("tel_conv") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_conv:
            <asp:Label ID="id_convLabel" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            nome_conv:
            <asp:Label ID="nome_convLabel" runat="server" Text='<%# Bind("nome_conv") %>' />
            <br />
            tel_conv:
            <asp:Label ID="tel_convLabel" runat="server" Text='<%# Bind("tel_conv") %>' />
            <br />
            CONSULTAs:
            <asp:Label ID="CONSULTAsLabel" runat="server" Text='<%# Bind("CONSULTAs") %>' />
            <br />
            EXAMEREQUISICAOs:
            <asp:Label Text='<%# Bind("EXAMEREQUISICAOs") %>' runat="server" ID="EXAMEREQUISICAOsLabel" /><br />
            PACIENTEs:
            <asp:Label Text='<%# Bind("PACIENTEs") %>' runat="server" ID="PACIENTEsLabel" /><br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectConvenio" runat="server" DataObjectTypeName="WebClinica.CONVENIO" DeleteMethod="ExcluirConvenio" InsertMethod="CadastrarConvenio" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterConvenio" TypeName="WebClinica.Controle.ConvenioControl" UpdateMethod="AtualizarConvenio">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="IdConvenio" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
