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

public partial class NewsDetail : System.Web.UI.Page
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
    public int intPrevious;
    public int intNext;
    public string strPrevious = "none";
    public string strNext = "none";
    public string strPreviousUrl = "#";
    public string strNextUrl = "#";
    protected void Page_Load(object sender, EventArgs e)
    {
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
            //上一篇，下一篇
            showPreviousAndNext(intID, intClassID);
            //根据ClassID显示栏目名称
            ClientColumnName clientcolumnname = new ClientColumnName();
            clientcolumnname = common.showColumnName(intClassID);
            strColumnName = clientcolumnname.ColumnName;
            strColumnSubName = clientcolumnname.ColumnSubName;
            //显示图片或者Flash
            strPath = clientcolumnname.Path;
            string strType = null;
            if (strPath.Length >= 3)
            {
                strType = strPath.Substring(strPath.Length - 3, 3);
            }
            string strLength = clientcolumnname.Length;
            string strWidth = clientcolumnname.Width;
            if (strType == "swf")
            {
                strPath = "<script type=\"text/javascript\">F_viewSwf('" + strWidth + "','" + strLength + "','transparent','transparent','" + strPath + "');</script>";
            }
            else
            {
                strPath = "<img src='" + clientcolumnname.Path + "' alt='' />"; //显示内页通栏图片
            }
            //根据ClassID显示父级栏目名称
            ClientParentColumnName clientparentcolumnname = new ClientParentColumnName();
            clientparentcolumnname = common.showParentColumnName(intClassID);
            strParentColumnName = clientparentcolumnname.ParentColumnName;
            strParentColumnSubName = clientparentcolumnname.ParentColumnSubName;
            showPro();

        }
    }
    public void showContent()
    {
        News news = new News();
        SqlDataReader reader = news.GetSingleNews(intID);
        if (reader.Read())
        {
            strTitle = reader["Title"].ToString();
            strKeywords = reader["Keywords"].ToString();
          
            lblContent.Text = reader["Content"].ToString();
            intClassID = Int32.Parse(reader["ClassId"].ToString());
        }
        reader.Close();
        this.Title = strTitle + "-" + mc.ShowWebsiteKeyById(1, "CompanyName");
    }
    public void showPreviousAndNext(int ID, int ClassID)
    {
        MyClass mc = new MyClass();
        News news = new News();
        SqlDataReader reader = news.GetNews(ClassID);
        DataTable dtbl = SystemTools.ConvertDataReaderToDataTable(reader);
        DataSet dstNews = new DataSet();
        dstNews.Tables.Add(dtbl);

        intPrevious = ID;
        intNext = ID;
        for (int i = 0; i < dstNews.Tables[0].Rows.Count; i++)
        {
            if (intID == Int32.Parse(dstNews.Tables[0].Rows[i]["Id"].ToString()))
            {
                if (i >= 1)
                {
                    intNext = Int32.Parse(dstNews.Tables[0].Rows[i - 1]["Id"].ToString());
                    strNext = dstNews.Tables[0].Rows[i - 1]["Title"].ToString();
                    strNextUrl = mc.returnNewsUrl(mc.returnStaticPage("News list"), dstNews.Tables[0].Rows[i - 1]["StaticUrl"].ToString(), Int32.Parse(dstNews.Tables[0].Rows[i - 1]["ID"].ToString()));
                }
                if (i < dstNews.Tables[0].Rows.Count - 1)
                {
                    intPrevious = Int32.Parse(dstNews.Tables[0].Rows[i + 1]["Id"].ToString());
                    strPrevious = dstNews.Tables[0].Rows[i + 1]["Title"].ToString();
                    strPreviousUrl = mc.returnNewsUrl(mc.returnStaticPage("News list"), dstNews.Tables[0].Rows[i + 1]["StaticUrl"].ToString(), Int32.Parse(dstNews.Tables[0].Rows[i + 1]["ID"].ToString()));
                }
            }
        }
    }


    public DataTable dtPro = new DataTable();
    public int intPro;
    private void showPro()
    {
        dtPro = bp.SelectDataBase("pinglun2", "select  * from pinglun2 where   newsid='" + intID + "' order by id desc").Tables[0];
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

