<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPatient.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Clinical_System.NewPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="MainStyle.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css"/>
    <link rel="shortcut icon" href="assets/clinic.ico" />

    <title>Register new Patient</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 504px;
        }
        .auto-style2 {
            width: 351px;
        }
        .auto-style3 {
            width: 252px;
        }
        .auto-style5 {
            width: 351px;
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 199px;
        }
        .auto-style8 {
            width: 199px;
            height: 40px;
        }
        .auto-style9 {
            width: 252px;
            height: 40px;
        }
        .auto-style10 {
            width: 351px;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
        .auto-style14 {
            width: 199px;
            height: 11px;
        }
        .auto-style15 {
            width: 252px;
            height: 11px;
        }
        .auto-style16 {
            width: 351px;
            height: 11px;
        }
        .auto-style17 {
            height: 11px;
        }
    </style>
</head>
<body>
<script>
    $(document).on('ready', function () {
      //  $.datepicker.formatDate("yy-mm-dd", new Date(2007, 1 - 1, 26));
      //$(".datepicker").datepicker("option", "dateFormat", "yyyy-mm-dd");
      $(".datepicker").datepicker({
          dateFormat: "yy-mm-dd"
      });
  });
</script>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" CssClass="mainTextBoxes" runat="server" CausesValidation="True"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Sex"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox3" CssClass="mainTextBoxes" runat="server" CausesValidation="True"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Blood"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>O</asp:ListItem>
                            <asp:ListItem>AB</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>+</asp:ListItem>
                            <asp:ListItem>-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Birthdate"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox type="text" id="datepicker" class="datepicker mainTextBoxes" runat="server"/>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="datepicker" ErrorMessage="Birthdate is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label6" runat="server" Text="Credit Card"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox6" CssClass="mainTextBoxes" runat="server" CausesValidation="True"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Credit Card ID is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox7"  CssClass="mainTextBoxes" runat="server" TextMode="Phone" CausesValidation="True"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="Phone is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" CssClass="mainButtons" runat="server" OnClick="Button1_Click" Text="Register" Height="37px" Width="110px" />
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
