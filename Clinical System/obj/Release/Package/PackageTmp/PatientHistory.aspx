<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientHistory.aspx.cs" Inherits="Clinical_System.PatientHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="MainStyle.css" />
<link rel="shortcut icon" href="assets/clinic.ico" />
<title>Patient History</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Patient Medical History"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource11" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" ViewStateMode="Disabled" Width="521px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="PatientID" HeaderText="Patient ID" SortExpression="PatientID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                <asp:BoundField DataField="MedicalHistory" HeaderText="MedicalHistory" SortExpression="MedicalHistory" />
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
                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem%>" SelectCommand="SELECT Patient.PatientID, Patient.Name, MedicalHistory.Type, MedicalHistory.MedicalHistory FROM Patient INNER JOIN MedicalHistory ON Patient.PatientID = MedicalHistory.PID WHERE (Patient.PatientID = @PID)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="p0000" Name="PID" SessionField="PatientHistory" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
