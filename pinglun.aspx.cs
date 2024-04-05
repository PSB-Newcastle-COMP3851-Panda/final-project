using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using WebApp.Components;
using basic;

public partial class News : System.Web.UI.Page
{
    public BasicPage bp = new BasicPage();
    public MyClass mc = new MyClass();
    public string strCssPath = null;
    public string strUserName = null;

    //个性化结束
    protected void Page_Load(object sender, EventArgs e)
    {

        strUserName = Basic.Engine.CookieDo.GetCookie("webUserName", "str_key");
        if (strUserName == "" || strUserName == null)
        {
            Response.Redirect("login.aspx");
        }


        //通用开始(无须修改)
        SystemTools systemtools = new SystemTools();
        systemtools.showTimeLimit();//判断网站是否到期
        Common common = new Common();
        ClientSEO clientseo = common.showSEO();
        this.Title = clientseo.WebTitle;
        description.Attributes["content"] = clientseo.WebDescription;
        keywords.Attributes["content"] = clientseo.WebKeywords;
        //通用结束
        showPro();

    }



    public DataTable dtblNews = new DataTable();
    public int intNews;
    public void showNews(string username)
    {
        dtblNews = bp.SelectDataBase("ZuoPin", "select  * from ZuoPin where username='" + username + "' order by id desc").Tables[0];
        intNews = dtblNews.Rows.Count;
    }

    //产品展示
    public DataTable dtPro = new DataTable();
    public int intPro;
    private void showPro()
    {
        dtPro = bp.SelectDataBase("TbUser", "select * from TbUser where  userstate=0  order by userid desc").Tables[0];
        intPro = dtPro.Rows.Count;
    }

}

