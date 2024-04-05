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
    <!--jquery��-->
    <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
    <!--��Ʒչʾ����ҳ�Ŵ�Ч��-->
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
    <!--�������л����-->
    <!--banner-->
    <!--banner--����>
    <!--�Զ��岿��-->
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

    


    
    
    
    <ucFootControl:FootControl ID="FootControl" runat="server" />
    <script type="text/javascript">
        $(function () {
            $('.content').flexText();
        });
    </script>
    <!--textarea��������-->
    <script type="text/javascript">
        function keyUP(t) {
            var len = $(t).val().length;
            if (len > 139) {
                $(t).val($(t).val().substring(0, 140));
            }
        }
    </script>
    <!--������۴���������-->
    <script type="text/javascript">
        $('.commentAll').on('click', '.plBtn', function () {
            var myDate = new Date();
            //��ȡ��ǰ��
            var year = myDate.getFullYear();
            //��ȡ��ǰ��
            var month = myDate.getMonth() + 1;
            //��ȡ��ǰ��
            var date = myDate.getDate();
            var h = myDate.getHours();       //��ȡ��ǰСʱ��(0-23)
            var m = myDate.getMinutes();     //��ȡ��ǰ������(0-59)
            if (m < 10) m = '0' + m;
            var s = myDate.getSeconds();
            if (s < 10) s = '0' + s;
            var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
            //��ȡ��������
            var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
            console.log(oSize);
            //��̬��������ģ��
            oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="images/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">David Beckham : </a> <span class="my-pl-con">&nbsp;' + oSize + '</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">' + now + '</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock">ɾ��</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">�ظ�</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>�� (<i class="z-num">666</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
            if (oSize.replace(/(^\s*)|(\s*$)/g, "") != '') {
                $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
                $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value', '').siblings('pre').find('span').text('');
            }
        });
    </script>
    <!--����ظ���̬�����ظ���-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.pl-hf', function () {
            //��ȡ�ظ��˵�����
            var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
            //�ظ�@
            var fhN = '�ظ�@' + fhName;
            //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
            var fhHtml = '<div class="hf-con pull-left"> <textarea class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">����</a></div>';
            //��ʾ�ظ�
            if ($(this).is('.hf-con-block')) {
                $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
                $(this).removeClass('hf-con-block');
                $('.content').flexText();
                $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding', '6px 15px');
                //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
                //input���Զ��۽�
                $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
            } else {
                $(this).addClass('hf-con-block');
                $(this).parents('.date-dz-right').siblings('.hf-con').remove();
            }
        });
    </script>
    <!--���ۻظ��鴴��-->
    <script type="text/javascript">
        $('.comment-show').on('click', '.hf-pl', function () {
            var oThis = $(this);
            var myDate = new Date();
            //��ȡ��ǰ��
            var year = myDate.getFullYear();
            //��ȡ��ǰ��
            var month = myDate.getMonth() + 1;
            //��ȡ��ǰ��
            var date = myDate.getDate();
            var h = myDate.getHours();       //��ȡ��ǰСʱ��(0-23)
            var m = myDate.getMinutes();     //��ȡ��ǰ������(0-59)
            if (m < 10) m = '0' + m;
            var s = myDate.getSeconds();
            if (s < 10) s = '0' + s;
            var now = year + '-' + month + "-" + date + " " + h + ':' + m + ":" + s;
            //��ȡ��������
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
    <!--ɾ�����ۿ�-->
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
    <!--����-->
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
