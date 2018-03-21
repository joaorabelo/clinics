<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AgendarConsulta.aspx.cs" Inherits="WebClinica.View.AgendarConsulta" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectConsulta">
        <EditItemTemplate>
            id_con:
            <asp:TextBox ID="id_conTextBox" runat="server" Text='<%# Bind("id_con") %>' />
            <br />
            data_con:
            <asp:TextBox ID="data_conTextBox" runat="server" Text='<%# Bind("data_con") %>' />
            <br />
            turno_con:
            <asp:TextBox ID="turno_conTextBox" runat="server" Text='<%# Bind("turno_con") %>' />
            <br />
            id_pac:
            <asp:TextBox ID="id_pacTextBox" runat="server" Text='<%# Bind("id_pac") %>' />
            <br />
            id_med:
            <asp:TextBox Text='<%# Bind("id_med") %>' runat="server" ID="id_medTextBox" /><br />
            id_conv:
            <asp:TextBox Text='<%# Bind("id_conv") %>' runat="server" ID="id_convTextBox" /><br />
            MEDICO:
            <asp:TextBox Text='<%# Bind("MEDICO") %>' runat="server" ID="MEDICOTextBox" /><br />
            id_conv:
            <asp:TextBox Text='<%# Bind("id_conv") %>' runat="server" ID="CONVENIOTextBox" /><br />
            PACIENTE:
            <asp:TextBox Text='<%# Bind("PACIENTE") %>' runat="server" ID="PACIENTETextBox" /><br />
            CONVENIO:
            <asp:Label Text='<%# Bind("CONVENIO") %>' runat="server" ID="CONVENIOLabel" /><br />
            PACIENTE:
            <asp:Label Text='<%# Bind("PACIENTE") %>' runat="server" ID="PACIENTELabel" /><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Data:
            <asp:TextBox ID="data_conTextBox" TextMode="Date" runat="server" Text='<%# Bind("data_con") %>' />
            <br />
            Turno:
            <asp:RadioButtonList ID="rdturno" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("turno_con") %>' >
                <asp:ListItem Text="Manhã" Value="M"></asp:ListItem>
                <asp:ListItem Text="Tarde" Value="T"></asp:ListItem>
                <asp:ListItem Text="Noite" Value="N"></asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Medico:
            <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="ObjectDataSource1" DataTextField="nome_med" DataValueField="id_med" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_med") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarMedico" TypeName="WebClinica.Controle.MedicoControl"></asp:ObjectDataSource>
            <br />
            Convenio:
            <asp:DropDownList ID="DropConvenio" runat="server" DataSourceID="ObjectDataSource2" DataTextField="nome_conv" DataValueField="id_conv" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_conv") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarConvenio" TypeName="WebClinica.Controle.ConvenioControl"></asp:ObjectDataSource>
           <br />
             Paciente:
            <asp:DropDownList ID="DropPacient" runat="server" DataSourceID="ObjectDataSource3" DataTextField="nome_pac" DataValueField="id_pac" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_pac") %>'>
                <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarPaciente" TypeName="WebClinica.Controle.PacienteControl"></asp:ObjectDataSource>
            <button> 
            <asp:LinkButton ID="InsertButton"  runat="server" CausesValidation="True" CommandName="Insert" Text="Confirmar" />
            </button>
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_con:
            <asp:Label ID="id_conLabel" runat="server" Text='<%# Bind("id_con") %>' />
            <br />
            data_con:
            <asp:Label ID="data_conLabel" runat="server" Text='<%# Bind("data_con") %>' />
            <br />
            turno_con:
            <asp:Label ID="turno_conLabel" runat="server" Text='<%# Bind("turno_con") %>' />
            <br />
            id_pac:
            <asp:Label ID="id_pacLabel" runat="server" Text='<%# Bind("id_pac") %>' />
            <br />
            id_med:
            <asp:Label ID="id_medLabel" runat="server" Text='<%# Bind("id_med") %>' />
            <br />
            PACIENTE:
            <asp:Label ID="PACIENTELabel" runat="server" Text='<%# Bind("PACIENTE") %>' />
            <br />
            MEDICO:
            <asp:Label ID="MEDICOLabel" runat="server" Text='<%# Bind("MEDICO") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectConsulta" runat="server" DataObjectTypeName="WebClinica.CONSULTA" DeleteMethod="ExcluirConsulta" InsertMethod="AgendarConsulta" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterConsulta" TypeName="WebClinica.Controle.ConsultaControl" UpdateMethod="AtualizarConsulta">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="IdConsulta" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
