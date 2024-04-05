<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Foot.ascx.cs" Inherits="Foot" %>
<%if (intQQ > 0)
    {%>
<link rel="stylesheet" type="text/css" href="css/kefu.css">
<div class="scrollsidebar" id="scrollsidebar">
    <div class="side_content">
        <div class="side_list">
            <div class="side_title">
                <h2>在线客服</h2>
                <a title="隐藏" class="close_btn"><span>关闭</span></a>
            </div>
            <div class="side_center">
                <div class="custom_service">
                    <%for (int i = 0; i < intQQ; i++)
                        {
                            string qq = dstQQ.Tables[0].Rows[i]["qq"].ToString();
                    %>
                    <p>
                        <a title="点击这里给我发消息" href="http://wpa.qq.com/msgrd?v=3&uin=<%=qq %>&Site=qq&Menu=yes" target="_blank">
                            <img src="/images/qq.png"></a>
                    </p>
                    <%} %>
                </div>
                <div class="other">
                    <p>
                        <img src="<%=mc.SelectPicByClassID(7) %>" width="120" />
                    </p>
                    <p>客户服务热线</p>
                    <p><%=mc.ShowWebsiteKeyById(1,"Phone") %></p>
                </div>
                <div class="msgserver">
                    <p><a href="<%=ContactUrl %>">联系我们</a></p>
                </div>
            </div>
            <div class="side_bottom"></div>
        </div>
    </div>
    <div class="show_btn"><span>在线客服</span></div>
</div>
<script type="text/javascript" src="js/kefu.js"></script>
<%} %>
<div class="uw-footer" role="contentinfo" style="background: url(<%=mc.SelectPicByClassID(6) %>) center bottom;">
    <a class="footer-wordmark" href="<%=mc.ShowColumnKeyById(4,"columnurlclient") %>">
        <%=mc.ShowColumnName(4) %>
    </a>
    <a href="<%=mc.ShowColumnKeyById(4,"columnurlclient") %>">
        <h3 class="be-boundless"><%=mc.ShowColumnSubName(4) %></h3>
    </a>
    <h4><%=mc.ShowColumnName(5) %></h4>
    <nav aria-label="social networking">
        <ul class="footer-social">
            <%showNews(5, 5); %>
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
            <li><a class="facebook" href="<%=url %>">
                <img src="<%=path %>"></a></li>
            <%} %>
        </ul>
    </nav>
    <nav aria-label="footer navigation">
        <ul class="footer-links">
            <%for (int i = 0; i < intMenu; i++)
                {
                    string ColumnName = dstMenu.Tables[0].Rows[i]["ColumnName"].ToString();
                    string ColumnUrlClient = dstMenu.Tables[0].Rows[i]["ColumnUrlClient"].ToString();
            %>
            <li><a href="<%=ColumnUrlClient %>"><%=ColumnName %></a></li>
            <%} %>
        </ul>
    </nav>
    <p style=" color :#fff">
        ©
        <script type="text/javascript">var myDate = new Date(); document.write(myDate.getFullYear());</script>
        <%=strCompanyName %> <%if (strSupportState == "1")
                                     {%>
   <a href="<%=strWebSite %>" title="<%=strTitle %>" target="_blank"><%=strSupportName %></a>
        <%} %>
        <%if (strStateSitemap == "1")
            {%>
       <a href="/sitemap.xml" title="网站地图" target="_blank">网站地图</a>
        <%} %>
    </p>
    <p><a href="http://dd867760-xs.y1.d-tzj33x.jshxdt.com.cn/qzkeyadmin" style=" color :#fff">Backend management</a></p>
</div>
<%if (strCodeState == "1") { Response.Write(strContent); }%>