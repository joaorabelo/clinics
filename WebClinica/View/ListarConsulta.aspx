<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarConsulta.aspx.cs" Inherits="WebClinica.View.ListaConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectConsulta">
        <Columns>
            <asp:BoundField DataField="id_con" HeaderText="id_con" SortExpression="id_con" />
            <asp:BoundField DataField="data_con" HeaderText="data_con" SortExpression="data_con" />
            <asp:BoundField DataField="turno_con" HeaderText="turno_con" SortExpression="turno_con" />
            <asp:BoundField DataField="id_pac" HeaderText="id_pac" SortExpression="id_pac" />
            <asp:BoundField DataField="id_med" HeaderText="id_med" SortExpression="id_med" />
        <asp:TemplateField>
                     <ItemTemplate>
                         <asp:LinkButton ID="lbtEdit" runat="server" PostBackUrl='<%# String.Format("~/View/ManConsulta.aspx?IdConsulta={0}", Eval("id_con")) %>'>LinkButton
                             
                         </asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectConsulta" runat="server" DataObjectTypeName="WebClinica.CONSULTA" DeleteMethod="ExcluirConsulta" InsertMethod="AgendarConsulta" OldValuesParameterFormatString="original_{0}" SelectMethod="ObterConsulta" TypeName="WebClinica.Controle.ConsultaControl" UpdateMethod="AtualizarConsulta">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="IdConsulta" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
