<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="CadastrarMedico.aspx.cs" Inherits="WebClinica.CadastrarMedico" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <h3>Manuntenção Medico</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id_med" DataSourceID="ObjectMedico" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  GridLines="Both" Width="280px">
            <EditItemTemplate>
                 Nome:
                <asp:TextBox  ID="nome_medTextBox" runat="server" Text='<%# Bind("nome_med") %>' />
                <br />
                Endereço:
                <asp:TextBox ID="end_medTextBox" runat="server" Text='<%# Bind("end_med") %>' />
                <br />
                CPF:
                <asp:TextBox ID="cpf_medTextBox" runat="server" Text='<%# Bind("cpf_med") %>' />
                <br />
                Telefone:
                <asp:TextBox ID="tel_medTextBox" runat="server" Text='<%# Bind("tel_med") %>' />
                <br />
                crm_med:
                <asp:TextBox ID="crm_medTextBox" runat="server" Text='<%# Bind("crm_med") %>' />
                <br />
                qtd_aten_med:
                <asp:TextBox ID="qtd_aten_medTextBox" runat="server" Text='<%# Bind("qtd_aten_med") %>' />
                <br />
                cidade_med:
                <asp:TextBox ID="cidade_medTextBox" runat="server" Text='<%# Bind("cidade_med") %>' />
                <br />
                estado_med:
                <asp:TextBox ID="estado_medTextBox" runat="server" Text='<%# Bind("estado_med") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
       
            <InsertItemTemplate>
                Nome:
                 <br /> 
                <asp:TextBox ID="nome_medTextBox" runat="server" Text='<%# Bind("nome_med") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*"  ForeColor="Red" SetFocusOnError="true"  ErrorMessage="Informe o nome" ControlToValidate="nome_medTextBox"></asp:RequiredFieldValidator> 
                <br />
                Endereço:
                 <br />
                <asp:TextBox ID="end_medTextBox" runat="server" Text='<%# Bind("end_med") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" SetFocusOnError="true" ForeColor="Red"  ErrorMessage="Informe o Endereço" ControlToValidate="end_medTextBox" ></asp:RequiredFieldValidator> 
                <br />
                CPF:
                 <br />
                <asp:TextBox ID="cpf_medTextBox" runat="server" Text='<%# Bind("cpf_med") %>' />
                <ajaxToolkit:MaskedEditExtender ID="cpf_medTextBox_MaskedEditExtender" runat="server" BehaviorID="cpf_medTextBox_MaskedEditExtender" Century="2000" MaskType="Number" Mask="999-99"  CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" TargetControlID="cpf_medTextBox" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Informe o CPF" SetFocusOnError="true" ForeColor="Red"  Text="*" ControlToValidate="cpf_medTextBox" ></asp:RequiredFieldValidator>
                <br />
                Telefone:
                 <br />
                <asp:TextBox ID="tel_medTextBox" TextMode="Phone" runat="server" Text='<%# Bind("tel_med") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tel_medTextBox" Text="*" ForeColor="Red" SetFocusOnError="true" ErrorMessage="Informe o Telefone"></asp:RequiredFieldValidator>
                <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="tel_medTextBox" Mask="9999-9999" MaskType="Number" AutoComplete="true"  runat="server" />
                 <br />
                CRM:
                 <br />
                <asp:TextBox ID="crm_medTextBox" runat="server" Text='<%# Bind("crm_med") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="crm_medTextBox" runat="server" SetFocusOnError="true" Text="*" ForeColor="Red" ErrorMessage="Informe o CRM"></asp:RequiredFieldValidator>
                <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender2" TargetControlID="crm_medTextBox" Mask="99999999-9" MaskType="Number"  runat="server" />
                 <br />
                Quantidade de atendimento:
                 <br />
                <asp:ListBox ID="ListBox1" AppendDataBoundItems="true" Rows="1"  runat="server" SelectedValue='<%# Bind("qtd_aten_med") %>'>
                    <asp:ListItem Selected="True" Value="-1"> Selecione </asp:ListItem>
                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    <asp:ListItem Text="20" Value="20"></asp:ListItem>
                     <asp:ListItem Text="30" Value="30"></asp:ListItem>
                </asp:ListBox>
                <br />
                Especialidade:
                <br />
                <asp:DropDownList ID="DropDownList441" runat="server" AppendDataBoundItems="true" SelectedValue='<%# Bind("id_esp") %>' DataSourceID="ObjectDataSource1" DataTextField="nome_esp" DataValueField="id_esp">
                    <asp:ListItem Text=":: Selecione ::" Value="-1"></asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarEspecialidade" TypeName="WebClinica.Controle.EspecialidadeControl"></asp:ObjectDataSource>
                <br />
                Cidade:
                 <br />
                <asp:TextBox ID="cidade_medTextBox" runat="server" Text='<%# Bind("cidade_med") %>' />
                <br />
                Estado:
                 <br />
                 <asp:ListBox ID="ListBox2" AppendDataBoundItems="true" Rows="1"  runat="server" SelectedValue='<%# Bind("estado_med") %>'>
                    <asp:ListItem Selected="True" Value="-1"> Selecione </asp:ListItem>
                    <asp:ListItem Text="SE" Value="SE"></asp:ListItem>
                    <asp:ListItem Text="BA" Value="BA"></asp:ListItem>
                     <asp:ListItem Text="SP" Value="SP"></asp:ListItem>
                </asp:ListBox>
                 <br />
                 <br />
                <asp:ValidationSummary ID="ValidationSummary1" ShowValidationErrors="true" ShowMessageBox="true" runat="server" />
                 <asp:LinkButton ID="InsertButton"  runat="server" CausesValidation="True" CommandName="Insert" Text="Cadastrar" OnClick="InsertButton_Click" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                id_med:
                <asp:Label ID="id_medLabel" runat="server" Text='<%# Bind("id_med") %>' />
                <br />
                nome_med:
                <asp:Label ID="nome_medLabel" runat="server" Text='<%# Bind("nome_med") %>' />
                <br />
                end_med:
                <asp:Label ID="end_medLabel" runat="server" Text='<%# Bind("end_med") %>' />
                <br />
                cpf_med:
                <asp:Label ID="cpf_medLabel" runat="server" Text='<%# Bind("cpf_med") %>' />
                <br />
                tel_med:
                <asp:Label ID="tel_medLabel" runat="server" Text='<%# Bind("tel_med") %>' />
                <br />
                crm_med:
                <asp:Label ID="crm_medLabel" runat="server" Text='<%# Bind("crm_med") %>' />
                <br />
                qtd_aten_med:
                <asp:Label ID="qtd_aten_medLabel" runat="server" Text='<%# Bind("qtd_aten_med") %>' />
                <br />
                cidade_med:
                <asp:Label ID="cidade_medLabel" runat="server" Text='<%# Bind("cidade_med") %>' />
                <br />
                estado_med:
                <asp:Label ID="estado_medLabel" runat="server" Text='<%# Bind("estado_med") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            
        </asp:FormView>
    
        <asp:ObjectDataSource ID="ObjectMedico" runat="server" DataObjectTypeName="WebClinica.MEDICO" DeleteMethod="ExcluirMedico" InsertMethod="CadastrarMedico" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterMedico" TypeName="WebClinica.Controle.MedicoControl" UpdateMethod="AtualizarMedico">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="IdMedico" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
     <br />
     <asp:Label ID="Label1"  runat="server" Text="Cadastro Realizado" Visible="false"></asp:Label>
   </asp:Content>
