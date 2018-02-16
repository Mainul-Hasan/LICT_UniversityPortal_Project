<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/admin-login.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <!--
        you can substitue the span of reauth email for a input with the email and
        include the remember me checkbox
        -->
        <div class="container">
            <div class="card card-container">
                <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
                <p id="notification" class="profile-name-card" runat="server"></p>
                <div class="form-signin">
                    <span id="reauth-email" class="reauth-email"></span>
                    <%--<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>--%>
                    <asp:TextBox ID="txtInputEmail" class="form-control" placeholder="Email address" type="email" required="required" autofocus="autofocus" runat="server"></asp:TextBox>
                    <%--<input type="password" id="inputPassword" class="form-control" placeholder="Password" required>--%>
                    <asp:TextBox type="password" id="txtInputPassword" class="form-control" placeholder="Password" required="required" runat="server"></asp:TextBox>
                    <div id="remember" class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me">
                            Remember me
                        </label>
                    </div>               
                    <%--<button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>--%>
                    <asp:Button ID="btnSubmit" class="btn btn-lg btn-primary btn-block btn-signin" type="submit" runat="server" Text="Log in" OnClick="btnSubmit_Click" />
                </div>
                <!-- /form-signin -->
                <a href="#" class="forgot-password">Forgot password?
                </a>
            </div>
            <!-- /card-container -->
        </div>
        <!-- /container -->
        <div id="particles-js"></div>
    </form>
    

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <script type="text/javascript" src="js/admin-login.js"></script>
</body>
</html>
