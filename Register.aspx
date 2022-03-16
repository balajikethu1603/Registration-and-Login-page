<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Registration_form.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" style="width:700px; height:744px; background-color:chartreuse">
        <tr>
            <td colspan="2" align="center">
            <h2>Registration Form</h2>
        </tr>
        <tr>
            <td class="auto-style18"><b>First Name:</b></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Height="51px" Width="339px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Characters" ForeColor="Red" ValidationExpression="^[A-Z a-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><b>Last Name:</b></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="340px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only Characters" ForeColor="Red" ValidationExpression="^[A-Z a-z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><b>Email_ID:</b></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="340px" TextMode="Email" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email_ID Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email_ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><b>Gender:</b></td>
            <td class="auto-style15">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" Width="340px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Gender Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><b>Address:</b></td>
            <td class="auto-style21">
                <asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="340px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address Required" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style18"><b>Phone_No:</b></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server" Height="50px" Width="340px" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Phone_No Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
            <tr>
            <td class="auto-style18"><b>Password:</b></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox6" runat="server" Height="50px" Width="340px" TextMode="Password" EnableTheming="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
            <tr>
            <td class="auto-style18"><b>Confirm Password:</b></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox7" runat="server" Height="50px" Width="340px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Confirm Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password is not matched" ForeColor="Red"></asp:CompareValidator>
                </td>
        </tr>
            <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Height="57px" Width="225px" style="background-color:aqua"/>
                </td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Mandatory fields (*)" />
            </td>
        </tr>
            <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            <td>&nbsp;</td>
        </tr>
      </table>
    </form>
</body>
</html>
