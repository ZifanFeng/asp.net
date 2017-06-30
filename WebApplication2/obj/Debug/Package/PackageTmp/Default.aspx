<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" MasterPageFile="~/Site1.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">



    
    
    <asp:Panel ID="Authorized" runat="server">
    <div>
        <input type="text" name="Team" ID="team" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="submit_click" Text="Click"/>
    
        <asp:Button ID="btn_filter" runat="server" OnClick="filter" Text="Filter" />
        <asp:TextBox ID="tb_filter" runat="server">all</asp:TextBox>
        <asp:Label runat="server" Text="Name filter->"></asp:Label>
        <asp:TextBox ID ="name_filter" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="ID filter->"></asp:Label>
        <asp:TextBox ID="id_filter" runat="server" ></asp:TextBox>
        <asp:DropDownList ID="dept_filter" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="curvisitstatus_filter" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="ward_filter" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="sex_filter" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="age_filter" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="curnurselevel_filter" runat="server"></asp:DropDownList>
        
    <asp:DropDownList ID="Names" runat="server"></asp:DropDownList>
    
    <div>
      
    <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
     <asp:Table ID="tbl" runat="server"  CellPadding="5"
HorizontalAlign="Center"/>
    </div>
    
    <div>
        <asp:Table ID="tb2" runat="server" BorderColor="Azure" CellPadding="8" BackColor="Black"/>
    </div>
    
    <div id="grid" runat="server" visible="false">
    
        <asp:GridView ID="gv" runat="server" RowStyle-Width="100px" AllowPaging="true"
         PageSize="10" OnPageIndexChanging="gv_PageIndexChanging" 
         PagerSettings-Mode = "NumericFirstLast"
         AllowSorting = "true" OnSorting="gv_ColSorting"
          OnRowCommand="gv_rowCommand" >
         <Columns>
            <asp:TemplateField ShowHeader = "false">
                <ItemTemplate>
                    <asp:Button ID="btn_select" CommandName="showThis" runat="server"
                     Text="showMore" />
                </ItemTemplate>
            </asp:TemplateField>
         </Columns>
         </asp:GridView>
       
        <asp:DropDownList ID="pageSize" runat="server"  >
            <asp:ListItem Selected="True">10</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>50</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" OnClick="pageChange_click" 
        Text="Set Page Size" />
    </div>
    </div>
    
    </asp:Panel>
    
    <asp:Panel ID="Stranger" runat="server">
        <asp:LinkButton  runat="server" PostBackUrl="~/Login.aspx" Text="login first" OnClick="forgetName"></asp:LinkButton>
    </asp:Panel>



</asp:Content>

