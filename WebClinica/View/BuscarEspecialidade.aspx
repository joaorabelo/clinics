<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuscarEspecialidade.aspx.cs" Inherits="WebClinica.View.BuscarEspecialidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LBnome" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="TBnome" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LBdescricao" runat="server" Text="Descrição"></asp:Label>
    <asp:TextBox ID="TBdescricao" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
    <br />
    <br />
    <asp:GridView ID="GridView1" DataKeyNames="id_esp" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectEspecialidade" Width="259px">
        <Columns>
      
            <asp:BoundField DataField="nome_esp" HeaderText="Especialidade" SortExpression="nome_esp"></asp:BoundField>
            <asp:TemplateField>
                     <ItemTemplate>
                         <asp:LinkButton ID="lbtEdit" runat="server" PostBackUrl='<%# String.Format("~/View/ManEspecialidade.aspx?IdEspecialidade={0}", Eval("id_esp")) %>'>Editar
                             
                         </asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
            <asp:CommandField DeleteText="Excluir"   ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="id_esp" HeaderText="id_esp" SortExpression="id_esp"></asp:BoundField>
            <asp:BoundField DataField="des_esp" HeaderText="des_esp" SortExpression="des_esp"></asp:BoundField>
        </Columns>
        
    </asp:GridView>

    <asp:ObjectDataSource runat="server" ID="ObjectEspecialidade" DataObjectTypeName="WebClinica.ESPECIALIDADE" DeleteMethod="ExcluirEsp2" InsertMethod="CadastrarEspecialidade" OldValuesParameterFormatString="original_{0}" SelectMethod="BuscarEspecialidadeOU" TypeName="WebClinica.Controle.EspecialidadeControl" UpdateMethod="AtualizarEspecialidade">
        <SelectParameters>
            <asp:ControlParameter ControlID="TBnome" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="TBdescricao" PropertyName="Text" Name="descricao" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
