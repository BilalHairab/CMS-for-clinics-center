<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" UnobtrusiveValidationMode="None" Inherits="Clinical_System.EmployeeDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css"/>
<link rel="stylesheet" type="text/css" href="MainStyle.css" />
    <link rel="shortcut icon" href="assets/clinic.ico" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <style type="text/css">

.wrapper {
  position: relative;
  width: 960px;
  padding: 10px;
}
section {

  display: none;
  position: fixed;
  height: 100vh; 
  top: 0;
  right: 0;
  width: 90%;
  /*min-height: 400px;*/

}
section:first-of-type {
  display: block;
}
nav {
  padding: 0;
  margin: 0;
  float: left;
  top: 0;
  left: 0;
  bottom:0 ;
  position: fixed;
  width: 10%;
  background-color: #41ace1;
}
ul {
  list-style: none;
  margin-top: 100px;
}
nav ul li a{
    text-decoration: none;
    display: block;
    text-align: center;
    color: #fff;
      cursor: pointer;

    padding: 10px 0;
}
.active {
  background: #7f7f7f;
}    
          .auto-style1 {
            width: 100%;
            height: 600px;
        }
        .auto-style2 {
            text-align: center;
            width: 698px;
        }
        .auto-style3 {
            width: 698px;
        }
        .auto-style4 {
            width: 659px;
            text-align: center;
        } 
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
            width: 121px;
        }
        .auto-style19 {
            width: 121px;
        }
        .auto-style20 {
            text-align: center;
            width: 117px;
        }
        .auto-style21 {
            width: 101px;
            text-align: left;
        }
        .auto-style22 {
            width: 85px;
            text-align: left;
        }
        .auto-style23 {
            width: 6px;
        }
        .auto-style24 {
            width: 117px;
            text-align: left;
        }
        .auto-style25 {
            text-align: left;
            width: 166px;
        }
        .auto-style26 {
            text-align: right;
            width: 327px;
        }
        .auto-style27 {
            text-align: left;
        }
        .auto-style28 {
            width: 66px;
            text-align: left;
        }
        .auto-style29 {
            width: 562px;
        }
        .auto-style30 {
            text-align: center;
        }
        .auto-style31 {
            text-align: center;
            height: 75px;
        }
        .auto-style32 {
            height: 28px;
        }
        .auto-style33 {
            text-align: right;
            width: 562px;
            height: 28px;
        }
        .auto-style34 {
            height: 45px;
        }
        .auto-style35 {
            text-align: right;
            width: 562px;
            height: 45px;
        }
        .auto-style36 {
            height: 44px;
        }
        .auto-style37 {
            text-align: right;
            width: 562px;
            height: 44px;
        }
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
            .auto-style41 {
                text-align: right;
            }
        </style>

</head>
<body>
    <form id="form1" runat="server">
