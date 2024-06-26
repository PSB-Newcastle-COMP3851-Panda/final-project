<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PicDetail.aspx.cs" Inherits="PicDetail" %>

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
    <%--Ĭ��--%>
    <script type="text/javascript" src="/js/ControlImage.js"></script>
    <link href="css/update.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1">
        <ucStart:Start ID="Start" runat="server" />
        <asp:Panel ID="PicDetailMoban1" runat="server" Width="100%">
            <div class="update_detail">
                <div class="update_detail_top">
                    <h1>
                        <asp:Label ID="lblTitle" runat="server"></asp:Label></h1>
                    <h2><font class="time"><asp:Label ID="lblPutdate" runat="server"></asp:Label></font><font class="eye"><script language="javascript" src="/check/news_view.aspx?id=<%=intID %>"></script></font></h2>
                </div>
                <div class="update_detail_con">
                    <asp:Label ID="lblContent" runat="server"></asp:Label></div>
                <div class="update_detail_bot"><a class="prev" href="PicDetail.aspx?ID=<%=intPrevious %>">Previous��<%=strPrevious %></a><a class="next" href="PicDetail.aspx?ID=<%=intNext %>">Next��<%=strNext %></a></div>
            </div>
        </asp:Panel>
        <!--Content End-->
        <ucEnd:End ID="End" runat="server" />
    </form>
</body>
</html>

