<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ForgetPasswordTest.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
     /* Apply box-sizing to all elements for better responsiveness */
    * {
        box-sizing: border-box;
    }

    /* Dominant color (Dark Purple) */
    #form1 {
        height:60vh;
        background-color: #291F47; /* Dominant Color */
        padding: 30px;
        border-radius: 10px;
        max-width: 450px;
        margin: 0 auto;
        color: #F4F4F9; /* Light Background for contrast */
    }

    /* Secondary color (Purple) */
    .auto-style1, .auto-style2 {
        color: #F4F4F9; /* Light Background for contrast */
        font-family: Arial, sans-serif;
    }

    .auto-style2 {
        padding: 30px 0;
    }

    /* Input fields with white background */
    input[type="text"], input[type="email"], .auto-style1 input {
        background-color: #FFFFFF; /* White background */
        border: 2px solid #7356C7; /* Secondary Color for border */
        padding: 15px;
        border-radius: 5px;
        width: 100%;
        color: #291F47; /* Text color matching dominant color */
    }

    /* Accent color (Light Purple) */
    #Button1 {
        background-color: #7356C7; /* Secondary Color */
        border: none;
        color: #FFFFFF;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
    }

    #Button1:hover {
        background-color: #291F47; /* Darker color on hover */
        color: #F4F4F9; /* Light text on hover */
    }

    /* Responsive design */
    table {
        width: 100%;
        border-spacing: 0;
    }

    @media (max-width: 600px) {
        td.auto-style2 {
            display: block;
            width: 100%;
        }

        td.auto-style2 + td {
            display: block;
            width: 100%;
        }

        #Button1 {
            width: 100%;
        }
    }

    </style>
</head>
<body>
 <form id="form1" runat="server">
    <div style="text-align:center; justify-content:center">
         <h2 style="color: #F2F2F2;">Code By Yaseen Khan</h2>
        <h3 style="color: #F2F2F2;">Forget Password
       </h3> 
        <table class="auto-style1">

             <tr>
                 <td class="auto-style2">Username</td>
                 <td>
                     <asp:TextBox ID="txtusername" runat="server" Width="100%" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Email</td>
                 <td>
                     <asp:TextBox ID="txtemail" runat="server" Width="100%" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
                 </td>
             </tr>
         </table>
     </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</form>
</body>
</html>
