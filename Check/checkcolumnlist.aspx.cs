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

public partial class checkcolumnlist : System.Web.UI.Page
{
    string KeyName = "";
    BasicPage bp = new BasicPage();
    protected void Page_Load(object sender, EventArgs e)
    {
        KeyName = basic.Tools.RequestClass.GetQueryString("KeyName");


        SqlDataReader myreader = bp.getRead("select columnurlclient from columnlist where columnname='" + KeyName + "'");
        if (myreader.Read())
        {
            Response.Write(myreader["columnurlclient"].ToString());
        }
        myreader.Close();


    }
}
