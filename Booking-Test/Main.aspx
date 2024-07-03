<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoCAD Course</title>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: white; /* Purple background color */
        }
        .image-container {
            position: relative;
            text-align: center; /* Center contents horizontally */
            max-width: 100%;
            max-height: 100vh; /* Adjusted to 95% of the viewport height */
            overflow: hidden; /* Hide overflow to prevent scrolling */
        }
        .custom-button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            position: absolute;
            top: -2147483648%; /* Adjust top position */
            left: 50%; /* Adjust left position */
            transform: translate(-50%, -50%); /* Center the button based on its own dimensions */
            /* Remove button border */
            cursor: pointer; /* Cursor style */
        }
        .responsive-image {
            max-width: 100%;
            max-height: 100%;
            height: auto;
            width: auto; /* Ensure image maintains aspect ratio */
            display: block;
            margin: 0 auto; /* Center image horizontally */
            border: 5px solid #ffffff; /* Border style and color */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="image-container">
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="image-container" ImageUrl="~/IMG-20240628-WA0030.jpg" PostBackUrl="~/Home.aspx" />
        </div>
    </form>
</body>
</html>
