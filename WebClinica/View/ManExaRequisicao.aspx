<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManExaRequisicao.aspx.cs" Inherits="WebClinica.View.ManExaRequisicao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectExaReq">
        <EditItemTemplate>
             Convenio:
            <asp:DropDownList ID="DropConvenio2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="nome_conv" DataValueField="id_conv" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_conv") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarConvenio" TypeName="WebClinica.Controle.ConvenioControl"></asp:ObjectDataSource>
           <br />
            Exame:
            <asp:DropDownList ID="DropExame2" runat="server" AppendDataBoundItems="true" DataSourceID="ObjectDataSource1" DataTextField="nome_exa" DataValueField="id_exa" SelectedValue='<%# Bind("id_exa") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarExame" TypeName="WebClinica.Controle.ExameControl"></asp:ObjectDataSource>
            <br />
             Paciente:
            <asp:DropDownList ID="DropPacient2" runat="server" DataSourceID="ObjectDataSource3" DataTextField="nome_pac" DataValueField="id_pac" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_pac") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarPaciente" TypeName="WebClinica.Controle.PacienteControl">
            </asp:ObjectDataSource>
            <br />
            Data:
            <asp:TextBox TextMode="Date" ID="data_exarTextBox2" runat="server" Text='<%# Bind("data_exar") %>' />
            <br />
            <!--
            Observação:
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("obs_exar") %>'>
             <asp:ListItem Text="Particular" Selected="True" Value="Particular"></asp:ListItem>
             <asp:ListItem Text="Convenio" Value="Convenio"></asp:ListItem>
            </asp:RadioButtonList>
            -->
             <br />
            Valor:
            <asp:TextBox ID="valor_exarTextBox2" runat="server" Text='<%# Bind("valor_exar") %>' />
            <br />
           Situação:
            <asp:RadioButtonList ID="RadioButtonList32" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("sit_exar") %>'>
                <asp:ListItem Text="Agendado" Value="A"></asp:ListItem>
                <asp:ListItem Text="Realizado" Value="R"></asp:ListItem>
                <asp:ListItem Text="Cancelado" Value="C"></asp:ListItem>
                <asp:ListItem Text="Retorno" Value="RT"></asp:ListItem>
                </asp:RadioButtonList>
            <br />
             Medicamento:
            <asp:TextBox ID="med_exarTextBox22" runat="server" Text='<%# Bind("med_exar") %>' />
             <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
             Convenio:
            <asp:DropDownList ID="DropConvenio" runat="server" DataSourceID="ObjectDataSource2" DataTextField="nome_conv" DataValueField="id_conv" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_conv") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarConvenio" TypeName="WebClinica.Controle.ConvenioControl"></asp:ObjectDataSource>
           <br />
            Exame:
            <asp:DropDownList ID="DropExame" runat="server" AppendDataBoundItems="true" DataSourceID="ObjectDataSource1" DataTextField="nome_exa" DataValueField="id_exa" SelectedValue='<%# Bind("id_exa") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarExame" TypeName="WebClinica.Controle.ExameControl"></asp:ObjectDataSource>
            <br />
             Paciente:
            <asp:DropDownList ID="DropPacient" runat="server" DataSourceID="ObjectDataSource3" DataTextField="nome_pac" DataValueField="id_pac" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_pac") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarPaciente" TypeName="WebClinica.Controle.PacienteControl">
            </asp:ObjectDataSource>
            <br />
            Data:
            <asp:TextBox TextMode="Date" ID="data_exarTextBox" runat="server" Text='<%# Bind("data_exar") %>' />
            <br />
            Observação:
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("obs_exar") %>'>
             <asp:ListItem Text="Particular" Value="P"></asp:ListItem>
             <asp:ListItem Text="Convenio" Value="C"></asp:ListItem>
            </asp:RadioButtonList>
             <br />
            Valor:
            <asp:TextBox ID="valor_exarTextBox" runat="server" Text='<%# Bind("valor_exar") %>' />
            <br />
           Situação:
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("sit_exar") %>'>
                <asp:ListItem Text="Agendado" Value="A"></asp:ListItem>
                <asp:ListItem Text="Realizado" Value="R"></asp:ListItem>
                <asp:ListItem Text="Cancelado" Value="C"></asp:ListItem>
                <asp:ListItem Text="Retorno" Value="RT"></asp:ListItem>
                </asp:RadioButtonList>
            <br />
             Medicamento:
            <asp:TextBox ID="med_exarTextBox" runat="server" Text='<%# Bind("med_exar") %>' />
             <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Alterar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_pac:
            <asp:Label ID="id_pacLabel" runat="server" Text='<%# Bind("id_pac") %>' />
            <br />
            id_exa:
            <asp:Label ID="id_exaLabel" runat="server" Text='<%# Bind("id_exa") %>' />
            <br />
            data_exar:
            <asp:Label ID="data_exarLabel" runat="server" Text='<%# Bind("data_exar") %>' />
            <br />
            obs_exar:
            <asp:Label ID="obs_exarLabel" runat="server" Text='<%# Bind("obs_exar") %>' />
            <br />
            valor_exar:
            <asp:Label ID="valor_exarLabel" runat="server" Text='<%# Bind("valor_exar") %>' />
            <br />
            id_conv:
            <asp:Label ID="id_convLabel" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            med_exar:
            <asp:Label ID="med_exarLabel" runat="server" Text='<%# Bind("med_exar") %>' />
            <br />
            sit_exar:
            <asp:Label ID="sit_exarLabel" runat="server" Text='<%# Bind("sit_exar") %>' />
            <br />
            CONVENIO:
            <asp:Label ID="CONVENIOLabel" runat="server" Text='<%# Bind("CONVENIO") %>' />
            <br />
            EXAME:
            <asp:Label ID="EXAMELabel" runat="server" Text='<%# Bind("EXAME") %>' />
            <br />
            PACIENTE:
            <asp:Label ID="PACIENTELabel" runat="server" Text='<%# Bind("PACIENTE") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectExaReq" runat="server" DataObjectTypeName="WebClinica.EXAMEREQUISICAO" DeleteMethod="ExcluirExaRequisicao" InsertMethod="CadastarExaRequisicao" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterExaRequisicao" TypeName="WebClinica.Controle.ExameRequisicaoControl" UpdateMethod="AtualizarExaRequisicao">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="IdExaReq" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
