<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Clinical_System.Index" UnobtrusiveValidationMode="None" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <title>Clinic Center</title>
<script src="dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="dist/sweetalert.css" />
<link rel="stylesheet" type="text/css" href="MainStyle.css" />
<link rel="stylesheet" type="text/css" href="IndexStyle.css">
<link rel="shortcut icon" href="assets/clinic.ico" />
    <style type="text/css">
        .auto-style17 {
            text-align: center;
            height: 69px;
        }
        .auto-style20 {
            width: 157px;
            height: 37px;
        }
        .auto-style21 {
            width: 157px;
        }
        .auto-style22 {
            width: 157px;
            height: 38px;
        }
        .auto-style28 {
            text-align: left;
            width: 227px;
            height: 55px;
        }
        .auto-style29 {
            width: 227px;
        }
        .auto-style30 {
            width: 227px;
            height: 37px;
        }
        .auto-style31 {
            width: 227px;
            height: 38px;
        }
        .auto-style32 {
            height: 37px;
        }
        .auto-style33 {
            width: 330px;
            text-align: center;
            height: 37px;
        }
        .auto-style34 {
            height: 69px;
        }
        .auto-style35 {
            width: 157px;
            text-align: right;
            height: 69px;
        }
        .auto-style36 {
            width: 227px;
            text-align: right;
            height: 69px;
        }
        .auto-style37 {
            width: 227px;
            height: 69px;
        }
        .auto-style41 {
            width: 330px;
            text-align: center;
            height: 55px;
        }
        .auto-style42 {
            text-align: left;
            height: 55px;
        }
        .auto-style43 {
            height: 55px;
        }
        .auto-style44 {
            width: 157px;
            text-align: right;
            height: 55px;
        }
        .auto-style45 {
            width: 227px;
            text-align: right;
            height: 55px;
        }
        .auto-style47 {
            width: 330px;
            text-align: center;
            height: 70px;
        }
        .auto-style48 {
            height: 70px;
        }
        .auto-style49 {
            width: 157px;
            text-align: right;
            height: 70px;
        }
        .auto-style50 {
            width: 227px;
            text-align: right;
            height: 70px;
        }
        .auto-style51 {
            width: 227px;
            height: 70px;
        }
        .auto-style52 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <script>
        function showErrorDialogue() {
            sweetAlert('Wrong ID!', 'No User found with this ID, check your login type and your ID and try again.', 'error');
        }

    </script>
    <header><h1> Clinics Center </h1></header>
    <form id="form1" runat="server">
   <div>
         <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style44">
                    </td>
                <td class="auto-style45">
                    <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                </td>
                <td class="auto-style41">
                    <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" ValidationGroup="id" Width="236px" CssClass="auto-style52 mainTextBoxes" Height="31px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="ID is required to login" ForeColor="Red" ValidationGroup="id"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style42">
                    </td>
                <td class="auto-style43"></td>
            </tr>
            <tr>
                <td class="auto-style48"></td>
                <td class="auto-style49">
                    </td>
                <td class="auto-style50">
                    <asp:Label ID="Label2" runat="server" Text="Login Type"></asp:Label>
                </td>
                <td class="auto-style47">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style10" Width="241px" Height="31px">
                        <asp:ListItem>Patient</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style51"></td>
                <td class="auto-style48"></td>
                <td class="auto-style48"></td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35"></td>
                <td class="auto-style36"></td>
                <td class="auto-style17">
                    <asp:Button CssClass="mainButtons" ID="logIn" runat="server" Text="Login" OnClick="logIn_Click" Height="45px" Width="80px" />
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style20"></td>
                <td class="auto-style30"></td>
                <td class="auto-style33">
                    <asp:Button CssClass="mainButtons" ID="Button1" runat="server" Text="New Patient" OnClick="Button1_Click" Height="37px" Width="145px" />
                </td>
                <td class="auto-style30"></td>
                <td class="auto-style32"></td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style22"></td>
                <td class="auto-style31"></td>
                <td class="auto-style16"></td>
                <td class="auto-style31"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style5"><a href="http://www.freepik.com">Selected by freepik</a></td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
 