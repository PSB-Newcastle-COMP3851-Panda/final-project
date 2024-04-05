<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pinglun.aspx.cs" Inherits="News" %>

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
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="js/jquery-1-7-2.js"></script>
    <link href="css/css.css" rel="stylesheet">
    <link href="css/css1.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/dripicons.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/style2.css">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/responsive.css">
    <%--默认--%>
    <link href="css/page.css" rel="stylesheet" type="text/css" />
    <link href="css/update.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <main>
        <ucHeadControl:HeadControl ID="HeadControl" runat="server" />
        <div class="event fix pt-120 pb-120">
       <%--     <div class="section-t team-t paroller">
                <h2>作品</h2>
            </div>--%>
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8">
                    <div class="section-title text-center mb-80">
                  <%--      <span class="wow fadeInUp animated">作品</span>--%>
                        <h2 class="wow fadeInUp animated">Community</h2>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 ">
                        <%--<nav class="">
                            <div class="nav nav-tabs nav-fill">


                                <a class="nav-item nav-link active show">
                                    <img src="images/t-icon.png" class="drk-icon">
                                    <img src="images/t-w-icon1.png" class="lgt-icon">
                                    <div class="nav-content">
                                        <strong>First Day</strong>
                                        <span>10th January 2019</span>
                                    </div>
                                </a>


                                <a class="nav-item nav-link  ">
                                    <img src="images/t-icon.png" class="drk-icon">
                                    <img src="images/t-w-icon1.png" class="lgt-icon">
                                    <div class="nav-content">
                                        <strong>First Day</strong>
                                        <span>10th January 2019</span>
                                    </div>
                                </a>
                                <a class="nav-item nav-link  ">
                                    <img src="images/t-icon.png" class="drk-icon">
                                    <img src="images/t-w-icon1.png" class="lgt-icon">
                                    <div class="nav-content">
                                        <strong>First Day</strong>
                                        <span>10th January 2019</span>
                                    </div>
                                </a>
                                <a class="nav-item nav-link  ">
                                    <img src="images/t-icon.png" class="drk-icon">
                                    <img src="images/t-w-icon1.png" class="lgt-icon">
                                    <div class="nav-content">
                                        <strong>First Day</strong>
                                        <span>10th January 2019</span>
                                    </div>
                                </a>
                            </div>
                        </nav>--%>
                        <div class="tab-content py-3 px-3 px-sm-0 " id="nav-tabContent">


                            <div class="tab-pane fade active show">

                                <%for (int i = 0; i < intPro; i++)
                                    {
                                        string _username = dtPro.Rows[i]["username"].ToString();
                                        string _path = dtPro.Rows[i]["path"].ToString();
                                        string _userid = dtPro.Rows[i]["userid"].ToString();
                                        if (string.IsNullOrEmpty(_path)||_path=="/upload/")
                                        {
                                            _path = "/images/01.jpg";
                                        }
                                        showNews(_username);
                                %>
                                <%if (intNews > 0)
                                        { %>
                                <div class="row mb-30">
                                    <div class="col-lg-2">
                                        <div class="user">
                                            <div class="title">
                                                <img src="<%=_path %>"
                                                    alt="<%=_username %>">
                                                <h5><%=_username %></h5>
                                                <%--  <p>UX Deisgn</p>--%>
                                            </div>
                                            <ul>
                                                <li onclick="javascript:guanzhu('<%=_userid %>')">Follow with interest</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-10">
                                        <%for (int j = 0; j < intNews; j++)
                                        {

                                            string content = dtblNews.Rows[j]["content"].ToString();
                                            string name = dtblNews.Rows[j]["name"].ToString();
                                            string email = dtblNews.Rows[j]["email"].ToString();
                                            string putdate = dtblNews.Rows[j]["putdate"].ToString();
                                            string id = dtblNews.Rows[j]["id"].ToString();






                                        %>

                                        <div class="event-list-content fix">
                                         <%--   <ul class="">
                                                <li>
                                                    <i class="fas fa-map-marker-alt"></i><%=name %>
                                                </li>
                                                <li><i class="far fa-clock"></i><%=email %></li>
                                            </ul>--%>
                                            <h2><%=putdate %></h2>
                                            <p>
                                                <%=content %>
                                            </p>
                                            <a href="javascript:Dianzan('<%=id %>')" class="btn mt-20 mr-10">
                                                <%--<i class="far fa-ticket-alt"></i>--%>Like
                                            </a><a href="ZuoPinDetail.aspx?id=<%=id %>"
                                                class="btn mt-20">Read More</a>
                                            <div class="crical"><%--<i class="fal fa-video"></i>--%></div>
                                        </div>


                                        <%} %>
                                    </div>
                                </div>
                                <%} %>

                                <%} %>
                            </div>



                            <script>
                                function guanzhu(userid) {
                                    //提交信息开始
                                    $.ajax({
                                        type: "get",
                                        url: "Check/checkguanzhu.aspx?userid=" + userid,
                                        success: function (msg) {
                                            if (msg == "success") {
                                                alert("Congratulations, following successfully!");
                                                window.location.reload();
                                            }
                                            else if (msg == "nolog") {
                                                window.location.href = "login.aspx";
                                            }
                                            else if (msg == "cunzai") {
                                                alert("Followed！");
                                            }
                                            else {
                                                alert("Follow failed！");
                                            }
                                        }
                                    });
                                    //提交信息结束

                                }


                                function Dianzan(zpid) {
                                    //提交信息开始
                                    $.ajax({
                                        type: "get",
                                        url: "Check/checkdianzan.aspx?zpid=" + zpid,
                                        success: function (msg) {
                                            if (msg == "success") {
                                                alert("Congratulations, like successfully!");
                                                window.location.reload();
                                            }
                                            else if (msg == "nolog") {
                                                window.location.href = "login.aspx";
                                            }
                                            else if (msg == "cunzai") {
                                                alert("Liked！");
                                            }
                                            else {
                                                alert("Like failed！");
                                            }
                                        }
                                    });
                                    //提交信息结束

                                }

                            </script>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <ucFootControl:FootControl ID="FootControl" runat="server" />
    </main>

    <script>
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
</script>
<script>
    $('.tshow').click(function (e) {
        e.preventDefault();
        var num_01 = $('.tshow').index(this)
        $('.topen').eq(num_01).stop().slideToggle()
        $('.tshow').toggleClass("intro")
    });
</script>

    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/one-page-nav-min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/paroller.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/element-in-view.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <%--    <script src="js/main.js"></script>--%>
    <script src="js/CONSOLE-BAN.Min.js"></script>
</body>
</html>

