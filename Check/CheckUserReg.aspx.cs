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

public partial class CheckUserReg : System.Web.UI.Page
{
    string email = "";
    string password = "";

    string strDescription = "ok";
    BasicPage bp = new BasicPage();
    bool sign = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        email = basic.Tools.RequestClass.GetQueryString("email");
        password = basic.Tools.RequestClass.GetQueryString("password");

        SqlDataReader myreader = bp.getRead("select UserName from TbUser where UserName='" + email + "'");
        if (myreader.Read())
        {
            strDescription = "用户名被占用";
            sign = false;
        }
        myreader.Close();

        if (sign)
        {
            bool Zcjg = bp.doExecute("insert into TbUser(UserName,UserPassword,Putdate)values('" + email + "','" + password + "','" + DateTime.Now + "')");
            if (!Zcjg)
            {
                strDescription = "注册失败";
            }
        }
        Response.Write(strDescription);
    }
}
