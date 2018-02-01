<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDashboard.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Clinical_System.PatientDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="MainStyle.css" />
    <link rel="shortcut icon" href="assets/clinic.ico" />

    <title>Patient Dashboeard</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 195px;
        }
        .auto-style3 {
            width: 129px;
        }
        .auto-style4 {
            width: 231px;
        }
        .auto-style6 {
            width: 129px;
            text-align: right;
        }
        .auto-style7 {
            width: 248px;
            text-align: center;
        }
        .auto-style8 {
            width: 248px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">      <asp:Button ID="logout" runat="server" Height="42px" Text="Logout" Width="79px" CssClass="mainButtons" OnClick="logout_Click"/></td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" style="color: #006600">
                        <asp:Label ID="Label1" runat="server" Text="your ID"></asp:Label>
                    </td>
                    <td class="auto-style7" style="color: #006600">
                        <asp:Label ID="labelID" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="color: #006600">
                        <asp:Label ID="Label12" runat="server" Text="Please write your ID is safe place you will need it to login"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" style="color: #006600">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style7" style="color: #006600">
                        <asp:Label ID="labelName" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="color: #006600">
                        &nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" style="color: #006600">
                        <asp:Label ID="Label5" runat="server" Text="BloodType"></asp:Label>
                    </td>
                    <td class="auto-style7" style="color: #006600">
                        <asp:Label ID="labelBlood" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="color: #006600">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" style="color: #006600">
                        <asp:Label ID="Label7" runat="server" Text="CreditID"></asp:Label>
                    </td>
                    <td class="auto-style7" style="color: #006600">
                        <asp:Label ID="labelCredit" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="color: #006600">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" style="color: #006600">
                        <asp:Label ID="Label8" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style7" style="color: #006600">
                        <asp:Label ID="labelPhone" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="color: #006600">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" style="color: #006600">
                        <asp:Label ID="Label9" runat="server" Text="fraction"></asp:Label>
                    </td>
                    <td class="auto-style7" style="color: #006600">
                        <asp:Label ID="labelFraction" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="color: #006600">
                        <asp:Label ID="Label29" runat="server" Text="this fraction will be multiplied by the cost you afford to discount your payment, it will decrease by 5% for each 5 visits"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" style="color: #006600">
                        <asp:Label ID="Label10" runat="server" Text="your cash"></asp:Label>
                    </td>
                    <td class="auto-style7" style="color: #006600">
                        <asp:Label ID="labelCash" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="color: #006600">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New Appointment" CssClass="mainButtons" Height="40px" Width="210px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="5" rowspan="3">
                        <asp:Label ID="Label30" runat="server" Font-Size="XX-Large" Text="My appointments"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="7">
                        <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" Width="1370px" ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True" />
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                <asp:BoundField DataField="DiagnoseResult" HeaderText="DiagnoseResult" SortExpression="DiagnoseResult" />
                                <asp:BoundField DataField="Prescription" HeaderText="Prescription" SortExpression="Prescription" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
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
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem %>" SelectCommand="SELECT CONVERT (VARCHAR(10), Appointment.Date, 111) AS Date, Appointment.Time, Appointment.DiagnoseResult, Appointment.Prescription, Doctor.Name, Clinic.Type, Appointment.cost FROM Appointment INNER JOIN Doctor ON Appointment.DID = Doctor.DoctorID INNER JOIN Clinic ON Doctor.ClinCode = Clinic.ClinicCode WHERE (Appointment.PID = @PID) ORDER BY Date DESC">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="p0001" Name="PID" SessionField="User" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
