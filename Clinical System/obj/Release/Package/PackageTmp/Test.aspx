<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Clinical_System.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css"/>
<link rel="stylesheet" type="text/css" href="MainStyle.css" />

    <title></title>
    <style type="text/css">
        .auto-style38 {
            text-align: center;
        }
        .auto-style39 {
            width: 486px;
        }
        .auto-style40 {
            width: 486px;
            text-align: right;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <table >
                <tr>
                    <td rowspan="12" class="auto-style23">&nbsp;</td>
                    <td  colspan="6">
                        <asp:Label ID="Label21" runat="server" Font-Size="XX-Large" Text="Employees"></asp:Label>
                    </td>
                    <td rowspan="12">&nbsp;</td>
                </tr>
                <tr>
                    <td  colspan="6">
                        <div class="auto-style38" >
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource5" Width="1276px" ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
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
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Clinical Information SystemConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38" colspan="6">
                        <asp:Label ID="Label22" runat="server" Text="New Employee" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label23" runat="server" Text=" "></asp:Label>
                    </td>
                    <td >
                        &nbsp;</td>
                    <td class="auto-style40">
                        <asp:Label ID="Label24" runat="server" Text="Employee ID :"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="labelIDE" runat="server" Enabled="False" ReadOnly="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td class="auto-style40">
                        <asp:Label ID="Label25" runat="server" Text="Name :"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="labelNameEmp" runat="server" CausesValidation="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td  colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="valc" runat="server" ErrorMessage="Name is required" ControlToValidate="labelNameEmp" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td class="auto-style40">
                        <asp:Label ID="Label26" runat="server" Text="Salary :"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="labelESalary" runat="server" CausesValidation="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td  colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="vald" runat="server" ErrorMessage="Salary is required" ControlToValidate="labelESalary" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td >
                        <asp:Button ID="addEmployee" runat="server" Text="Submit" CssClass="mainButtons" OnClick="addEmployee_Click" Height="34px" Width="103px" />
                    </td>
                    <td  colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td  colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                </tr>
                <tr>
                    <td  colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td  colspan="6">
                        &nbsp;</td>
                </tr>
            </table>
         </div>
<script>
 
</script>

    </form>
</body>
</html>
