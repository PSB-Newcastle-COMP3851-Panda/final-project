<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regis.aspx.cs" Inherits="regis" %>

<%@ Register Src="~/UserControls/Head.ascx" TagName="HeadControl" TagPrefix="ucHeadControl" %>
<%@ Register Src="~/UserControls/BannerControl.ascx" TagName="BannerControl" TagPrefix="ucBannerControl" %>
<%@ Register Src="~/UserControls/Link.ascx" TagName="LinkControl" TagPrefix="ucLinkControl" %>
<%@ Register Src="~/UserControls/Foot.ascx" TagName="FootControl" TagPrefix="ucFootControl" %>
<%@ Register Src="~/UserControls/Category.ascx" TagName="CategoryControl" TagPrefix="ucCategoryControl" %>
<%@ Register Src="~/UserControls/Left.ascx" TagName="LeftControl" TagPrefix="ucLeftControl" %>
<%@ Register Src="~/UserControls/Contact.ascx" TagName="ContactControl" TagPrefix="ucContactControl" %>
<!doctype html>
<html>

<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <meta name="description" id="description" content="" runat="server" />
    <meta name="keywords" id="keywords" content="" runat="server" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/style1.css">
    <script src="js/jquery-1-7-2.js"></script>
</head>

<body>
    <div class="login-box">
        <h2>Welcome back</h2>
        <p>Enter your details</p>
        <form>
            <div class="form-group">
                <label for="email">Email</label>
                <i class="fa-solid fa-user"></i>
                <input type="email" id="email" placeholder="email" required>
            </div>
            <div class="form-group">
                <label for="Password">Password</label>
                <i class="fa-solid fa-lock"></i>
                <input type="password" id="password1" placeholder="Your Password" required>
            </div>
            <div class="form-group">
                <label for="Password">Password</label>
                <i class="fa-solid fa-lock"></i>
                <input type="password" id="password2" placeholder="Confirm Password" required>
            </div>
        </form>
        <div>
            <a href="javascript:;" class="btn" onclick="checkNull()">Regis</a>
        </div>

        <script>
            //②按下回车键出发某个按钮开始
            document.onkeydown = function (event) {
                e = event ? event : (window.event ? window.event : null);
                if (e.keyCode == 13) {
                    checkNull();
                    return false;
                }
            }

            //登录
            function checkNull() {
                var email = $("#email").val();
                var password1 = $("#password1").val();
                var password2 = $("#password2").val();

                if (email == "" || email == null) {
                    alert("Email！");
                    $("#email").focus();
                    return false;
                }
                else if (!/^([A-Za-z0-9_\-\.])+\@(uon.edu.au)$/.test(email)) { alert("Email address is illegal! Email format: 123@uon.edu.au"); document.getElementById("email").focus(); return false; }


                if (password1 == "" || password1 == null) {
                    alert("Your password！");
                    $("#password1").focus();
                    return false;
                }

                if (password2 == "" || password2 == null) {
                    alert("Your password！");
                    $("#password2").focus();
                    return false;
                }

                //判断密码是否一致
                if (password1 != password2) {
                    alert("Two passwords do not match");
                    $("#password1").focus();
                    return false;
                }
                //判断密码长度
                if (password1.length < 6) {
                    alert("The password length cannot be less than 6 digits");
                    $("#password1").focus();
                    return false;
                }

                var match;
                //登录
                $.ajax({
                    type: "get",
                    async: false, // 设置同步方式  ********
                    url: "Check/CheckUserReg.aspx?email=" + escape(email) + "&password=" + escape(password1),
                    datatype: "json",
                    success: function (msg) {
                        match = msg;
                    }
                });
                if (match == "ok") {
                    alert("Congratulations on successfully registering！")
                    window.location.href = "Login.aspx";
                } else {
                    alert("login has failed！" + match)
                }
            }
        </script>





        <div>
            <a href="login.aspx" class="forgot">Existing account? Go log in
            </a>
        </div>






    </div>
</body>

</html>
