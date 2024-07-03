<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Booking_Test.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Booking Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/> 
    <style>
        body {
            background-color: #f5f5f5;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 50px auto;
        }
        .form-title {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-title h1 {
            font-size: 24px;
            color: #333333;
        }
        .form-title p {
            color: #666666;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
            color: #333333;
        }
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            margin-top: 5px;
        }
        .form-group input:focus,
        .form-group select:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        .form-group .error {
            color: red;
            font-size: 12px;
        }
        .btn-primary {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: #ffffff;
            font-weight: bold;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-secondary {
            width: 100%;
            padding: 10px;
            background-color: #6c757d;
            border: none;
            border-radius: 4px;
            color: #ffffff;
            font-weight: bold;
            margin-top: 10px;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container">
                <div class="form-title">
                    <h1>Sign Up</h1>
                    <p>&nbsp;</p>
                    <p>
                        <asp:Image ID="Image1" runat="server" Height="305px" ImageUrl="~/icon.png" Width="314px" />
                    </p>
                </div>
                <div class="form-group">
                    <label for="TextBox1">Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your name!" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="TextBox2">Surname</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your surname!" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="TextBox3">Email</label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter a valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="error"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="TextBox4">Contact Number</label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter your proper contact number!" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="Calendar1">Date: Select date for appointment</label>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="259px" Width="100%" BorderWidth="1px" CellPadding="1">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </div>
                <div class="form-group">
                    <label for="DropDownList1">Duration</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Height="45px">
                        <asp:ListItem>Select an option</asp:ListItem>
                        <asp:ListItem>Full-time</asp:ListItem>
                        <asp:ListItem>Part-time</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" InitialValue="Select an option" ErrorMessage="Please select a duration!" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="TextBoxArea">Area of Residence</label>
                    <asp:TextBox ID="TextBoxArea" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxArea" ErrorMessage="Please enter your area of residence!" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="TextBoxOccupation">Occupation</label>
                    <asp:TextBox ID="TextBoxOccupation" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxOccupation" ErrorMessage="Please enter your occupation!" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="DropDownListEmployment">Employment</label>
                    <asp:DropDownList ID="DropDownListEmployment" runat="server" CssClass="form-control" Height="45px">
                        <asp:ListItem>Select an option</asp:ListItem>
                        <asp:ListItem>Full-time</asp:ListItem>
                        <asp:ListItem>Self Employed</asp:ListItem>
                        <asp:ListItem>Unemployed</asp:ListItem>
                        <asp:ListItem>Scholar</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListEmployment" InitialValue="Select an option" ErrorMessage="Please select your employment status!" CssClass="error"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book" CssClass="btn btn-primary" />
                </div>
                <div class="form-group">
                    <asp:Label ID="error" runat="server" CssClass="error"></asp:Label>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
