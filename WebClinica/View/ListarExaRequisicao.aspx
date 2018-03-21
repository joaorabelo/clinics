<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListarExaRequisicao.aspx.cs" Inherits="WebClinica.View.ListarExaRequisicao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectExaRequesicao">
        <Columns>
            <asp:BoundField DataField="id_pac" HeaderText="id_pac" SortExpression="id_pac" />
            <asp:BoundField DataField="id_exa" HeaderText="id_exa" SortExpression="id_exa" />
            <asp:BoundField DataField="data_exar" HeaderText="data_exar" SortExpression="data_exar" />
            <asp:BoundField DataField="obs_exar" HeaderText="obs_exar" SortExpression="obs_exar" />
            <asp:BoundField DataField="valor_exar" HeaderText="valor_exar" SortExpression="valor_exar" />
            <asp:BoundField DataField="id_conv" HeaderText="id_conv" SortExpression="id_conv" />
         <asp:TemplateField>
                     <ItemTemplate>
                         <asp:LinkButton ID="lbtEdit" runat="server" PostBackUrl='<%# String.Format("~/View/ManExaRequisicao.aspx?IdExaReq={0}", Eval("id_exar")) %>'>LinkButton
                             
                         </asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectExaRequesicao" runat="server" DataObjectTypeName="WebClinica.EXAMEREQUISICAO" DeleteMethod="ExcluirExaRequisicao" InsertMethod="CadastarExaRequisicao" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarExaRequisicao" TypeName="WebClinica.Controle.ExameRequisicaoControl" UpdateMethod="AtualizarExaRequisicao">
    </asp:ObjectDataSource>
</asp:Content>
