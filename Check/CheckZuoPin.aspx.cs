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

public partial class CheckZuoPin : System.Web.UI.Page
{
    BasicPage bp = new BasicPage();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string name = Request.Form["name"].ToString();
        //string email = Request.Form["email"].ToString();
        //string speciality = Request.Form["speciality"].ToString();
        string content = Server.UrlDecode(Request.Form["content"].ToString());
        string strUserName = Basic.Engine.CookieDo.GetCookie("webUserName", "str_key");
        if (strUserName == "" || strUserName == null)
        {
            Response.Write("nolog");
        }
        else
        {
            if (bp.doExecute("insert into ZuoPin values('" + strUserName + "','','','','" + content + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')"))
            {
                Response.Write("success");
            }
        }


    }
}
