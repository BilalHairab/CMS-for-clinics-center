<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAppointment.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Clinical_System.NewAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css"/>
<script src="dist/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="MainStyle.css" />
    <link rel="shortcut icon" href="assets/clinic.ico" />

<link rel="stylesheet" type="text/css" href="dist/sweetalert.css" />
 
    <title>New Appointment</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 285px;
        }
        .auto-style4 {
            width: 374px;
        }
        .auto-style6 {
            height: 160px;
            text-align: center;
        }
        .auto-style7 {
            width: 223px;
        }
        .auto-style8 {
            height: 70px;
        }
        .auto-style9 {
            width: 285px;
            text-align: right;
            height: 70px;
        }
        .auto-style10 {
            width: 374px;
            text-align: center;
            height: 70px;
        }
        .auto-style11 {
            width: 223px;
            height: 70px;
        }
        .auto-style18 {
            width: 285px;
            height: 119px;
        }
        .auto-style19 {
            width: 374px;
            height: 119px;
        }
        .auto-style21 {
            width: 223px;
            height: 119px;
        }
        .auto-style22 {
            height: 100px;
            width: 100px;
            text-align: center;
        }
        .auto-style26 {
            height: 29px;
        }
        .auto-style27 {
            width: 247px;
            height: 70px;
        }
        .auto-style28 {
            width: 247px;
        }
        .rounded-corners {
  border: 1px solid gray;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;
  border-radius: 8px;
  background-color: white;
  overflow: hidden;
}
    </style>
</head>
<body>
    <script>
        function showErrorDialogue(error) {
            sweetAlert('Error!', error, 'error');
        }
        function showSuccessDialogue(clinic,doctor,date,time,cost) {
            swal({
                title: "Thanks for Choosing us!",
                text: "Appointment details:\n " + clinic+" Clinic \n Dr."+doctor+"\n"+date+" "+time+"\nCost: "+cost+" L.E \n Please be in time :)",
                type: "success",
                showCancelButton: false,
                confirmButtonText: "OK",
                closeOnConfirm: false
            },
                function () {
                    window.location = "PatientDashboard.aspx";
                });
        }
    $(document).on('ready', function () {
      $(".datepicker").datepicker({
          dateFormat: "yy-mm-dd"
      });
  });
</script>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style22 rounded-corners" colspan="2">
                        <asp:Label ID="cashLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style22 rounded-corners" colspan="2">
                        <asp:Label ID="discountLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" colspan="7"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="Clinic :"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="ClinicList" runat="server" Width="255px" OnSelectedIndexChanged="ClinicList_SelectedIndexChanged" AutoPostBack="True" >
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="finalPriceBox" runat="server" Enabled="False" ReadOnly="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="Date :"></asp:Label>
                    </td>
                    <td class="auto-style10">             
                        <asp:TextBox type="text" ID="datepicker" AutoPostBack="true" class="datepicker mainTextBoxes" runat="server" Width="250px" OnTextChanged="datepicker_TextChanged"/>
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="Period :"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="PeriodList" runat="server" Width="255px" AutoPostBack="True" OnSelectedIndexChanged="PeriodList_SelectedIndexChanged" >
                            <asp:ListItem>Morning 10:00 AM - 16:00 PM</asp:ListItem>
                            <asp:ListItem>Evening  16:00 PM - 22:00 PM</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" runat="server" Text="Time :"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="TimeList" runat="server" Width="255px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="7">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="42px" Width="120px" OnClick="Button1_Click" CssClass="mainButtons" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
