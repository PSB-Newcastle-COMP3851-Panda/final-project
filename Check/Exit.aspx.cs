using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Basic.Engine.CookieDo.WriteCookie("webUserName", "str_key", -14400); //解密用户名

        Response.Redirect("/Default.aspx"); 
    }
}