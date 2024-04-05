<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fans.aspx.cs" Inherits="Content" %>

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
    .personal {
        width: 1200px;
        margin: 0 auto;
        display: flex;
        justify-content: space-between;
    }

    .personalleft {
        width: 250px;
    }

    .personalleftcon {
        padding: 15px;
        background-color: #fff;
        box-shadow: rgba(0, 0, 0, .2) 0 1px 5px 0px;
    }

    .left_top img {
        width: 65px;
        height: 65px;
        object-fit: cover;
        border-radius: 50%;
        display: block;
        margin: 0 auto;
        margin-bottom: 10px;
    }

    .left_top p {
        color: #333;
        font-size: 14px;
        text-align: center;
    }

    .personalleft ul li a {
        display: block;
        text-align: center;
        color: #666;
        height: 40px;
        font-size: 16px;
        line-height: 40px;
    }
    /* µ±Ç°À¸Ä¿ */

    .ac_ {
        background-color: #4b2e83 !important;
        color: #fff !important;
    }

    .personalright {
        width: 900px;
        box-shadow: rgba(0, 0, 0, .2) 0 1px 5px 0px;
        padding: 20px;
    }
</style>
<script src="js/ajaxfileupload.js"></script>

<body>
    <form id="form1">
        <ucStart:Start ID="Start" runat="server" />
        <div class="personal">
            <div class="personalleft">
                <div class="personalleftcon">
                    <div class="left_top">
                        <img src="<%=strtouxiang %>" alt="">
                        <p><%=strUserName %></p>
                    </div>
                    <ul>
                        <li>
                            <a href="personalCenter.aspx">Personal Center</a>
                        </li>
                        <li>
                            <a href="public.aspx">My Collection</a>
                        </li>
                        <li>
                            <a class="ac_" href="fans.aspx">My fans</a>
                        </li>
                        <li>
                            <a href="fancomments.aspx">Fan comments</a></li>

                    </ul>
                </div>
            </div>
            


            <div class="personalright">
                <style>
                    .touxiang p {
                        font-size: 16px;
                        margin-bottom: 20px;
                    }

                    .tx {
                        width: 350px;
                        height: 350px;
                        border: 1px solid #ddd;
                        margin-bottom: 20px
                    }

                    .btn1 {
                        width: 120px;
                        line-height: 35px;
                        background-color: #ddd;
                        text-align: center;
                        font-size: 16px
                    }
					.touxiang ul li{ width:19%; display:inline-block; margin:10px}
					.touxiang ul li img{ width:100%}
					.touxiang ul li p{ text-align:center; font-size:14px}
                </style> 
                <div class="touxiang">
        			<ul>
                            <%for (int j = 0; j < intNews; j++)
                                {
                                    string name = dtblNews.Rows[j]["name"].ToString();
                                    string path = showpro(int.Parse(name), "path");
                                    if (string.IsNullOrEmpty(path))
                                    {
                                        path = "/images/01.jpg";
                                    }

                    %>
                    	<li>
                        	<img src="<%=path %>" alt="">
                            <p>
                            	<%=showpro(int.Parse(name),"UserName") %>
                            </p>
                        </li>
                      
                       <%} %>
                    </ul>            
        
                </div>

            </div>


        </div>

        <ucEnd:End ID="End" runat="server" />
    </form>
</body>

</html>
