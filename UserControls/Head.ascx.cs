﻿using System;
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

public partial class Head : System.Web.UI.UserControl
{

    public BasicPage bp = new BasicPage();
    public MyClass mc = new MyClass();


    public DataSet dstMenu = new DataSet();
    public DataSet dstMenuSub = new DataSet();
    public int intMenu;
    public int intMenuSub;
    public int intClassID;
    public int intParentId;



    public string strLogo;
    public string strPhone;
    public string strWebUrl = "http://" + HttpContext.Current.Request.Url.Host;
    public string strCompanyName;
    public string strNameState;

    public string str_Bg = null;

    public string strUserName = null;

    protected void Page_Load(object sender, EventArgs e)
    {

        strUserName = Basic.Engine.CookieDo.GetCookie("webUserName", "str_key");
       

        intClassID = basic.Tools.RequestClass.GetQueryInt("ClassID", 0);

        if (intClassID > 0)
        {

            SqlDataReader reader = bp.getRead("select parentid from columnlist where id = " + intClassID);
            if (reader.Read())
            {
                intParentId = int.Parse(reader["parentid"].ToString());
            }
            reader.Close();
        }
        Common common = new Common();
        Contact contact = new Contact();
        contact = common.showContact();
        strPhone = contact.Phone;
        strCompanyName = contact.CompanyName;
        strNameState = contact.NameState;
  
        showMenu();
        showLogo();
        showBg();
    }
    protected void showMenu()
    {
        dstMenu = bp.SelectDataBase("News", "select Id,ParentId,ColumnType,ColumnName,ColumnNo,ColumnUrlClient,ColumnStaticPage,StaticPage from ColumnList where ParentId=0 and IndexStatus=0 order by ColumnNo desc,Id asc");
        intMenu = dstMenu.Tables[0].Rows.Count;
    }
    protected void showMenuSub(int ID)
    {
        dstMenuSub = bp.SelectDataBase("News", "select Id,ParentId,ColumnType,ColumnName,ColumnNo,ColumnUrlClient,ColumnStaticPage,StaticPage from ColumnList where ParentId=" + ID + " and IndexStatus=0 order by ColumnNo desc,Id asc");
        intMenuSub = dstMenuSub.Tables[0].Rows.Count;
    }

    protected void showLogo()
    {
        SqlDataReader reader = bp.getRead("select * from TbPic where ClassID=1");
        if (reader.Read())
        {
            strLogo = reader["Path"].ToString();
        }
        reader.Close();
        if (strNameState == "1")
        {
            strLogo = "<a href='" + strWebUrl + "' title='" + strCompanyName + "'>" + strCompanyName + "</a>";
        }
        else
        {
            strLogo = "<a href='" + strWebUrl + "' title='" + strCompanyName + "'><img src='/" + strLogo + "' alt='" + strCompanyName + "' /></a>";
        }
    }
    protected void showBg()
    {
        SqlDataReader reader = bp.getRead("select * from TbWebSiteBg where ID=1");
        if (reader.Read())
        {
            if (reader["bgState"].ToString() == "1")
            {
                if (reader["bgPath"].ToString() != "")
                {
                    if (reader["bgDisplayMode"].ToString() == "0")
                    {
                        str_Bg = "<style type='text/css'>body{ background:url(/" + reader["bgPath"].ToString() + ");}</style>";
                    }
                    else if (reader["bgDisplayMode"].ToString() == "1")
                    {
                        str_Bg = "<style type='text/css'>body{ background:url(/" + reader["bgPath"].ToString() + ") center top no-repeat;}</style>";
                    }
                    else if (reader["bgDisplayMode"].ToString() == "2")
                    {
                        str_Bg = "<style type='text/css'>body{ background:url(/" + reader["bgPath"].ToString() + ")  repeat-x;}</style>";
                    }
                }
            }
            else
            {
                if (reader["path"].ToString() != "")
                {
                    str_Bg = "<style type='text/css'>body{ background:url(/" + reader["path"].ToString() + ");}</style>";
                }
            }
        }
        reader.Close();
    }
    protected string returnUrl(string strDynamicUrl, string strStaticUrl, string strStaticPage)
    {
        string strUrl = null;
        if (strStaticPage == "1")
        {
            strUrl = strStaticUrl;
        }
        else
        {
            strUrl = strDynamicUrl;
        }
        return strUrl;
    }

    public DataSet dstMenu69 = new DataSet();
    public int intMenu69;
    public void showMenu69(int ParentId)
    {
        dstMenu69 = bp.SelectDataBase("News", "select Id,ParentId,ColumnType,ColumnName,ColumnNo,Remarks,Path,ColumnUrlClient,ColumnStaticPage,StaticPage from ColumnList where ParentId=" + ParentId + "  order by ColumnNo desc,Id asc");
        intMenu69 = dstMenu69.Tables[0].Rows.Count;
    }
}

