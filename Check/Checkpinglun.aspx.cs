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

public partial class Checkpinglun : System.Web.UI.Page
{
    BasicPage bp = new BasicPage();
    protected void Page_Load(object sender, EventArgs e)
    {
        string zpid = Request.Form["zpid"].ToString();
        string neirong = Server.UrlDecode(Request.Form["neirong"].ToString());
        string strUserName = Basic.Engine.CookieDo.GetCookie("webUserName", "str_key");
        if (strUserName == "" || strUserName == null)
        {
            Response.Write("nolog");
        }
        else
        {
            if (bp.doExecute("insert into pinglun values('" + strUserName + "','"+ zpid + "','" + neirong + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')"))
            {
                Response.Write("success");
            }
        }


    }
}
