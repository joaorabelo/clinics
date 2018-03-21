<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuscarConsulta.aspx.cs" Inherits="WebClinica.View.BuscarConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            
            <asp:ObjectDataSource ID="ObjectConsulta" runat="server" DataObjectTypeName="WebClinica.CONSULTA" DeleteMethod="ExcluirConsulta" InsertMethod="AgendarConsulta" OldValuesParameterFormatString="original_{0}" SelectMethod="BuscarConsulta" TypeName="WebClinica.Controle.ConsultaControl" UpdateMethod="AtualizarConsulta">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="turno" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="nomep" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="nomem" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="data" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="TextBox5" Name="nomec" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            
            <asp:Label ID="Label1" runat="server" Text="Turno:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Paciente"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Medico"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Data"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Convenio"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Button runat="server" Text="pesquisar" OnClick="Button1_Click" ID="Button1" />
            <asp:GridView ID="GridView1" DataKeyNames="id_con" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectConsulta" >
                <Columns>
                    <asp:BoundField DataField="id_con" HeaderText="id_con" SortExpression="id_con" />
                    <asp:BoundField DataField="data_con" HeaderText="data_con" SortExpression="data_con" />
                    <asp:BoundField DataField="turno_con" HeaderText="turno_con" SortExpression="turno_con" />
                    <asp:BoundField DataField="id_pac" HeaderText="id_pac" SortExpression="id_pac" />
                    <asp:BoundField DataField="id_med" HeaderText="id_med" SortExpression="id_med" />
                    <asp:BoundField DataField="id_conv" HeaderText="id_conv" SortExpression="id_conv" />
                    <asp:BoundField DataField="sit_con" HeaderText="sit_con" SortExpression="sit_con" />
                    <asp:BoundField DataField="med_con" HeaderText="med_con" SortExpression="med_con" />
                    <asp:BoundField DataField="PACIENTE" HeaderText="Paciente" SortExpression="PACIENTE"></asp:BoundField>
                </Columns>
            </asp:GridView>
            
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
