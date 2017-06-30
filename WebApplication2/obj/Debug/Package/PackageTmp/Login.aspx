<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>LogIn</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Label ID="Message" runat="server" ></asp:Label> <br />
        <asp:Label ID="Label1" runat="server" Text="用户"></asp:Label>  
       <asp:TextBox ID="User" runat="server" ontextchanged="User_TextChanged" ></asp:TextBox><br />  
        <asp:Label ID="Label3" runat="server" Text="Dept"></asp:Label>
        <asp:DropDownList ID="Dept" runat="server" ></asp:DropDownList><br />
       <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>  
       <asp:TextBox ID="Pwd" runat="server" TextMode="Password" AutoCompleteType="BusinessZipCode" Width="145px"></asp:TextBox><br />  
       <asp:CheckBox ID="RememberMe" runat="server" Checked="false" />
       <asp:Label ID="Label4" Text="Remember Me" runat="server"></asp:Label><br />
       <asp:Button ID="allow" runat="server" OnClick="login" Text="确定" />  
      
    </div>
    </form>
</body> 
</html>
