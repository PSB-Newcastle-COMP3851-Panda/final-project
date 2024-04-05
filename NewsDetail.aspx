<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsDetail.aspx.cs" Inherits="NewsDetail" %>

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
    <form id="form1">
        <ucStart:Start ID="Start" runat="server" />
        <!--Content Start-->


        <div class="update_detail">
            <div class="update_detail_top">
                <h1>
                    <%=strTitle %></h1>
            </div>
            <div class="update_detail_con">
                <asp:Label ID="lblContent" runat="server"></asp:Label></div>
            <div class="update_detail_bot"><a class="prev" href="<%=strPreviousUrl %>">previous：<%=strPrevious %></a><a class="next" href="<%=strNextUrl %>">next：<%=strNext %></a></div>
        </div>

        <!--Content End-->
        <ucEnd:End ID="End" runat="server" />
    </form>
</body>
</html>

