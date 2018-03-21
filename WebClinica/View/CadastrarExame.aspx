<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CadastrarExame.aspx.cs" Inherits="WebClinica.View.CadastrarExame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectExame">
        <EditItemTemplate>
            id_exa:
            <asp:TextBox ID="id_exaTextBox" runat="server" Text='<%# Bind("id_exa") %>' />
            <br />
            nome_exa:
            <asp:TextBox ID="nome_exaTextBox" runat="server" Text='<%# Bind("nome_exa") %>' />
            <br />
            obs_exa:
            <asp:TextBox ID="obs_exaTextBox" runat="server" Text='<%# Bind("obs_exa") %>' />
            <br />
            id_conv:
            <asp:TextBox ID="id_convTextBox" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            CONVENIO:
            <asp:TextBox Text='<%# Bind("CONVENIO") %>' runat="server" ID="CONVENIOTextBox" /><br />
            EXAMEREQUISICAOs:
            <asp:TextBox Text='<%# Bind("EXAMEREQUISICAOs") %>' runat="server" ID="EXAMEREQUISICAOsTextBox" /><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
          
            Nome:
             <br />
            <asp:TextBox ID="nome_exaTextBox" runat="server" Text='<%# Bind("nome_exa") %>' />
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                     Convenio:
            <asp:DropDownList ID="DropConvenioEXA" runat="server" DataSourceID="ObjectDataSource2" DataTextField="nome_conv" DataValueField="id_conv" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_conv") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
                    <asp:Button ID="Button1"  runat="server" Text="Adicionar" />
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarConvenio" TypeName="WebClinica.Controle.ConvenioControl" DataObjectTypeName="WebClinica.CONVENIO" DeleteMethod="ExcluirConvenio"></asp:ObjectDataSource>
                    <asp:GridView ID="GridViewa1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2">
                    </asp:GridView>
                    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterConvenioExa" TypeName="WebClinica.Controle.ExameControl"></asp:ObjectDataSource>
                    
                </ContentTemplate>
               
            
            </asp:UpdatePanel>
            
              <br />
             <br />
             <br />
            Observação:
            <asp:TextBox Text='<%# Bind("obs_exa") %>' Height="4cm" Width="7cm" runat="server" ID="obs_exaTextBox" /><br />
           <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_exa:
            <asp:Label ID="id_exaLabel" runat="server" Text='<%# Bind("id_exa") %>' />
            <br />
            nome_exa:
            <asp:Label ID="nome_exaLabel" runat="server" Text='<%# Bind("nome_exa") %>' />
            <br />
            obs_exa:
            <asp:Label ID="obs_exaLabel" runat="server" Text='<%# Bind("obs_exa") %>' />
            <br />
            id_conv:
            <asp:Label ID="id_convLabel" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            CONVENIO:
            <asp:Label Text='<%# Bind("CONVENIO") %>' runat="server" ID="CONVENIOLabel" /><br />
            EXAMEREQUISICAOs:
            <asp:Label Text='<%# Bind("EXAMEREQUISICAOs") %>' runat="server" ID="EXAMEREQUISICAOsLabel" /><br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectExame" runat="server" DataObjectTypeName="WebClinica.EXAME" DeleteMethod="ExcluirExame" InsertMethod="CadastarExame" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterConvenioExa" TypeName="WebClinica.Controle.ExameControl" UpdateMethod="AtualizarExame">
    </asp:ObjectDataSource>
</asp:Content>
