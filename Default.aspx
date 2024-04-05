<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                object-fit: contain;
            }
    </style>
    <!--滚动、切换插件-->
    <!--banner-->
    <!--banner--结束>
    <!--自定义部分-->
    <!--<meta http-equiv="imagetoolbar" content="no">-->
</head>
<body>
    <ucHeadControl:HeadControl ID="HeadControl" runat="server" />
    <div class="banner">
     
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <%showNews(6, 10); %>
                <%for (int j = 0; j < intNews; j++)
                    {
                        string path = dtblNews.Rows[j]["path"].ToString();
                        string title = dtblNews.Rows[j]["title"].ToString();
                        string id = dtblNews.Rows[j]["id"].ToString();
                        string putdate = dtblNews.Rows[j]["putdate"].ToString();
                        string url = dtblNews.Rows[j]["url"].ToString();
                        string keycontent = dtblNews.Rows[j]["keycontent"].ToString();
                        string content = dtblNews.Rows[j]["content"].ToString();
                        string keywords = dtblNews.Rows[j]["keywords"].ToString();
                        int classid = int.Parse(dtblNews.Rows[j]["classid"].ToString());
                        string columntype = mc.ShowColumnKeyById(classid, "ColumnType");
                        if (url == "")
                        {
                            if (columntype == "新闻列表") { url = "NewsDetail.aspx?ID=" + id; }
                            else if (columntype == "图片列表") { url = "PicDetail.aspx?ID=" + id; }
                            else { url = "DownloadDetail.aspx?ID=" + id; }
                        }

                %>
                <div class="swiper-slide">
                    <%=content%>
                </div>
                <%} %>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>

    </div>
    <div class="con1">
        <div class="wapper">
            <ul>
                <%showNews(7, 3); %>
                <%for (int j = 0; j < intNews; j++)
                    {
                        string path = dtblNews.Rows[j]["path"].ToString();
                        string title = dtblNews.Rows[j]["title"].ToString();
                        string id = dtblNews.Rows[j]["id"].ToString();
                        string putdate = dtblNews.Rows[j]["putdate"].ToString();
                        string url = dtblNews.Rows[j]["url"].ToString();
                        string keycontent = dtblNews.Rows[j]["keycontent"].ToString();
                        string keywords = dtblNews.Rows[j]["keywords"].ToString();
                        int classid = int.Parse(dtblNews.Rows[j]["classid"].ToString());
                        string columntype = mc.ShowColumnKeyById(classid, "ColumnType");
                        if (url == "")
                        {
                            if (columntype == "新闻列表") { url = "NewsDetail.aspx?ID=" + id; }
                            else if (columntype == "图片列表") { url = "PicDetail.aspx?ID=" + id; }
                            else { url = "DownloadDetail.aspx?ID=" + id; }
                        }
                %>
                <li>
                    <a href="<%=url %>">
                        <div class="tx">
                            <img src="<%=path %>">
                        </div>
                        <p><%=title %></p>
                    </a>
                </li>
                <%} %>

                <div class="clear"></div>
            </ul>
        </div>
    </div>
    <style>
    	.flex{    display: flex;
    width: 100%;}
    </style>
    <section class="in-the-news wapper">
        <div class="in-the-news__title">
            <%=mc.ShowColumnName(8) %>
        </div>
        <div class="swiper mySwiper1 in-the-news__body">
        	<div class="swiper-wrapper">
              <%showNews(8, 6); %>
                <%for (int j = 0; j < intNews; j++)
                    {
                        string path = dtblNews.Rows[j]["path"].ToString();
                        string title = dtblNews.Rows[j]["title"].ToString();
                        string id = dtblNews.Rows[j]["id"].ToString();
                        string putdate = dtblNews.Rows[j]["putdate"].ToString();
                        string url = dtblNews.Rows[j]["url"].ToString();
                        string keycontent = dtblNews.Rows[j]["keycontent"].ToString();
                        string keywords = dtblNews.Rows[j]["keywords"].ToString();
                        int classid = int.Parse(dtblNews.Rows[j]["classid"].ToString());
                        string columntype = mc.ShowColumnKeyById(classid, "ColumnType");
                        if (url == "")
                        {
                            if (columntype == "新闻列表") { url = "NewsDetail.aspx?ID=" + id; }
                            else if (columntype == "图片列表") { url = "PicDetail.aspx?ID=" + id; }
                            else { url = "DownloadDetail.aspx?ID=" + id; }
                        }



                %>
                
                <div class="swiper-slide">
                	<div class="in-the-news__image">
                <img src="<%=path %>"  alt="<%=title %>">
            </div>
            <div class="quote-promo quote-promo--small">
                <div class="quote-promo__quote">
                    <span class="quote-promo__quote-marks">
                        <svg data-name="Layer 1"
                            xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                            viewBox="0 0 75 53.57" role="img" focusable="false">
                            <defs>
                                <style>
                                    .cls-1 {
                                        fill-rule: evenodd;
                                        fill: url(#linear-gradient);
                                    }
                                </style>
                                <linearGradient id="linear-gradient" x1="9.38" y1="1.34" x2="68.3" y2="60.27"
                                    gradientUnits="userSpaceOnUse">
                                    <stop offset="0" stop-color="#ffc600"></stop>
                                    <stop offset="1" stop-color="#ff8f1c"></stop>
                                </linearGradient>
                            </defs>
                            <title>Quote-gradient</title>
                            <path class="cls-1"
                                d="M26.79,0H10.71L0,21.43V53.57H32.14V21.43H16.07ZM69.64,0H53.57L42.86,21.43V53.57H75V21.43H58.93Z">
                            </path>
                        </svg>
                    </span>
                    <%=keycontent %>
                </div>
                <div class="quote-promo__attribution">
                    <div class="quote-promo__name">
                      <%=keywords %>
                    </div>
                    <div class="quote-promo__title">
                    </div>
                </div>
            </div>
            <div class="in-the-news__link">
                <a href="<%=url %>">
                    <%=title %>
                </a>
            </div>
                </div>
            
            
            
              <%} %>
              <div class="swiper-pagination swiper-pagination1"></div>
              </div>
        </div>
    </section>
    <ucFootControl:FootControl ID="FootControl" runat="server" />
    <script type="text/javascript">
        $(function () {
            $('.content').flexText();
        });
    </script>
    <!--textarea限制字数-->
    <script type="text/javascript">
        function keyUP(t) {
            var len = $(t).val().length;
            if (len > 139) {
                $(t).val($(t).val().substring(0, 140));
            }
        }
    </script>
    <!--点击评论创建评论条-->
    <script type="text/javascript">
        $('.commentAll').on('click', '.plBtn', function () {
            var myDate = new Date();
            //获取当前年
            var year = myDate.getFullYear();
            //获取当前月
            var month = myDate.getMonth() + 1;
            //获取当前日
            var date = myDate.getDate();
            var h = myDate.getHours();       //获取当前小时数(0-23)
            var m = myDate.getMinutes();     //获取当前分钟数(0-59)
            if (m < 10) m = '0' + m;
            var s = myDate.getSeconds();
            if (s < 10) s = '0' + s;
            var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
            //获取输入内容
            var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
            console.log(oSize);
            //动态创建评论模块
            oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="images/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">David Beckham : </a> <span class="my-pl-con">&nbsp;' + oSize + '</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now + '</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
            if (oSize.replace(/(^\s*)|(\s*$)/g, "") != '') {
                $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
                $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value', '').siblings('pre').find('span').text('');
            }
        });
    </script>
    <!--点击回复动态创建回复块-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.pl-hf', function () {
            //获取回复人的名字
            var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
            //回复@
            var fhN = '回复@' + fhName;
            //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
            var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
            //显示回复
            if ($(this).is('.hf-con-block')) {
                $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
                $(this).removeClass('hf-con-block');
                $('.content').flexText();
                $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding', '6px 15px');
                //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
                //input框自动聚焦
                $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
            } else {
                $(this).addClass('hf-con-block');
                $(this).parents('.date-dz-right').siblings('.hf-con').remove();
            }
        });
    </script>
    <!--评论回复块创建-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.hf-pl', function () {
            var oThis = $(this);
            var myDate = new Date();
            //获取当前年
            var year = myDate.getFullYear();
            //获取当前月
            var month = myDate.getMonth() + 1;
            //获取当前日
            var date = myDate.getDate();
            var h = myDate.getHours();       //获取当前小时数(0-23)
            var m = myDate.getMinutes();     //获取当前分钟数(0-59)
            if (m < 10) m = '0' + m;
            var s = myDate.getSeconds();
            if (s < 10) s = '0' + s;
            var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
            //获取输入内容
            var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
            console.log(oHfVal)
            var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
            var oAllVal = '回复@' + oHfName;
            if (oHfVal.replace(/^ +| +$/g, '') == '' || oHfVal == oAllVal) {

            } else {
                $.getJSON("json/pl.json", function (data) {
                    var oAt = '';
                    var oHf = '';
                    $.each(data, function (n, v) {
                        delete v.hfContent;
                        delete v.atName;
                        var arr;
                        var ohfNameArr;
                        if (oHfVal.indexOf("@") == -1) {
                            data['atName'] = '';
                            data['hfContent'] = oHfVal;
                        } else {
                            arr = oHfVal.split(':');
                            ohfNameArr = arr[0].split('@');
                            data['hfContent'] = arr[1];
                            data['atName'] = ohfNameArr[1];
                        }

                        if (data.atName == '') {
                            oAt = data.hfContent;
                        } else {
                            oAt = '回复<a href="#" class="atName">@' + data.atName + '</a> : ' + data.hfContent;
                        }
                        oHf = data.hfName;
                    });

                    var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">我的名字 : </a><span class="my-pl-con">' + oAt + '</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now + '</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a> </div> </div></div>';
                    oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display', 'block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
                });
            }
        });
    </script>
    <!--删除评论块-->
    <script type="text/javascript">
        $('.commentAll').on('click', '.removeBlock', function () {
            var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
            if (oT.siblings('.all-pl-con').length >= 1) {
                oT.remove();
            } else {
                $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display', 'none')
                oT.remove();
            }
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

        })
    </script>
    <!--点赞-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.date-dz-z', function () {
            var zNum = $(this).find('.z-num').html();
            if ($(this).is('.date-dz-z-click')) {
                zNum--;
                $(this).removeClass('date-dz-z-click red');
                $(this).find('.z-num').html(zNum);
                $(this).find('.date-dz-z-click-red').removeClass('red');
            } else {
                zNum++;
                $(this).addClass('date-dz-z-click');
                $(this).find('.z-num').html(zNum);
                $(this).find('.date-dz-z-click-red').addClass('red');
            }
        })
    </script>
    <script src="js/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 30,
            centeredSlides: true,
           
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
    var swiper = new Swiper(".mySwiper1", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: ".swiper-pagination1",
        clickable: true,
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