<div class="auto-style1">

  <nav class="auto-style41">
    <ul id="nav_list">
      <li id="a" data-rel="1" class="active"><a>Patients</a></li>
      <li id="b" data-rel="2"><a>Doctors</a></li>
      <li id="c" data-rel="3"><a>Clinics</a></li>
      <li id="d" data-rel="4"><a>Employees</a></li>
    </ul>
      <asp:Button ID="logout" runat="server" Height="29px" Text="Logout" Width="79px" CssClass="mainButtons" OnClick="logout_Click"/>
  </nav>

  <section>
    <div>
           <table class="auto-style1">
                <tr>
                    <td rowspan="5">&nbsp;</td>
                    <td class="auto-style3" colspan="4">
                        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Patients"></asp:Label>
                    </td>
                    <td rowspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">
                        <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="Center" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="PatientID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1276px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="PatientID" HeaderText="PatientID" ReadOnly="True" SortExpression="PatientID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="BloodType" HeaderText="BloodType" SortExpression="BloodType" />
                                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                                <asp:BoundField DataField="CreditID" HeaderText="CreditID" SortExpression="CreditID" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                <asp:BoundField DataField="fraction" HeaderText="fraction" SortExpression="fraction" />
                                <asp:BoundField DataField="CreditCash" HeaderText="CreditCash" SortExpression="CreditCash" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem%>" SelectCommand="SELECT PatientID,Name,Sex,Address,BloodType,CONVERT(VARCHAR(10),BirthDate,111) AS BirthDate,CreditID,Phone,fraction,CreditCash FROM [Patient]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" rowspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Selected Patient ID"></asp:Label>
                    </td>
                    <td class="auto-style29" colspan="3">
                        <asp:Label ID="Label2" runat="server" Text="Add medical history for selected patient"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="entry type"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="description"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="resultLabel" runat="server" Text=" "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="IDBox" runat="server" Enabled="False" ReadOnly="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Personal history</asp:ListItem>
                            <asp:ListItem>Family history</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="descBox" runat="server" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="mainButtons" Height="36px" Width="50px" />
                    </td>
                </tr>
            </table>
        </div>  

  </section>

  <section>
  <div>
             <table class="auto-style17">
                <tr>
                    <td rowspan="12" class="auto-style23">&nbsp;</td>
                    <td class="auto-style19" colspan="6">
                        <asp:Label ID="Label6" runat="server" Font-Size="XX-Large" Text="Doctors"></asp:Label>
                    </td>
                    <td rowspan="12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18" colspan="6">
                        <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center"  AutoGenerateColumns="False" DataKeyNames="DoctorID" DataSourceID="SqlDataSource2" Width="1276px" ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" ReadOnly="True" SortExpression="DoctorID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                                <asp:BoundField DataField="shift" HeaderText="shift" SortExpression="shift" />
                                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem%>" SelectCommand="SELECT Doctor.DoctorID, Doctor.Name, Doctor.Phone,Doctor.Salary, Doctor.shift, Clinic.Type FROM Clinic INNER JOIN Doctor ON Clinic.ClinicCode = Doctor.ClinCode"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="6">
                        <asp:Label ID="Label7" runat="server" Text="New Doctor"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:Label ID="Label8" runat="server" Text=" "></asp:Label>
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label9" runat="server" Text="Doctor ID :"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="labelID" runat="server" Enabled="False" ReadOnly="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label10" runat="server" Text="Name :"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="labelName" runat="server"  CausesValidation="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style27" colspan="2">
                        <asp:RequiredFieldValidator ValidationGroup="valb" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is required" ControlToValidate="labelName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label11" runat="server" Text="Phone :"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="labelPhone" runat="server"  CausesValidation="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style27" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="valb" runat="server" ErrorMessage="Phone is required" ControlToValidate="labelPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label12" runat="server" Text="Salary :"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="labelSalary" runat="server" CausesValidation="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style27" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="valb" runat="server" ErrorMessage="Salary is required" ControlToValidate="labelSalary" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label13" runat="server" Text="Clinic :"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:DropDownList ID="DropClinic" runat="server" DataSourceID="SqlDataSource3" DataTextField="Type" DataValueField="Type">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem%>" SelectCommand="SELECT [Type] FROM [Clinic]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style27" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style26">
                        <asp:Label ID="Label14" runat="server" Text="Shift :"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:DropDownList ID="DropShif" runat="server">
                            <asp:ListItem>Morning</asp:ListItem>
                            <asp:ListItem>Evening</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style26">
                        &nbsp;</td>
                    <td class="auto-style28">
                        <asp:Button ID="addDoctor" runat="server" Text="Submit" OnClick="addDoctor_Click" CssClass="mainButtons" Height="36px" Width="100px"/>
                    </td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="6">
                        &nbsp;</td>
                </tr>
            </table>
        </div> 
  </section>

  <section>
