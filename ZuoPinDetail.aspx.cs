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

public partial class ZuoPinDetail : System.Web.UI.Page
{
    public BasicPage bp = new BasicPage();
    public MyClass mc = new MyClass();
    public int intID;
    public int intClassID;
    public string strTitle = null;//标题
    public string strKeywords = null;
    public string strParentColumnName = null;
    public string strParentColumnSubName = null;
    public string strColumnName = null;
    public string strColumnSubName = null;
    public string strPath = null;
    public string strUserName = null;


    protected void Page_Load(object sender, EventArgs e)
    {
        strUserName = Basic.Engine.CookieDo.GetCookie("webUserName", "str_key");
        SystemTools systemtools = new SystemTools();
        if (systemtools.IsNumberic(Request["ID"]))//判断参数是否合法
        {
            //调用类
            Common common = new Common();

            //读取整站SEO的设置信息
            ClientSEO clientseo = common.showSEO();
            this.Title = clientseo.WebTitle;
            description.Attributes["content"] = clientseo.WebDescription;
            keywords.Attributes["content"] = clientseo.WebKeywords;
            //根据ID显示内容
            intID = Int32.Parse(Request["ID"]);
            showContent();
            showPro();

        }
    }
    public string strcontent;
    public void showContent()
    {
        SqlDataReader reader = bp.getRead("select * from ZuoPin where id = " + intID);
        if (reader.Read())
        {
            strcontent = reader["content"].ToString();
        }
        reader.Close();
      
    }


    //产品展示
    public DataTable dtPro = new DataTable();
    public int intPro;
    private void showPro()
    {
        dtPro = bp.SelectDataBase("pinglun", "select  * from pinglun where   Zpid='"+ intID + "' order by id desc").Tables[0];
        intPro = dtPro.Rows.Count;
    }

    public string showuser(string UserName, string Key)
    {
        string result = "";
        SqlDataReader myread = bp.getRead("select " + Key + " from TbUser where UserName='" + UserName + "'");
        if (myread.Read())
        {
            result = myread[0].ToString();
        }
        myread.Close();
        return result;
    }


}

