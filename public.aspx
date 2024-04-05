<%@ Page Language="C#" AutoEventWireup="true" CodeFile="public.aspx.cs" Inherits="Content" %>

<%@ Register Src="~/UserControls/Head.ascx" TagName="HeadControl" TagPrefix="ucHeadControl" %>
<%@ Register Src="~/UserControls/BannerControl.ascx" TagName="BannerControl" TagPrefix="ucBannerControl" %>
<%@ Register Src="~/UserControls/Link.ascx" TagName="LinkControl" TagPrefix="ucLinkControl" %>
<%@ Register Src="~/UserControls/Foot.ascx" TagName="FootControl" TagPrefix="ucFootControl" %>
<%@ Register Src="~/UserControls/Category.ascx" TagName="CategoryControl" TagPrefix="ucCategoryControl" %>
<%@ Register Src="~/UserControls/Left.ascx" TagName="LeftControl" TagPrefix="ucLeftControl" %>
<%@ Register Src="~/UserControls/Contact.ascx" TagName="ContactControl" TagPrefix="ucContactControl" %>

<%--fastcontrol 0.1--%>
<%@ Register Src="~/UserControls/Top.ascx" TagName="Top" TagPrefix="ucTop" %>
<%@ Register Src="~/UserControls/Start.ascx" TagName="Start" TagPrefix="ucStart" %>
<%@ Register Src="~/UserControls/End.ascx" TagName="End" TagPrefix="ucEnd" %>
<!doctype html>
<html>

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <meta name="description" id="description" content="" runat="server" />
    <meta name="keywords" id="keywords" content="" runat="server" />
    <ucTop:Top ID="Top" runat="server" />
</head>
<style>
    .public {
        width: 1200px;
        margin: 0 auto;
    }

        .public strong {
            font-size: 20px;
            display: block;
            margin-bottom: 20px;
        }

    .to_para p {
        font-size: 15px;
        color: #666;
        margin-bottom: 5px;
    }

    .group {
        display: flex;
        align-items: center;
        justify-content: space-around;
        margin-top: 20px;
        margin-bottom: 20px;
    }

        .group input {
            width: 31%;
            height: 35px;
            padding-left: 15px;
            outline: none;
            border: 1px solid #ccc;
            border-radius: 3px;
            display: block;
        }

    .sub {
        width: 120px;
        height: 40px;
        display: block;
        margin-top: 20px;
        text-align: center;
        color: #fff;
        background-color: #4b2e83;
        font-size: 14px;
        line-height: 40px;
    }

    #mceu_28-body {
        display: none !important;
    }

    #mceu_27 {
        height: 500px;
    }
</style>
<body>
    <form id="form1">
        <ucStart:Start ID="Start" runat="server" />
        <div class="public">
            <strong><%=mc.ShowColumnName(22) %></strong>
            <div class="to_para">
                <%=mc.ShowAbout(22) %>
            </div>
            <div class="group" style=" display:none">
                <input type="text" placeholder="Your Name" id="name">
                <input type="text" placeholder="Your Email" id="email">
                <input type="text" placeholder="Your Speciality" id="speciality">
            </div>
            <script src="https://cdn.bootcss.com/tinymce/4.4.3/tinymce.min.js"></script>
            <script>
                tinymce.init({
                    selector: 'textarea'
                });
            </script>
            <textarea>Easy! You should check out MoxieManager!</textarea>
            <a href="javascript:fabu()" class="sub">release</a>
            <script type="text/javascript">


                function fabu() {


                    //var name = document.getElementById("name").value;
                    //if (name == "") { alert("Your Name！"); document.getElementById("name").focus(); return false; }

                    //var email = document.getElementById("email").value;
                    //if (email == "") { alert("Your Email！"); document.getElementById("email").focus(); return false; }

                    //var speciality = document.getElementById("speciality").value;
                    //if (speciality == "") { alert("Your Speciality！"); document.getElementById("speciality").focus(); return false; }

                    var content = tinyMCE.editors[0].getContent();
                    if (content == "" || content=="<p>Easy! You should check out MoxieManager!</p>") { alert("Easy! You should check out MoxieManager!");return false; }

                    $.ajax({
                        type: "post",
                        async: false,  // 设置同步方式  ********
                        url: "Check/CheckZuoPin.aspx",
                        data:
                        {
                            //"name": name,
                            //"email": email,
                            //"speciality": speciality,
                            "content": escape(content)
                        },


                        success: function (msg) {
                            if (msg == "success") {
                                alert("Congratulations, your work has been successfully submitted!");
                                window.location.href = "pinglun.aspx";
                            }
                             else if(msg == "nolog"){
                                window.location.href = "login.aspx";
                            }
                            else {
                                alert("The submission of the work failed due to containing illegal characters!");
                            }
                        }
                    });
                    //提交信息结束


                }



            </script>


        </div>
        <ucEnd:End ID="End" runat="server" />
    </form>
</body>

</html>
