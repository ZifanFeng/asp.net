<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" MasterPageFile="~/Site1.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">



    
    
    <asp:Panel ID="Authorized" runat="server">
    <div>
        <input type="text" name="Team" ID="team" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="submit_click" Text="Click"/><br />
    
        <br />
        
    <asp:DropDownList ID="Names" runat="server"></asp:DropDownList>
     <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
    
    <div>
      
   
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
        <br />
        <asp:Button ID="btn_filter" runat="server" Height="32px" OnClick="filter" 
            Text="Filter" Width="79px" />
        <br />
        <asp:Label runat="server" Text="Name filter-&gt;"></asp:Label>
        <asp:TextBox ID="name_filter" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="ID filter-&gt;"></asp:Label>
        <asp:TextBox ID="id_filter" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Department filter-&gt;"></asp:Label>
        <asp:DropDownList ID="dept_filter" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text="CurVisitStatus filter-&gt;"></asp:Label>
        <asp:DropDownList ID="curvisitstatus_filter" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Text="Ward filter-&gt;"></asp:Label>
        <asp:DropDownList ID="ward_filter" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Sex filter-&gt;"></asp:Label>
        <asp:DropDownList ID="sex_filter" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label6" runat="server" Text="Age filter-&gt;"></asp:Label>
        <asp:DropDownList ID="age_filter" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label7" runat="server" Text="CurNurseStatus filter-&gt;"></asp:Label>
        <asp:DropDownList ID="curnurselevel_filter" runat="server">
        </asp:DropDownList>
    </div>
    </div>
    
    </asp:Panel>
    
    <asp:Panel ID="Stranger" runat="server">
        <asp:LinkButton  runat="server" PostBackUrl="~/Login.aspx" Text="login first" OnClick="forgetName"></asp:LinkButton>
    </asp:Panel>



</asp:Content>

