<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CadastrarExaRequesicao.aspx.cs" Inherits="WebClinica.View.CadastrarExaRequesicao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
    function verificaData(sender, args) {
        if (sender._selectedDate < new Date()) {
            alert("Você não pode selecionar uma data anterior a data de hoje!");
            sender._selectedDate = new Date();
            // define a data de volta a data atual
            sender._textbox.set_Value(sender._selectedDate.format(sender._format))
        }
    }
</script>
    
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectExaRequesicao">
        <EditItemTemplate>
            id_pac:
            <asp:TextBox ID="id_pacTextBox" runat="server" Text='<%# Bind("id_pac") %>' />
            <br />
            id_exa:
            <asp:TextBox ID="id_exaTextBox" runat="server" Text='<%# Bind("id_exa") %>' />
            <br />
            data_exar:
            <asp:TextBox ID="data_exarTextBox" runat="server" Text='<%# Bind("data_exar") %>' />
            <br />
            obs_exar:
            <asp:TextBox ID="obs_exarTextBox" runat="server" Text='<%# Bind("obs_exar") %>' />
            <br />
            valor_exar:
            <asp:TextBox ID="valor_exarTextBox" runat="server" Text='<%# Bind("valor_exar") %>' />
            <br />
            id_conv:
            <asp:TextBox ID="id_convTextBox" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            CONVENIO:
            <asp:TextBox ID="CONVENIOTextBox" runat="server" Text='<%# Bind("id_conv") %>' />
            <br />
            EXAME:
            <asp:TextBox ID="EXAMETextBo" runat="server" Text='<%# Bind("id_exa") %>' />
            <br />
            PACIENTE:
            <asp:TextBox Text='<%# Bind("id_pac") %>' runat="server" ID="PACIENTETextBo" /><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
          
            Data:
           
            <asp:TextBox ID="data_exarTextBox" TextMode="Date"   runat="server" Text='<%# Bind("data_exar") %>' />
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="data_exarTextBox" OnClientDateSelectionChanged="verificarData"   runat="server" />
             <br />
           
             Obsevarção:
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("obs_exar") %>'>
             <asp:ListItem Text="Particular" Value="P"></asp:ListItem>
             <asp:ListItem Text="Convenio" Value="C"></asp:ListItem>
            </asp:RadioButtonList>
             <br />
            Valor:
            <asp:TextBox ID="valor_exarTextBox" runat="server" Text='<%# Bind("valor_exar") %>' />
            <br />
            Convenio:
            <asp:DropDownList ID="DropConvenio" runat="server" DataSourceID="ObjectDataSource2" DataTextField="nome_conv" DataValueField="id_conv" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_conv") %>' AutoPostBack="False">
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
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarPaciente" TypeName="WebClinica.Controle.PacienteControl">
            </asp:ObjectDataSource>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Data:
            <asp:Label ID="data_exarLabel"  runat="server" Text='<%# Bind("data_exar") %>' />
            <br />
            Observação:
            <asp:Label ID="obs_exarLabel" runat="server" Text='<%# Bind("obs_exar") %>' />
            <br />
            Valor:
            <asp:Label ID="valor_exarLabel" runat="server" Text='<%# Bind("valor_exar") %>' />
            <br />
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
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarPaciente" TypeName="WebClinica.Controle.PacienteControl">
            </asp:ObjectDataSource>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectExaRequesicao" runat="server" DataObjectTypeName="WebClinica.EXAMEREQUISICAO" DeleteMethod="ExcluirExaRequisicao" InsertMethod="CadastarExaRequisicao" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterExaRequisicao" TypeName="WebClinica.Controle.ExameRequisicaoControl" UpdateMethod="AtualizarExaRequisicao">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="IdExaRequesicao" Name="id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
