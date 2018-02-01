<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorDashboard.aspx.cs" Inherits="Clinical_System.DoctorDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css"/>
<link rel="stylesheet" type="text/css" href="MainStyle.css" />
    <link rel="shortcut icon" href="assets/clinic.ico" />


    <title>Doctor Dashboard</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 309px;
        }
        .auto-style4 {
            height: 137px;
        }
        .auto-style5 {
            height: 137px;
            text-align: center;
        }
        .auto-style7 {
            height: 309px;
        }
        .auto-style8 {
            height: 62px;
            width: 453px;
        }
        .auto-style9 {
            height: 62px;
            width: 816px;
        }
        .auto-style10 {
            height: 62px;
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
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10">
                        <asp:Button ID="logout" runat="server" Height="32px" Text="Logout" Width="79px" CssClass="mainButtons" OnClick="logout_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5" colspan="6">
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="My Appointments in : "></asp:Label>
                        <asp:TextBox runat="server" AutoPostBack="true" ID="datepicker" class="datepicker mainTextBoxes" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style2" colspan="8">
                        <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="Center"  DataKeyNames="PatientID,Date,Time" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" Width="1405px" AutoGenerateSelectButton="True" AutoGenerateEditButton="True" ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="PatientID" HeaderText="Patient ID" ReadOnly="true" SortExpression="PatientID" />
                                <asp:BoundField DataField="Name" HeaderText="Patient Name" ReadOnly="true" SortExpression="Name" />
                                <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="true" SortExpression="Date" />
                                <asp:BoundField DataField="Time" HeaderText="Time" ReadOnly="true" SortExpression="Time" />
                                <asp:BoundField DataField="DiagnoseResult" HeaderText="DiagnoseResult" SortExpression="DiagnoseResult" />
                                <asp:BoundField DataField="Prescription" HeaderText="Prescription" SortExpression="Prescription" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem %>" 
                            SelectCommand="SELECT Patient.PatientID, Patient.Name, CONVERT(VARCHAR(10),Appointment.Date,111) AS Date, Appointment.Time, Appointment.DiagnoseResult, Appointment.Prescription FROM Appointment INNER JOIN Patient ON Appointment.PID = Patient.PatientID WHERE (Appointment.DID = @DID) AND (Appointment.Date = @Date)"
                            UpdateCommand="UPDATE [Appointment] SET [DiagnoseResult] = @DiagnoseResult , [Prescription] = @Prescription  WHERE ([PID] = @PatientID) AND ([Date] = @Date) AND ([Time] = @Time)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="d01" Name="DID" SessionField="User" />
                                <asp:ControlParameter ControlID="datepicker" DefaultValue="2017-02-10" Name="Date" PropertyName="Text" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="DiagnoseResult" Type="String" />
                                <asp:Parameter Name="Prescription" Type="String" />
                                <asp:Parameter  Name="PatientID"  Type="String" />
                                <asp:ControlParameter ControlID="datepicker" DefaultValue="2017-02-10" Type="DateTime" Name="Date" PropertyName="Text" />
                                <asp:Parameter Name="Time" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td colspan="10">
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
