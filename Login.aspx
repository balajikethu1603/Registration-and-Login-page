<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registration_form.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style2 {
            width: 296px;
        }
        .auto-style3 {
            width: 671px;
            height: 389px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" class="auto-style3" style="background-color: #00FFFF">
        <tr>
            <td colspan="2" align="center"><h2>Login Page</h2></td>
            
        </tr>
        <tr>
            <td align="center" style="width:50"><b>Email Id:</b></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1" ErrorMessage="Incorrect Enaim_ID" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width:50"><b>Password:</b></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" Height="44px" Width="230px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password wrong" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Height="64px" Text="Login" Width="158px" BackColor="#00CC00" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
           
        </tr>
    </table>
        <div>
        </div>
    </form>
</body>
</html>
