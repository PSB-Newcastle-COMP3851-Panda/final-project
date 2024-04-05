<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personalCenter.aspx.cs" Inherits="Content" %>

<%@ Register Src="~/UserControls/Head.ascx" TagName="HeadControl" TagPrefix="ucHeadControl" %>
<%@ Register Src="~/UserControls/BannerControl.ascx" TagName="BannerControl" TagPrefix="ucBannerControl" %>
<%@ Register Src="~/UserControls/Link.ascx" TagName="LinkControl" TagPrefix="ucLinkControl" %>
<%@ Register Src="~/UserControls/Foot.ascx" TagName="FootControl" TagPrefix="ucFootControl" %>
<%@ Register Src="~/UserControls/Category.ascx" TagName="CategoryControl" TagPrefix="ucCategoryControl" %>
<%@ Register Src="~/UserControls/Left.ascx" TagName="LeftControl" TagPrefix="ucLeftControl" %>
<%@ Register Src="~/UserControls/Contact.ascx" TagName="ContactControl" TagPrefix="ucContactControl" %>

<%--fastcontrol 0.1--%>
<%@ Register Src="~/UserControls/Top.ascx" TagName="Top" TagPrefix="ucTop" %>
<%@ Register Src="~/UserControls/Start.ascx" TagName="Start" TagPrefix="ucStart" %>
<%@ Register Src="~/UserControls/End.ascx" TagName="End" TagPrefix="ucEnd" %>
<!doctype html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <meta name="description" id="description" content="" runat="server" />
    <meta name="keywords" id="keywords" content="" runat="server" />
    <ucTop:Top ID="Top" runat="server" />
</head>
<style>
    .personal {
        width: 1200px;
        margin: 0 auto;
        display: flex;
        justify-content: space-between;
    }

    .personalleft {
        width: 250px;
    }

    .personalleftcon {
        padding: 15px;
        background-color: #fff;
        box-shadow: rgba(0, 0, 0, .2) 0 1px 5px 0px;
    }

    .left_top img {
        width: 65px;
        height: 65px;
        object-fit: cover;
        border-radius: 50%;
        display: block;
        margin: 0 auto;
        margin-bottom: 10px;
    }

    .left_top p {
        color: #333;
        font-size: 14px;
        text-align: center;
    }

    .personalleft ul li a {
        display: block;
        text-align: center;
        color: #666;
        height: 40px;
        font-size: 16px;
        line-height: 40px;
    }
    /* 当前栏目 */

    .ac_ {
        background-color: #4b2e83 !important;
        color: #fff !important;
    }

    .personalright {
        width: 900px;
        box-shadow: rgba(0, 0, 0, .2) 0 1px 5px 0px;
        padding: 20px;
    }
</style>
    <script src="js/ajaxfileupload.js"></script>

<body>
    <form id="form1">
        <ucStart:Start ID="Start" runat="server" />
        <div class="personal">
            <div class="personalleft">
                <div class="personalleftcon">
                    <div class="left_top">
                        <img src="<%=strtouxiang %>" alt="">
                        <p><%=strUserName %></p>
                    </div>
                    <ul>
                        <li>
                            <a class="ac_" href="#">Personal Center</a>
                        </li>
                        <li>
                            <a href="pinglun.aspx">My Collection</a>
                        </li>
                        <li>
                            <a href="#">My fans</a>

                        </li>
                        <li>
                            <a href="#">Fan comments</a></li>

                    </ul>
                </div>

            </div>
            <div class="personalright">
                <style>
                    .touxiang p {
                        font-size: 16px;
                        margin-bottom: 20px;
                    }

                    .tx {
                        width: 350px;
                        height: 350px;
                        border: 1px solid #ddd;
                        margin-bottom: 20px
                    }

                    .btn1 {
                        width: 120px;
                        line-height: 35px;
                        background-color: #ddd;
                        text-align: center;
                        font-size: 16px
                    }
                </style>
                <div class="touxiang">
                    <div class="comment-show">

             
            <div class="comment-show-con clearfix">
                <div class="comment-show-con-img pull-left">
                    <img src="/upload/2024032314144587_84420.png" alt="test1@uon.edu.au">
                </div>
                <div class="comment-show-con-list pull-left clearfix">
                    <div class="pl-text clearfix">
                        <a href="javascript:;" class="comment-size-name">test1@uon.edu.au : </a>
                        <span class="my-pl-con">&nbsp;test3</span>
                    </div>
                    <div class="date-dz">
                        <span class="date-dz-left pull-left comment-time">2024-03-23</span>
                        
                    </div>
                    <div class="hf-list-con"></div>
                </div>
				

            </div>

           
        </div>
        <div class="comment-show">

             
            <div class="comment-show-con clearfix">
                <div class="comment-show-con-img pull-left">
                    <img src="/upload/2024032314144587_84420.png" alt="test1@uon.edu.au">
                </div>
                <div class="comment-show-con-list pull-left clearfix">
                    <div class="pl-text clearfix">
                        <a href="javascript:;" class="comment-size-name">test1@uon.edu.au : </a>
                        <span class="my-pl-con">&nbsp;test3</span>
                    </div>
                    <div class="date-dz">
                        <span class="date-dz-left pull-left comment-time">2024-03-23</span>
                        
                    </div>
                    <div class="hf-list-con"></div>
                </div>
				

            </div>

           
        </div>
                </div>

            </div>


            <script>
                $(".tx").click(function () {
                    $("#shipin").click()[0];
                })


                $(function () {
                    //选择文件
                    $(document).off('change', '#shipin').on('change', '#shipin', function () {
                        var filePath = $(this).val();
                        //设置上传文件类型
                        if (filePath.indexOf("png") != -1 || filePath.indexOf("jpg") != -1 || filePath.indexOf("gif") != -1) {
                            var file = $('#shipin').get(0).files[0];
                            var fileSize = file.size;
                            //检查文件大小 
                            if (fileSize > 1 * 1024 * 1024) {
                                alert("The uploaded file cannot exceed 1M!");
                                return false;
                            }

                            //上传文件
                            $.ajaxFileUpload({
                                url: 'FileHandler.ashx',//处理程序路径
                                secureuri: false,
                                fileElementId: 'shipin',
                                dataType: 'json',
                                success: function (data, status) {
                                    //获取上传文件路径
                                    $("#shipin1").val(data.filenewname);
                                    $(".tx img").attr("src", "upload/" + data.filenewname);


                                },
                                error: function (data, status, e) {
                                    alert(e);
                                }
                            });


                        } else {
                            alert("请选择正确的文件格式！");
                            //清空上传路径
                            return false;
                        }
                    });
                })



                function tijiao() {

                    var q = "/upload/" + $("#shipin1").val();
                    //提交信息开始
                    $.ajax({
                        type: "get",
                        url: "Check/updatepath.aspx?q=" + escape(q),
                        success: function (msg) {
                            if (msg == "success") {
                                alert("Congratulations, the modification was successful!");
                                window.location.reload();
                            }
                            else if (msg == "no") {
                                window.location.href = "login.aspx";
                            }
                            else {
                                alert("Contains illegal characters, modification failed!");
                            }
                        }
                    });
                    //提交信息结束
                }


            </script>



        </div>
        <!-- <asp:Label ID="lContent" runat="server"></asp:Label> -->
        <ucEnd:End ID="End" runat="server" />
    </form>
</body>

</html>
