<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Head.ascx.cs" Inherits="Head" %>
<%--Ĭ��--%>
<script type="text/javascript" src="https://tyw.key.400301.com/js/replace_word_limit.js"></script>
<script type="text/javascript" language="javascript">
    //��������ʼ
    function checkSearch() {
        if ($("#KeyName").val() == "" || $("#KeyName").val() == null) {
            alert("�����������ؼ���");
            $("#KeyName").val("");
            $("#KeyName").focus();
            return false;
        }
        var Search_url = $("#key-Search").attr("value");
        window.location.href = Search_url + "?q=" + escape($("#KeyName").val());
    }

    //�ڰ��»س�������ĳ����ť��ʼ
    document.onkeydown = function (event) {
        e = event ? event : (window.event ? window.event : null);
        if (e.keyCode == 13) {
            document.getElementById("SearchButton").click();
            return false;
        }
    }

    //�ۼ����ղ�js���뿪ʼ
    function AddFavorite(sURL, sTitle) {
        try {
            window.external.addFavorite(sURL, sTitle);
        }
        catch (e) {
            try {
                window.sidebar.addPanel(sTitle, sURL, "");
            }
            catch (e) {
                alert("��ʹ�õ��������֧�ִ˹��ܣ��밴��Ctrl+D�����ֹ������ղ�");
            }
        }
    }
</script>
<div class="topen">
    <div class="searchshow">
        <div class="searchipt">
            <%--  <a href="ProSearch.aspx" style="display: none;" value="ProSearch.aspx" id="key-Search"></a>--%>
            <input placeholder="Search..." id="KeyName" />
        </div>
        <div class="searchbtn">
            <button type="button" name="SearchButton" id="SearchButton" onclick="checkSearch2()"></button>
        </div>
    </div>
</div>
<script>
    function checkSearch2() {

        var KeyName = document.getElementById("KeyName").value;
        if (KeyName == "") { alert("Please enter keywords��"); document.getElementById("KeyName").focus(); return false; }

        //�ύ��Ϣ��ʼ
        $.ajax({
            type: "get",
            url: "Check/checkcolumnlist.aspx?KeyName=" + KeyName,
            success: function (msg) {
                if (msg != "") {
                  
                    window.location.href = msg;
                }
                else {
                     alert("No result��");
                }
            }
        });
        //�ύ��Ϣ����

    }


</script>

<div class="top uw-thinstrip">
    <div class="wapper">
        <div class="logo">
            <img src="<%=mc.SelectPicByClassID(1) %>">
        </div>
        <div class="search">
            <div class="tshow">
            </div>
        </div>
        <div class="flow">
            <ul class="uw-thin-links">

                <%if (!string.IsNullOrEmpty(strUserName))
                    {%>
                <li><a href="personalCenter.aspx" title="��������">PersonalCenter</a></li>
                <li><a href="Check/Exit.aspx" title="�˳�">Exit</a></li>
                <%}
                    else
                    { %>
                <li><a href="login.aspx" title="��¼">Login</a></li>


                <%} %>

                <%showMenu69(2); %>
                <%for (int i = 0; i < intMenu69; i++)
                    {
                        string ColumnName = dstMenu69.Tables[0].Rows[i]["ColumnName"].ToString();
                        string ColumnUrlClient = dstMenu69.Tables[0].Rows[i]["ColumnUrlClient"].ToString();
                        string Id = dstMenu69.Tables[0].Rows[i]["Id"].ToString();
                %>

                <li><a href="<%=ColumnUrlClient %>" title="<%=ColumnName %>"><%=ColumnName %></a></li>

                <%} %>
            </ul>
        </div>

        <div class="clear"></div>
    </div>
</div>
<div class="menu">
    <div class="wapper">
        <ul>
            <%for (int i = 0; i < intMenu; i++)
                {
                    string Id = dstMenu.Tables[0].Rows[i]["Id"].ToString();
                    string ColumnUrlClient = dstMenu.Tables[0].Rows[i]["ColumnUrlClient"].ToString();
                    string ColumnStaticPage = dstMenu.Tables[0].Rows[i]["ColumnStaticPage"].ToString();
                    string StaticPage = dstMenu.Tables[0].Rows[i]["StaticPage"].ToString();
                    string ColumnName = dstMenu.Tables[0].Rows[i]["ColumnName"].ToString();
                    showMenuSub(Int32.Parse(Id));

            %>
            <li>
                <a href="<%=ColumnUrlClient %>"><%=ColumnName %></a>

                <%if (intMenuSub > 0)
                    {
                %>
                <ul aria-labelledby="about" class="dawgdrops-menu" id="menu-about" role="group">

                    <%for (int j = 0; j < intMenuSub; j++)
                        {

                            string ColumnUrlClient2 = dstMenuSub.Tables[0].Rows[j]["ColumnUrlClient"].ToString();
                            string ColumnStaticPage2 = dstMenuSub.Tables[0].Rows[j]["ColumnStaticPage"].ToString();
                            string StaticPage2 = dstMenuSub.Tables[0].Rows[j]["StaticPage"].ToString();
                            string ColumnName2 = dstMenuSub.Tables[0].Rows[j]["ColumnName"].ToString();
                            string Id2 = dstMenuSub.Tables[0].Rows[j]["Id"].ToString();

                    %>
                    <%if (j % 8 == 0)
                        { %>
                    <div class="menu-block">
                        <%} %>
                        <li>
                            <a href="<%=ColumnUrlClient2 %>"
                                id="visit<%=Id2 %>" tabindex="-1" title="<%=ColumnName2 %>"><%=ColumnName2 %></a>
                        </li>
                        <%if (j % 8 == 7 || j == intMenuSub - 1)
                            { %>
                    </div>
                    <%} %>
                    <%} %>
                </ul>

                <%} %>
            </li>
            <%} %>
            <div class="clear"></div>
        </ul>
    </div>
</div>
