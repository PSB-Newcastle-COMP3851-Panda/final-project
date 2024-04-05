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
using basic;
using WebApp.Components;

public partial class checkdianzan : System.Web.UI.Page
{
    string zpid = "";
    string strUserName = "";

    BasicPage bp = new BasicPage();

    protected void Page_Load(object sender, EventArgs e)
    {
        zpid = basic.Tools.RequestClass.GetQueryString("zpid");

        strUserName = Basic.Engine.CookieDo.GetCookie("webUserName", "str_key");

        if (strUserName == "" || strUserName == null)
        {
            Response.Write("nolog");
        }
        else
        {


            SqlDataReader myreader = bp.getRead("select * from Dianzan where username='" + strUserName + "' and Zpid='" + zpid + "'");
            if (myreader.Read())
            {
                Response.Write("cunzai");
            }
            else
            {

                bp.doExecute("insert into Dianzan(username,Zpid,Putdate)values('" + strUserName + "','" + zpid + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')");
                Response.Write("success");
            }
            myreader.Close();




        }


    }
}
