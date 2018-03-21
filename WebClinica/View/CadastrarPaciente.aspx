<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CadastrarPaciente.aspx.cs" Inherits="WebClinica.View.CadastrarPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Manuntenção Paciente</h3>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectPaciente" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  GridLines="Both" Width="200px">
        <EditItemTemplate>
            id_pac:
            <asp:TextBox ID="id_pacTextBox" runat="server" Text='<%# Bind("id_pac") %>' />
            <br />
            nome_pac:
            <asp:TextBox ID="nome_pacTextBox" runat="server" Text='<%# Bind("nome_pac") %>' />
            <br />
            end_pac:
            <asp:TextBox ID="end_pacTextBox" runat="server" Text='<%# Bind("end_pac") %>' />
            <br />
            cpf_pac:
            <asp:TextBox ID="cpf_pacTextBox" runat="server" Text='<%# Bind("cpf_pac") %>' />
            <br />
            tel_pac:
            <asp:TextBox ID="tel_pacTextBox" runat="server" Text='<%# Bind("tel_pac") %>' />
            <br />
            data_pac:
            <asp:TextBox ID="data_pacTextBox" runat="server" Text='<%# Bind("data_pac") %>' />
            <br />
            cidade_pac:
            <asp:TextBox ID="cidade_pacTextBox" runat="server" Text='<%# Bind("cidade_pac") %>' />
            <br />
            estado_pac:
            <asp:TextBox ID="estado_pacTextBox" runat="server" Text='<%# Bind("estado_pac") %>' />
            <br />
            sexo_pac:
            <asp:TextBox ID="sexo_pacTextBox" runat="server" Text='<%# Bind("sexo_pac") %>' />
            <br />
            plano_pac:
            <asp:TextBox ID="plano_pacTextBox" runat="server" Text='<%# Bind("plano_pac") %>' />
            <br />
            id_conv:
            <asp:TextBox ID="id_convTextBox" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            CONSULTAs:
            <asp:TextBox Text='<%# Bind("CONSULTAs") %>' runat="server" ID="CONSULTAsTextBox" /><br />
            CONVENIO:
            <asp:TextBox Text='<%# Bind("CONVENIO") %>' runat="server" ID="CONVENIOTextBox" /><br />
            EXAMEREQUISICAO:
            <asp:TextBox Text='<%# Bind("EXAMEREQUISICAO") %>' runat="server" ID="EXAMEREQUISICAOTextBox" /><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
       
        <InsertItemTemplate>
            Nome:
            <asp:TextBox ID="nome_pacTextBox" runat="server" Text='<%# Bind("nome_pac") %>' />
            <br />
            Endereço:
            <asp:TextBox ID="end_pacTextBox" runat="server" Text='<%# Bind("end_pac") %>' />
            <br />
            CPF:
            <br />
            <asp:TextBox ID="cpf_pacTextBox" runat="server" Text='<%# Bind("cpf_pac") %>' />
            <br />
            Telefone:
            <asp:TextBox ID="tel_pacTextBox" runat="server" Text='<%# Bind("tel_pac") %>' />
            <br />
            Data de nasciemnto:
            <asp:TextBox ID="data_pacTextBox" TextMode="Date" runat="server" Text='<%# Bind("data_pac") %>' />
            <br />
            Cidade:
            <asp:TextBox ID="cidade_pacTextBox" runat="server" Text='<%# Bind("cidade_pac") %>' />
            <br />
            Estado:
            <asp:TextBox ID="estado_pacTextBox" runat="server" Text='<%# Bind("estado_pac") %>' />
            <br />
           Sexo:
            <asp:RadioButtonList ID="rdsexo" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("sexo_pac") %>' >
                <asp:ListItem Text="Masculino" Value="M"></asp:ListItem>
                <asp:ListItem Text="Feminino" Value="F"></asp:ListItem>
            </asp:RadioButtonList>
             <br />
            Plano de Saúde:
            <asp:DropDownList ID="DropConvenio1" runat="server" DataSourceID="ObjectDataSource2" DataTextField="nome_conv" DataValueField="id_conv" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_conv") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarConvenio" TypeName="WebClinica.Controle.ConvenioControl"></asp:ObjectDataSource>
           <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Confirmar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_pac:
            <asp:Label ID="id_pacLabel" runat="server" Text='<%# Bind("id_pac") %>' />
            <br />
            nome_pac:
            <asp:Label ID="nome_pacLabel" runat="server" Text='<%# Bind("nome_pac") %>' />
            <br />
            end_pac:
            <asp:Label ID="end_pacLabel" runat="server" Text='<%# Bind("end_pac") %>' />
            <br />
            cpf_pac:
            <asp:Label ID="cpf_pacLabel" runat="server" Text='<%# Bind("cpf_pac") %>' />
            <br />
            tel_pac:
            <asp:Label ID="tel_pacLabel" runat="server" Text='<%# Bind("tel_pac") %>' />
            <br />
            data_pac:
            <asp:Label ID="data_pacLabel" runat="server" Text='<%# Bind("data_pac") %>' />
            <br />
            cidade_pac:
            <asp:Label ID="cidade_pacLabel" runat="server" Text='<%# Bind("cidade_pac") %>' />
            <br />
            estado_pac:
            <asp:Label ID="estado_pacLabel" runat="server" Text='<%# Bind("estado_pac") %>' />
            <br />
            sexo_pac:
            <asp:Label ID="sexo_pacLabel" runat="server" Text='<%# Bind("sexo_pac") %>' />
            <br />
            plano_pac:
            <asp:Label ID="plano_pacLabel" runat="server" Text='<%# Bind("plano_pac") %>' />
            <br />
            id_conv:
            <asp:Label ID="id_convLabel" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            CONSULTAs:
            <asp:Label ID="CONSULTAsLabel" runat="server" Text='<%# Bind("CONSULTAs") %>' />
            <br />
            CONVENIO:
            <asp:Label ID="CONVENIOLabel" runat="server" Text='<%# Bind("CONVENIO") %>' />
            <br />
            EXAMEREQUISICAO:
            <asp:Label ID="EXAMEREQUISICAOLabel" runat="server" Text='<%# Bind("EXAMEREQUISICAO") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectPaciente" runat="server" DataObjectTypeName="WebClinica.PACIENTE" DeleteMethod="ExcluirPaciente" InsertMethod="CadastrarPaciente" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterPaciente" TypeName="WebClinica.Controle.PacienteControl" UpdateMethod="AtualizarPaciente">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="IdPaciente" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
