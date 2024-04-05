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

public partial class Content : System.Web.UI.Page
{
    public BasicPage bp = new BasicPage();
    public MyClass mc = new MyClass();
    public string strCssPath = null;
    public string strUserName = null;
    public string strtouxiang = null;
    public string strUserID = null;


    //个性化结束
    protected void Page_Load(object sender, EventArgs e)
    {

        strUserName = Basic.Engine.CookieDo.GetCookie("webUserName", "str_key");
        if (strUserName == "" || strUserName == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            SqlDataReader reader = bp.getRead("select path,UserID from TbUser where UserName = '" + strUserName + "'");
            if (reader.Read())
            {
                strtouxiang = reader["path"].ToString();
                strUserID = reader["UserID"].ToString();
            }
            reader.Close();

        }
        if (string.IsNullOrEmpty(strtouxiang))
        {
            strtouxiang = "/images/01.jpg";
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
        showNews();

    }



    public DataTable dtblNews = new DataTable();
    public int intNews;
    public void showNews()
    {
        dtblNews = bp.SelectDataBase("Guanzhu", "select  * from Guanzhu where username='" + strUserName + "' and name <>"+ strUserID + " order by id desc").Tables[0];
        intNews = dtblNews.Rows.Count;
    }

    public string showpro(int ID, string Key)
    {
        string result = "";
        SqlDataReader myread = bp.getRead("select " + Key + " from TbUser where UserID=" + ID + "");
        if (myread.Read())
        {
            result = myread[0].ToString();
        }
        myread.Close();
        return result;
    }

}

