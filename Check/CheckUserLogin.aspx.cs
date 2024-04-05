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

public partial class CheckUserLogin : System.Web.UI.Page
{
    string email = "";
    string password = "";
    string strDescription = "no";
    BasicPage bp = new BasicPage();
    bool sign = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        email = basic.Tools.RequestClass.GetQueryString("email");
        password = basic.Tools.RequestClass.GetQueryString("password");
      

            SqlDataReader myreader = bp.getRead("select * from TbUser where UserState='0' and  UserName='" + email + "' and UserPassword='" + password + "'");
            if (myreader.Read())
            {
                strDescription = "ok";
                Basic.Engine.CookieDo.WriteCookie("webUserName", "str_key", email, 150);
                sign = false;
            }
            myreader.Close();
  
        Response.Write(strDescription);
    }
}
