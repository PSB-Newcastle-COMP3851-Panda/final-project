<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="_Default" %>

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
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/user.css" rel="stylesheet" type="text/css" />
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
    <script src="js/ajaxfileupload.js"></script>
</head>
<body>
    <ucHeadControl:HeadControl ID="HeadControl" runat="server" />
    <div class="liang_banner_container">
        <div class="liang_js_user_banner liang_banner" style="background-image: url(<%=mc.SelectPicByClassID(8) %>)">
            <div class="liang_banner_content">
                <span class="liang_avatar_container">
                    <img id="liang_user_avatar" src="<%=strtouxiang %>">
                    <div style="display: none">
                        <input id="shipin" name="shipin" type="file">
                        <input value="" type="hidden" id="shipin1" />
                    </div>
                </span>
            </div>
        </div>
    </div>

    <script>
        $("#liang_user_avatar").click(function () {
            $("#shipin").click()[0];
        })


        $(function () {
            //选择文件
            $(document).off('change', '#shipin').on('change', '#shipin', function () {
                var filePath = $(this).val();
                //设置上传文件类型
                if (filePath.indexOf("png") != -1 || filePath.indexOf("jpg") != -1 || filePath.indexOf("gif") != -1) {
                    var file = $('#shipin').get(0).files[0];
                    var fileSize = file.size;
                    //检查文件大小 
                    if (fileSize > 1 * 1024 * 1024) {
                        alert("The uploaded file cannot exceed 1M!");
                        return false;
                    }

                    //上传文件
                    $.ajaxFileUpload({
                        url: 'FileHandler.ashx',//处理程序路径
                        secureuri: false,
                        fileElementId: 'shipin',
                        dataType: 'json',
                        success: function (data, status) {
                            //获取上传文件路径
                            $("#shipin1").val(data.filenewname);
                            var q = "/upload/" + $("#shipin1").val();
                            //提交信息开始
                            $.ajax({
                                type: "get",
                                url: "Check/updatepath.aspx?q=" + escape(q),
                                success: function (msg) {
                                    if (msg == "success") {
                                        alert("Congratulations, the modification was successful!");
                                        window.location.reload();
                                    }
                                    else if (msg == "no") {
                                        window.location.href = "login.aspx";
                                    }
                                    else {
                                        alert("Contains illegal characters, modification failed!");
                                    }
                                }
                            });
                            //提交信息结束



                        },
                        error: function (data, status, e) {
                            alert(e);
                        }
                    });


                } else {
                    alert("请选择正确的文件格式！");
                    //清空上传路径
                    return false;
                }
            });
        })
    </script>


    <div class="liang_info_container userwenzi">
        <div class="top_button">
        </div>
        <p class="nickname"><%=strUserName %></p>
        <%--      <p class="slogan">这个人很懒，什么都没留下 </p>--%>
        <div class="liang_operate_container button">
            <%--   <a href="personalCenter.aspx" class="layui-btn layui-btn-primary">编辑资料</a>--%>
            <a href="public.aspx" class="layui-btn layui-btn-danger">Publishing works</a>
        </div>
        <a name="tab"></a>
        <div class="index-tab">
            <ul class="tab-list liang_f16">
                <li class="select">
                    <a href="pinglun.aspx">Works (0)</a>
                </li>
                <li>
                    <a href="">Fans (0)</a>
                </li>
                <li>
                    <a href="">Follow with interest (0)</a>
                </li>
                <li>
                    <a href="personalCenter.aspx">Information</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="liang_data_container">
        <div class="liang_wrap">
            <div class="liang_data_wrap">
                <div class="liang_no_data">
                    <p>You don't have any works yet, you can</p>
                    <p><a href="public.aspx" class="layui-btn layui-btn-danger layui-btn-sm">Publishing works</a></p>
                </div>
            </div>
        </div>
    </div>
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
            var oAllVal = 'Reply@' + oHfName;
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
                            oAt = 'Reply<a href="#" class="atName">@' + data.atName + '</a> : ' + data.hfContent;
                        }
                        oHf = data.hfName;
                    });

                    var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">My name : </a><span class="my-pl-con">' + oAt + '</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now + '</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">delete</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">Reply</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>like (<i class="z-num">666</i>)</a> </div> </div></div>';
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
