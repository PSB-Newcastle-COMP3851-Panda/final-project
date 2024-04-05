<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ZuoPinDetail.aspx.cs" Inherits="ZuoPinDetail" %>

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
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <!--jquery库-->
    <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
    <!--产品展示最终页放大效果-->
    <!--banner_02 start-->
    <link rel="stylesheet" href="css/swiper-bundle.min.css" />
    <!-- Demo styles -->
    <style>
        .swiper {
            width: 100%;
            height: 100%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .swiper-slide img {
                display: block;
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
    </style>
    <!--滚动、切换插件-->
    <!--banner-->
    <!--banner--结束>
    <!--自定义部分-->
    <!--<meta http-equiv="imagetoolbar" content="no">-->
    <%--默认--%>
    <script type="text/javascript">
        function doZoom(size) { document.getElementById('lblContent').style.fontSize = size + 'px'; }
    </script>
    <link href="css/update.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <ucHeadControl:HeadControl ID="HeadControl" runat="server" />
    <div class="connn">
        <div class="wapper">
            <%=strcontent %>
        </div>
    </div>
    <div class="commentAll">
        <!--评论区域 begin-->
        <div class="reviewArea clearfix">
            <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)" id="neirong"></textarea>
            <a href="javascript:pinglun()" class="plBtn">Comment</a>
        </div>
        <!--评论区域 end-->
        <!--回复区域 begin-->
        <div class="comment-show">

             <%for (int i = 0; i < intPro; i++)
                                    {
                                        string _username = dtPro.Rows[i]["username"].ToString();
                                        string _content = dtPro.Rows[i]["content"].ToString();
                                        string _putdate = dtPro.Rows[i]["putdate"].ToString();


                                     
                                %>
            <div class="comment-show-con clearfix">
                <div class="comment-show-con-img pull-left">
                    <img src="<%=showuser(_username,"path") %>" alt="<%=_username %>">
                </div>
                <div class="comment-show-con-list pull-left clearfix">
                    <div class="pl-text clearfix">
                        <a href="javascript:;" class="comment-size-name"><%=_username %> : </a>
                        <span class="my-pl-con">&nbsp;<%=_content %></span>
                    </div>
                    <div class="date-dz">
                        <span class="date-dz-left pull-left comment-time"><%=_putdate %></span>
                        <%--<div class="date-dz-right pull-right comment-pl-block">
                            <a href="javascript:;" class="removeBlock">删除</a>
                            <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                            <span class="pull-left date-dz-line">|</span>
                            <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                        </div>--%>
                    </div>
                    <div class="hf-list-con"></div>
                </div>


            </div>

           <%} %>
        </div>
        <!--回复区域 end-->

        <script>
            function pinglun() {
                var neirong = $("#neirong").val();
                if (neirong == "") { alert("Please enter a comment！"); document.getElementById("neirong").focus(); return false; }

                $.ajax({
                    type: "post",
                    async: false,  // 设置同步方式  ********
                    url: "Check/Checkpinglun.aspx",
                    data:
                    {
                        "zpid": "<%=intID%>",
                        "neirong": escape(neirong)
                    },


                    success: function (msg) {
                        if (msg == "success") {
                            alert("Congratulations, the comment submission was successful!");
                            window.location.reload();
                        }
                        else if (msg == "nolog") {
                            window.location.href = "login.aspx";
                        }
                        else {
                            alert("Comment failed due to containing illegal characters!");
                        }
                    }
                });
                //提交信息结束

            }

        </script>


    </div>
    <ucFootControl:FootControl ID="FootControl" runat="server" />
    <script src="js/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
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
</body>
</html>