<div>
           <table class="auto-style17">
                <tr>
                    <td rowspan="12" class="auto-style23">&nbsp;</td>
                    <td class="auto-style30" colspan="6">
                        <asp:Label ID="Label15" runat="server" Font-Size="XX-Large" Text="Clinics"></asp:Label>
                    </td>
                    <td rowspan="12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18" colspan="6">
                        <div class="auto-style30">
                        <asp:GridView ID="GridView3" runat="server"  HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="ClinicCode" DataSourceID="SqlDataSource4" Width="1276px" ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="ClinicCode" HeaderText="ClinicCode" ReadOnly="True" SortExpression="ClinicCode" />
                                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem%>" SelectCommand="SELECT * FROM [Clinic]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31" colspan="6">
                        <asp:Label ID="Label16" runat="server" Text="New Clinic" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="Label17" runat="server" Text=" "></asp:Label>
                    </td>
                    <td class="auto-style34">
                        </td>
                    <td class="auto-style35">
                        <asp:Label ID="Label18" runat="server" Text="Clinic Code :"></asp:Label>
                    </td>
                    <td class="auto-style34">
                        <asp:TextBox ID="labelIDC" runat="server" Enabled="False" ReadOnly="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style34">
                        </td>
                    <td class="auto-style34">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        </td>
                    <td class="auto-style32">
                        </td>
                    <td class="auto-style33">
                        <asp:Label ID="Label19" runat="server" Text="Type :"></asp:Label>
                    </td>
                    <td class="auto-style32">
                        <asp:TextBox ID="labelType" runat="server"  CausesValidation="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style32" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="valc" runat="server" ErrorMessage="Type is required" ControlToValidate="labelType" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">
                        </td>
                    <td class="auto-style36">
                        </td>
                    <td class="auto-style37">
                        <asp:Label ID="Label20" runat="server" Text="Price per visit :"></asp:Label>
                    </td>
                    <td class="auto-style36">
                        <asp:TextBox ID="labelPrice" runat="server" CausesValidation="True" CssClass="mainTextBoxes"></asp:TextBox>
                    </td>
                    <td class="auto-style36" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="valc" runat="server" ErrorMessage="Price is required" ControlToValidate="labelPrice" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="addClinic" runat="server" Text="Submit" CssClass="mainButtons" OnClick="addClinic_Click" Height="36px" Width="100px" />
                    </td>
                    <td class="auto-style27" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style27" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20" colspan="6">
                        &nbsp;</td>
                </tr>
            </table>
        </div>  

  </section>

  <section>
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
                        <div class="auto-style38">
                        <asp:GridView ID="GridView4" runat="server"  HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource5" Width="1276px" ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:myClinicSystem%>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="vald" runat="server" ErrorMessage="Name is required" ControlToValidate="labelNameEmp" ForeColor="Red"></asp:RequiredFieldValidator>
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

  </section>

    s</div>    
            <script>
                
                //$(document).ready(function () {

                //    $("li").click(function () {
                //        //var myid = $(this).attr("id");
                //        if (this.id == 'a') {
                //            ValidatorEnable(valb, false);
                //            ValidatorEnable(valc, false);
                //            ValidatorEnable(vald, false);
                //        } else if (this.id == 'b') {
                //            ValidatorEnable(valb, true);
                //            ValidatorEnable(valc, false);
                //            ValidatorEnable(vald, false);
                //        } else if (this.id == 'c') {
                //            ValidatorEnable(valb, false);
                //            ValidatorEnable(valc, true);
                //            ValidatorEnable(vald, false);
                //        } else if (this.id == 'd') {
                //            ValidatorEnable(valb, false);
                //            ValidatorEnable(valc, false);
                //            ValidatorEnable(vald, true);
                //        }
                //    });

                //});
                    (function ($) {
                        $('nav li').click(function (e) {
                            $(this).addClass('active').siblings('li').removeClass('active');
                            $('section:nth-of-type(' + $(this).data('rel') + ')').stop().fadeIn(400, 'linear').siblings('section').stop().fadeOut(400, 'linear');
                        });
                    })(jQuery);
            </script>


    </form>
</body>
</html>
