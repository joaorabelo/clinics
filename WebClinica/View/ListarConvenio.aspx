<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarConvenio.aspx.cs" Inherits="WebClinica.View.ListarConvenio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectConvenio">
        <Columns>
            <asp:BoundField DataField="id_conv" HeaderText="id_conv" SortExpression="id_conv" />
            <asp:BoundField DataField="nome_conv" HeaderText="nome_conv" SortExpression="nome_conv" />
            <asp:BoundField DataField="tel_conv" HeaderText="tel_conv" SortExpression="tel_conv" />
         <asp:TemplateField>
                     <ItemTemplate>
                         <asp:LinkButton ID="lbtEdit" runat="server" PostBackUrl='<%# String.Format("~/View/CadastrarConvenio.aspx?IdConvenio={0}", Eval("id_conv")) %>'>LinkButton
                             
                         </asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectConvenio" runat="server" DataObjectTypeName="WebClinica.CONVENIO" DeleteMethod="ExcluirConvenio" InsertMethod="CadastrarConvenio" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarConvenio" TypeName="WebClinica.Controle.ConvenioControl" UpdateMethod="AtualizarConvenio">
    </asp:ObjectDataSource>
</asp:Content>
