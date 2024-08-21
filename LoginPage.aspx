<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LoginPage.WebForm1" %>

<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="keywords" content="HTML,CSS,XML,JavaScript" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
 
    <link href="File/Scss/Header.css" rel="stylesheet" />
    <link href="File/Scss/footer.css" rel="stylesheet" />
    <link href="File/Scss/body.css" rel="stylesheet" />
    <script>
        function ValidateForm() {
            
            var User = document.getElementById("TxtUserName").value;
            var pass = document.getElementById("TxtPassword").value;

            if (User == "" && pass == "") {
                alert("User Name and password are Naccessory ! Please Enter...")
                return false;
            }
            else if (User == "") {
                alert("User Name are Naccessory ! Please Enter UserName...")
                document.getElementById("TxtUserName").focus();
                return false;

            }
            else if (pass == "") {
                alert("Password are Naccessory ! Please Enter Password...")
                document.getElementById("TxtPassword").focus();
                return false;

            }
            else if (User.length < 4) {
                alert("UserName Invalid !! UserName character upto 4 ")
                document.getElementById("TxtUserName").focus();
                return false;
            }
            else if (pass.length < 6 || pass.length>12) {
                alert("Password Invalid !! Password character upto 6 and less then 12 ")
                document.getElementById("TxtPassword").focus();
                return false;
            }

            return true;

        
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50px;
            left: 27px;
            z-index: 1;
            width: 89px;
            height: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <%-- This header section here --%>
            <h>Stranger Company</h>
            <nav>
            <ul class="nav nav-tabs">
                <il class="nav-item"><a href="#" class="nav-link active">Home</a></il>
                <il class="nav-item"><a href="#" class="nav-link">Portfolio</a></il>
                <il class="nav-item"><a href="#" class="nav-link">Contact
                   
                </a></il>
                <il  class="nav-item"><a href="#" class="nav-link">Blog</a></il>

            </ul>
            </nav>

        </header>

        <div style=" margin-left:132px; margin-right:132px" >
            <h2 style="background-color:lawngreen; text-align:center; padding:10px" >Login form</h2>
            
           
        </div>

        <div class="imgcontainer">
            <img src="File/Imge/signed.jpg" alt="Avatar" class="avatar" />
        </div>

        <div class="container">
            <asp:Label ID="user" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TxtUserName" runat="server" placeholder="Enter Useraname"></asp:TextBox>

            <asp:Label ID="pass" runat="server" Text="Passwoerd"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" placeholder="Enter Password"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Login" type="submit" Font-Size="Large" OnClick="Button1_Click" OnClientClick="return ValidateForm1()" />

            <label>
                <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Large" Text="Remember" />
            </label>
        </div>


        <div class="container" style="background-color:#808080">
            <button type="button" class="btn btn-primary">Cancel</button>
            <span class="pass">Forget<a href="3">Password</a></span>
            <button class="btn btn-dark">bootstrapbtn</button>

        </div>
        <br />

        <footer id="foter">
            <div class="wrapper">
                <div class="footer-info">
                    <p>Copy @2024 Stranger Company in All rights reserved</p>
                    <p><a href="3">Term of service</a>|| <a href="ds">Privacy</a></p>

                </div>
                
                <div class="footer-link">
                    <ul>
                        <il>Home</il>
                        <li><a href="r">About us</a></li>
                        <li><a href="r">Meet the team</a></li>
                         <li><a href="r">what we do</a></li>
                         <li><a href="r">Career</a></li>
                    </ul>

                    <ul>
                         <il>Company</il>
                         <li><a href="r">About us</a></li>
                         <li><a href="r">Meet the team</a></li>
                         <li><a href="r">what we do</a></li>
                         <li><a href="r">Career</a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
