USE [dd867760]
GO
/****** Object:  Table [dbo].[News]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[Paixu] [int] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[Path] [nvarchar](255) NULL,
	[Fujian] [nvarchar](255) NULL,
	[KeyContent] [nvarchar](500) NULL,
	[Content] [ntext] NOT NULL,
	[Laiyuan] [nvarchar](25) NULL,
	[Zuozhe] [nvarchar](25) NULL,
	[Bianji] [nvarchar](25) NULL,
	[Hits] [int] NOT NULL,
	[Keywords] [nvarchar](255) NULL,
	[Putdate] [nvarchar](19) NOT NULL,
	[Istop] [int] NOT NULL,
	[State] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[StaticUrl] [nvarchar](25) NULL,
	[StaticPage] [nchar](1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[News] ON
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (1, 5, 0, N'测试', N'', N'upload/20240203155128.png', N'upload/fujian.jpg', N'', N'', NULL, NULL, NULL, 0, N'', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (2, 5, 0, N'测试', N'', N'upload/20240203155130.png', N'upload/fujian.jpg', N'', N'', NULL, NULL, NULL, 0, N'', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (3, 5, 0, N'测试', N'', N'upload/20240203155131.png', N'upload/fujian.jpg', N'', N'', NULL, NULL, NULL, 0, N'', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (4, 5, 0, N'测试', N'', N'upload/20240203155132.png', N'upload/fujian.jpg', N'', N'', NULL, NULL, NULL, 1, N'', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (5, 6, 0, N'#UWserves', N'', N'upload/20240203155446.jpg', N'upload/fujian.jpg', N'Heart, Soul and Joy is a UW research program working to improve pregnancy
                                        health outcomes for Black women and other underserved community members.', N'', NULL, NULL, NULL, 0, N'Delivering hope', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (6, 6, 0, N'#UWserves', N'', N'upload/20240203155450.jpg', N'upload/fujian.jpg', N'Heart, Soul and Joy is a UW research program working to improve pregnancy
                                        health outcomes for Black women and other underserved community members.', N'', NULL, NULL, NULL, 0, N'Delivering hope', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (7, 7, 0, N'Dragons on Fire: Kudos for Student Achievements', N'', N'upload/20240203155637.jpg', N'upload/fujian.jpg', N'', N'', NULL, NULL, NULL, 0, N'', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (8, 7, 0, N'Dragons on Fire: Kudos for Student Achievements', N'', N'upload/20240203155639.jpg', N'upload/fujian.jpg', N'', N'', NULL, NULL, NULL, 1, N'', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (9, 7, 0, N'Dragons on Fire: Kudos for Student Achievements', N'', N'upload/20240203155640.jpg', N'upload/fujian.jpg', N'', N'', NULL, NULL, NULL, 1, N'', N'2024-02-03', 0, 0, 0, NULL, N'0')
INSERT [dbo].[News] ([ID], [ClassId], [Paixu], [Title], [Url], [Path], [Fujian], [KeyContent], [Content], [Laiyuan], [Zuozhe], [Bianji], [Hits], [Keywords], [Putdate], [Istop], [State], [Status], [StaticUrl], [StaticPage]) VALUES (10, 8, 0, N'Four Ways Pa. Can Prepare for Climate Change', N'', N'upload/20240203160440.jpg', N'upload/fujian.jpg', N'"Universities can be a bridge to emergency response agencies by helping map the communities at
                    greatest risk, contributing to land-use planning, establishing strong risk communication
                    systems, and convening residents to identify critical needs and solutions."', N'', NULL, NULL, NULL, 2, N' —Mathy Vathanaraj Stanislaus, vice provost and executive director, Drexel Environmental                         Collaboratory', N'2024-02-03', 0, 0, 0, NULL, N'0')
SET IDENTITY_INSERT [dbo].[News] OFF
/****** Object:  Table [dbo].[Message]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Realname] [nvarchar](25) NOT NULL,
	[Phone] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](25) NOT NULL,
	[QQ] [nvarchar](25) NULL,
	[Fax] [nvarchar](25) NULL,
	[Content] [ntext] NOT NULL,
	[StateShenhe] [int] NOT NULL,
	[StateHuifu] [int] NOT NULL,
	[Reply] [nvarchar](255) NULL,
	[Putdate] [nvarchar](19) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinksType]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinksType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeTitle] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeID] [int] NOT NULL,
	[Paixu] [int] NOT NULL,
	[Path] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Url] [nvarchar](255) NOT NULL,
	[Status] [nchar](1) NOT NULL,
	[Type] [nchar](1) NOT NULL,
	[Putdate] [nvarchar](19) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColumnList]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColumnList](
	[ID] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[ColumnType] [nvarchar](25) NOT NULL,
	[ColumnName] [nvarchar](50) NOT NULL,
	[ColumnSubName] [nvarchar](50) NULL,
	[ColumnNo] [int] NOT NULL,
	[ColumnUrlClient] [nvarchar](100) NOT NULL,
	[ColumnStaticPage] [nvarchar](25) NULL,
	[ColumnTitle] [nvarchar](255) NULL,
	[ColumnDescription] [nvarchar](255) NULL,
	[ColumnKeywords] [nvarchar](255) NULL,
	[Status] [int] NOT NULL,
	[IndexStatus] [int] NOT NULL,
	[Role] [int] NOT NULL,
	[StaticPage] [nchar](1) NOT NULL,
	[Remarks] [ntext] NULL,
	[Path] [nvarchar](255) NULL,
	[Length] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Sample] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (1, 0, N'网站首页', N'home', N'', 1, N'Default.aspx', NULL, N'', N'', N'', 0, 0, 0, N'0', N'', N'', 0, 0, 1)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (2, 0, N'一级分类', N'头部栏目', N'', 0, N'#', NULL, N'', N'', N'', 0, 1, 1, N'0', N'', N'', 0, 0, 1)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (3, 2, N'一级分类', N'登录', N'', 1, N'login.aspx', NULL, N'', N'', N'', 0, 0, 0, N'0', N'', N'', 0, 0, 1)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (4, 0, N'最终页面', N'University of Washington', N'Be boundless', 0, N'About.aspx?ClassID=4', NULL, N'', N'', N'', 0, 1, 1, N'0', N'', N'', 0, 0, 1)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (5, 0, N'图片列表', N'Connect with us:', N'', 0, N'PicList.aspx?ClassID=5', NULL, N'', N'', N'', 0, 1, 1, N'0', N'', N'', 0, 0, 99)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (6, 1, N'图片列表', N'首页banner', N'', 0, N'PicList.aspx?ClassID=6', NULL, N'', N'', N'', 0, 1, 1, N'0', N'', N'', 0, 0, 99)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (7, 1, N'图片列表', N'banner下方', N'', 0, N'PicList.aspx?ClassID=7', NULL, N'', N'', N'', 0, 1, 1, N'0', N'', N'', 0, 0, 99)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (8, 1, N'新闻列表', N'In The News', N'', 0, N'News.aspx?ClassID=8', NULL, N'', N'', N'', 0, 1, 1, N'0', N'', N'', 0, 0, 99)
INSERT [dbo].[ColumnList] ([ID], [ParentId], [ColumnType], [ColumnName], [ColumnSubName], [ColumnNo], [ColumnUrlClient], [ColumnStaticPage], [ColumnTitle], [ColumnDescription], [ColumnKeywords], [Status], [IndexStatus], [Role], [StaticPage], [Remarks], [Path], [Length], [Width], [Sample]) VALUES (9, 0, N'新闻列表', N'Event', N'Event On Trend', 1, N'pinglun.aspx?ClassID=9', NULL, N'', N'', N'', 0, 0, 0, N'0', N'', N'', 0, 0, 99)
/****** Object:  Table [dbo].[Admin]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](50) NOT NULL,
	[AdminPassword] [nvarchar](50) NOT NULL,
	[Role] [nchar](1) NOT NULL,
	[Logins] [int] NOT NULL,
	[LastTimes] [nvarchar](19) NULL,
	[State] [nchar](1) NOT NULL,
	[LoginIP] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebsiteControl]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebsiteControl](
	[ID] [int] NOT NULL,
	[State] [nchar](1) NOT NULL,
	[Tishi] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[WebsiteControl] ([ID], [State], [Tishi]) VALUES (1, N'0', N'网站维护中   请稍候访问')
/****** Object:  Table [dbo].[Website]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[ID] [int] NOT NULL,
	[ICP] [nvarchar](25) NOT NULL,
	[WebUrl] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](255) NOT NULL,
	[NameState] [nchar](1) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Fax] [nvarchar](25) NULL,
	[Contact] [nvarchar](25) NULL,
	[QQ] [nvarchar](80) NULL,
	[Map] [nvarchar](600) NULL,
	[WeChat] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[ProSample] [int] NULL,
	[ProDetailSample] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Website] ([ID], [ICP], [WebUrl], [CompanyName], [NameState], [Address], [Phone], [Mobile], [Email], [Fax], [Contact], [QQ], [Map], [WeChat], [Zip], [ProSample], [ProDetailSample]) VALUES (1, N'苏ICP备2021xxxx00号', N'', N'某某XXXX有限公司', N'0', N'xx市xx区xx路xx号楼', N'xx-xxxxxxxx', N'123456789xx', N'xxxxxx@xx.com', N'xx-xxxxxxxx', N'某某某', N'123456xx', NULL, N'123xxx', N'000000', NULL, NULL)
/****** Object:  Table [dbo].[WebMusic]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebMusic](
	[ID] [int] NOT NULL,
	[Path] [nvarchar](255) NOT NULL,
	[State] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbWebSiteBg]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbWebSiteBg](
	[ID] [int] NOT NULL,
	[Path] [nvarchar](255) NOT NULL,
	[State] [nchar](1) NOT NULL,
	[bgState] [nchar](1) NOT NULL,
	[bgPath] [nvarchar](255) NULL,
	[bgDisplayMode] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbUser]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccount] [float] NOT NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[UserPassword] [nvarchar](16) NOT NULL,
	[UserEmail] [nvarchar](32) NULL,
	[UserQQ] [nvarchar](18) NULL,
	[UserPhone] [nvarchar](13) NULL,
	[UserState] [nchar](1) NOT NULL,
	[UserRealName] [nvarchar](8) NULL,
	[UserAddress] [nvarchar](255) NULL,
	[UserCompany] [nvarchar](50) NULL,
	[Putdate] [nvarchar](19) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbUser] ON
INSERT [dbo].[TbUser] ([UserID], [UserAccount], [UserName], [UserPassword], [UserEmail], [UserQQ], [UserPhone], [UserState], [UserRealName], [UserAddress], [UserCompany], [Putdate]) VALUES (1, 0, N'148172536@qq.com', N'00000000', N'', N'', N'', N'0', N'', N'', N'', N'2024/2/3 16:42:39')
SET IDENTITY_INSERT [dbo].[TbUser] OFF
/****** Object:  Table [dbo].[TbTimeLimit]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTimeLimit](
	[ID] [int] NOT NULL,
	[Number] [nvarchar](255) NOT NULL,
	[BeginTime] [nvarchar](19) NOT NULL,
	[EndTime] [nvarchar](19) NOT NULL,
	[Email] [nvarchar](32) NULL,
	[Type] [nvarchar](32) NULL,
	[Mobile] [nvarchar](11) NULL,
	[QQ] [nvarchar](12) NULL,
	[SMSToMobile] [nvarchar](11) NULL,
	[SMSState] [nchar](1) NOT NULL,
	[Price] [float] NOT NULL,
	[Phone] [nvarchar](13) NULL,
	[Beizhu] [nvarchar](500) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TbTimeLimit] ([ID], [Number], [BeginTime], [EndTime], [Email], [Type], [Mobile], [QQ], [SMSToMobile], [SMSState], [Price], [Phone], [Beizhu]) VALUES (1, N'BianHao', N'2008-01-01', N'2099-12-31', N'111111@qq.com', N'标准版', N'123456789xx', N'123456xx', N'', N'0', 1, N'', N'')
/****** Object:  Table [dbo].[TbSupport]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSupport](
	[ID] [int] NOT NULL,
	[SupportName] [nvarchar](100) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[WebSite] [nvarchar](50) NOT NULL,
	[State] [nchar](1) NOT NULL,
	[StateManage] [nchar](1) NOT NULL,
	[StateSitemap] [nchar](1) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TbSupport] ([ID], [SupportName], [Title], [WebSite], [State], [StateManage], [StateSitemap]) VALUES (1, N'腾云建站仅向商家提供技术服务', N'腾云建站仅向商家提供技术服务', N'https://www.400301.com/', N'1', N'0', N'1')
/****** Object:  Table [dbo].[TbSubmitForm]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSubmitForm](
	[FormID] [int] NOT NULL,
	[FormState] [nchar](1) NOT NULL,
	[FormContent] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbQuery]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbQuery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Company] [nvarchar](100) NULL,
	[Mobile] [nvarchar](25) NULL,
	[Keys] [nvarchar](100) NULL,
	[Result] [nvarchar](255) NULL,
	[Content] [ntext] NULL,
	[State] [nchar](1) NOT NULL,
	[Putdate] [nvarchar](19) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPic2]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPic2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProID] [int] NULL,
	[title] [nvarchar](255) NULL,
	[Path] [nvarchar](255) NULL,
	[Putdate] [nvarchar](19) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPic]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NULL,
	[Paixu] [int] NOT NULL,
	[Type] [nvarchar](25) NULL,
	[Length] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Path] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
	[Beizhu] [nvarchar](255) NULL,
	[Putdate] [nvarchar](19) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbPic] ON
INSERT [dbo].[TbPic] ([ID], [ClassID], [Paixu], [Type], [Length], [Width], [Path], [Url], [Beizhu], [Putdate]) VALUES (1, 1, 0, N'pic', 0, 0, N'upload/img/20240203153035.jpg', N'', N'公司LOGO', N'2024/2/3 15:30:35')
INSERT [dbo].[TbPic] ([ID], [ClassID], [Paixu], [Type], [Length], [Width], [Path], [Url], [Beizhu], [Putdate]) VALUES (2, 6, 0, N'pic', 0, 0, N'upload/img/20240203154642.jpg', N'', N'底部背景图', N'2024/2/3 15:46:35')
SET IDENTITY_INSERT [dbo].[TbPic] OFF
/****** Object:  Table [dbo].[tborder]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tborder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bianhao] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[dizhi] [nvarchar](255) NULL,
	[liuyan] [nvarchar](255) NULL,
	[zhuangtai] [nvarchar](255) NULL,
	[fukuan] [nvarchar](255) NULL,
	[jiage] [nvarchar](255) NULL,
	[usename] [nvarchar](255) NULL,
	[content] [ntext] NULL,
	[putdate] [nvarchar](19) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbLog]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Times] [nvarchar](19) NOT NULL,
	[IP] [nvarchar](15) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Result] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbLog] ON
INSERT [dbo].[TbLog] ([ID], [Times], [IP], [UserName], [Result]) VALUES (1, N'2024/2/3 16:37:14', N'::1', N'qizhinet', N'成功')
SET IDENTITY_INSERT [dbo].[TbLog] OFF
/****** Object:  Table [dbo].[TbLiuliang]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbLiuliang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Iplist] [ntext] NULL,
	[Putdate] [nvarchar](19) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbIM]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbIM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[qq] [nvarchar](25) NOT NULL,
	[name] [nvarchar](25) NULL,
	[State] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbGrab]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbGrab](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Url] [nvarchar](500) NULL,
	[ClassId] [nvarchar](25) NULL,
	[Putdate] [nvarchar](19) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TbGrab] ON
INSERT [dbo].[TbGrab] ([ID], [Title], [Url], [ClassId], [Putdate]) VALUES (2, N'流量统计', N'{"message":"失败"}', N'1', N'2024/2/3 15:29:33')
SET IDENTITY_INSERT [dbo].[TbGrab] OFF
/****** Object:  Table [dbo].[TbFormContent]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbFormContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FormContent] [ntext] NULL,
	[Putdate] [nvarchar](19) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCode]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCode](
	[ID] [int] NOT NULL,
	[State] [nchar](1) NOT NULL,
	[Content] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbAliPay]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAliPay](
	[ID] [int] NOT NULL,
	[PayState] [nchar](1) NOT NULL,
	[PayName] [nvarchar](16) NOT NULL,
	[PayDescription] [ntext] NULL,
	[PaySellerID] [nvarchar](32) NOT NULL,
	[PayKeyID] [nvarchar](32) NOT NULL,
	[PayPartnerID] [nvarchar](16) NOT NULL,
	[PayType] [nvarchar](12) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_tongji]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_tongji](
	[number] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tb_tongji] ([number]) VALUES (1)
/****** Object:  Table [dbo].[StyleList]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StyleList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StyleName] [nvarchar](25) NOT NULL,
	[StyleUrl] [nvarchar](255) NOT NULL,
	[State] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEO]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEO](
	[ID] [int] NOT NULL,
	[WebTitle] [nvarchar](255) NOT NULL,
	[WebDescription] [nvarchar](255) NULL,
	[WebKeywords] [nvarchar](255) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[SEO] ([ID], [WebTitle], [WebDescription], [WebKeywords]) VALUES (1, N'网站已开通，等待完善资料', N'这里是网站描述', N'关键词,关键词二,关键词三 ')
/****** Object:  Table [dbo].[Product]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [nvarchar](500) NOT NULL,
	[Paixu] [int] NOT NULL,
	[ProName] [nvarchar](255) NOT NULL,
	[ProBianhao] [nvarchar](100) NULL,
	[ProChandi] [nvarchar](100) NULL,
	[ProPrice] [nvarchar](100) NULL,
	[ProPath] [nvarchar](255) NOT NULL,
	[ProKeyDescription] [ntext] NULL,
	[ProDescription] [ntext] NOT NULL,
	[Keywords] [nvarchar](255) NULL,
	[Putdate] [nvarchar](19) NOT NULL,
	[Hits] [int] NOT NULL,
	[State] [int] NOT NULL,
	[StaticUrl] [nvarchar](100) NULL,
	[StaticPage] [nchar](1) NOT NULL,
	[Paths] [ntext] NULL,
	[Content1] [ntext] NULL,
	[Content2] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProClass]    Script Date: 02/03/2024 17:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProClass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Paixu] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[Context] [nvarchar](255) NOT NULL,
	[Content] [ntext] NULL,
	[Path] [nvarchar](255) NULL,
	[State] [int] NOT NULL,
	[Shuliang] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateWesSite]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateWesSite] ( @ID int, @ICP nvarchar(25), @WebUrl nvarchar(50), @CompanyName nvarchar(255), @NameState nchar(1), @Address nvarchar(255), @Phone nvarchar(50), @Mobile nvarchar(50), @Email nvarchar(50), @Fax nvarchar(25), @Contact nvarchar(25), @QQ nvarchar(80), @Map nvarchar(800), @WeChat nvarchar(50), @Zip nvarchar(50) ) AS select * from Website where Id=@ID if(@@rowcount<1) begin insert into Website ( ID, ICP, WebUrl, CompanyName, NameState, Address, Phone, Mobile, Email, Fax, Contact, QQ, Map, WeChat, Zip ) values ( @ID, @ICP, @WebUrl, @CompanyName, @NameState, @Address, @Phone, @Mobile, @Email, @Fax, @Contact, @QQ, @Map, @WeChat, @Zip ) end else begin update  Website  set ICP=@ICP, WebUrl=@WebUrl, CompanyName=@CompanyName, NameState=@NameState, Address=@Address, Phone=@Phone, Mobile=@Mobile, Email=@Email, Fax=@Fax, Contact=@Contact, QQ=@QQ, Map=@Map, WeChat=@WeChat, Zip=@Zip where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateWebsiteControl]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateWebsiteControl] ( @ID int, @State nchar(1), @Tishi ntext ) AS select * from WebsiteControl where Id=@ID if(@@rowcount<1) begin insert into WebsiteControl ( ID, State, Tishi ) values ( @ID, @State, @Tishi ) end else begin update  WebsiteControl  set State=@State, Tishi=@Tishi where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateWebMusic]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateWebMusic] ( @ID int, @Path nvarchar(255), @State nchar(1) ) AS select * from WebMusic where ID=@ID if(@@rowcount<1) begin insert into WebMusic ( ID, Path, State ) values ( @ID, @Path, @State ) end else begin update  WebMusic  set Path=@Path, State=@State where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateTimeLimit]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateTimeLimit] ( @ID int, @Number nvarchar(255), @BeginTime nvarchar(19), @EndTime nvarchar(19), @Email nvarchar(32), @Type nvarchar(32), @Mobile nvarchar(11), @QQ nvarchar(12), @SMSToMobile nvarchar(11), @SMSState nchar(1), @Price float, @Phone nvarchar(13), @Beizhu nvarchar(500) ) AS select * from TbTimeLimit where ID=@ID if(@@rowcount<1) begin insert into TbTimeLimit ( ID, Number, BeginTime, EndTime, Email, Type, Mobile, QQ, SMSToMobile, SMSState, Price, Phone, Beizhu ) values ( @ID, @Number, @BeginTime, @EndTime, @Email, @Type, @Mobile, @QQ, @SMSToMobile, @SMSState, @Price, @Phone, @Beizhu ) end else begin update  TbTimeLimit  set Number=@Number, BeginTime=@BeginTime, EndTime=@EndTime, Email=@Email, Type=@Type, Mobile=@Mobile, QQ=@QQ, SMSToMobile=@SMSToMobile, SMSState=@SMSState, Price=@Price, Phone=@Phone, Beizhu=@Beizhu where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSupport]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSupport] ( @ID int, @SupportName nvarchar(100), @Title nvarchar(100), @WebSite nvarchar(50), @State nchar(1), @StateManage nchar(1), @StateSitemap nchar(1) ) AS select * from TbSupport where Id=@ID if(@@rowcount<1) begin insert into TbSupport ( ID, SupportName, Title, WebSite, State, StateManage, StateSitemap ) values ( @ID, @SupportName, @Title, @WebSite, @State, @StateManage, @StateSitemap ) end else begin update  TbSupport set SupportName=@SupportName, Title=@Title, WebSite=@WebSite, State=@State, StateManage=@StateManage, StateSitemap=@StateSitemap where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSubmitform]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSubmitform] ( @ID int, @FormContent ntext ) as update  TbFormContent set FormContent=@FormContent where ID=@ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleUser]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleUser] ( @UserID int, @UserAccount float, @UserName nvarchar(255), @UserPassword nvarchar(16), @UserEmail nvarchar(32), @UserQQ nvarchar(18), @UserPhone nvarchar(13), @UserState nchar(1), @UserRealName nvarchar(8), @UserAddress nvarchar(255), @UserCompany nvarchar(50) ) AS UPDATE TbUser SET UserAccount=@UserAccount, UserName=@UserName, UserPassword=@UserPassword, UserEmail=@UserEmail, UserQQ=@UserQQ, UserPhone=@UserPhone, UserState=@UserState, UserRealName=@UserRealName, UserAddress=@UserAddress, UserCompany=@UserCompany WHERE UserID=@UserID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleSkin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleSkin] ( @ID int, @StyleName nvarchar(25), @StyleUrl nvarchar(255) ) AS UPDATE StyleList  SET StyleName = @StyleName, StyleUrl  = @StyleUrl WHERE ID = @ID  RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleQQ]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleQQ] ( @Id int, @qq nvarchar(25), @name nvarchar(25) ) AS UPDATE TbIM  SET qq = @qq, name  = @name WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleProduct]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleProduct] ( @ProId int, @ClassId nvarchar(500), @Paixu int, @ProName nvarchar(255), @ProBianhao nvarchar(100), @ProChandi nvarchar(100), @ProPrice nvarchar(100), @ProPath nvarchar(255), @ProKeyDescription ntext, @ProDescription ntext, @Keywords nvarchar(255), @State int ) AS UPDATE Product  SET ClassId  = @ClassId, Paixu=@Paixu, ProName=@ProName, ProBianhao=@ProBianhao, ProChandi=@ProChandi, ProPrice=@ProPrice, ProPath=@ProPath, ProKeyDescription=@ProKeyDescription, ProDescription=@ProDescription, Keywords=@Keywords, State=@State WHERE ProId = @ProId RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleProClass]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleProClass] ( @Id int, @Paixu int, @ParentId int, @Context nvarchar(255), @Content nvarchar(4000), @Path nvarchar(255), @State int ) AS UPDATE ProClass  SET Paixu=@Paixu, ParentId=@ParentId, Context=@Context, Content=@Content, Path=@Path, State=@State WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSinglePic]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSinglePic] ( @ID int, @ClassID int, @Paixu int, @Type nvarchar(25), @Length int, @Width int, @Path nvarchar(255), @Url nvarchar(255), @Beizhu nvarchar(255) ) AS UPDATE TbPic SET ClassID=@ClassID,Paixu=@Paixu,Type=@Type,Length=@Length,Width=@Width,Path=@Path,Url=@Url,Beizhu=@Beizhu WHERE ID= @ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleNews]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleNews] ( @Id int, @Paixu int, @Title nvarchar(255), @Url nvarchar(255), @Path nvarchar(255), @Fujian nvarchar(255), @KeyContent nvarchar(500), @Content ntext, @Keywords nvarchar(255), @Putdate nvarchar(19), @Istop int ) AS UPDATE News SET Title = @Title, Paixu=@Paixu, Url = @Url, Path  = @Path, Fujian=@Fujian, KeyContent=@KeyContent, Content=@Content, Keywords=@Keywords, Putdate=@Putdate, Istop=@Istop WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleMessage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleMessage] ( @Id int, @StateShenhe int, @StateHuifu int, @Reply nvarchar(255) ) AS UPDATE Message  SET StateShenhe = @StateShenhe, StateHuifu  = @StateHuifu, Reply=@Reply WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleLinksType]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleLinksType] (@Id int, @TypeTitle nvarchar(255)) AS UPDATE  LinksType SET TypeTitle = @TypeTitle WHERE Id  = @Id RETURN @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleLinks]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleLinks](@Id int,@Title nvarchar(255),@Url nvarchar(255),@Putdate nvarchar(19),@TypeID int)AS UPDATE Links SET Title = @Title,Url  = @Url, Putdate=@Putdate,TypeID=@TypeID WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleColumnList]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleColumnList] ( @Id int, @ParentId int, @ColumnType nvarchar(25), @ColumnName nvarchar(50), @ColumnSubName nvarchar(50), @ColumnNo int, @ColumnUrlClient nvarchar(100), @Role int, @IndexStatus int, @Remarks nvarchar(4000), @Path nvarchar(255), @Length int, @Width int ) AS UPDATE ColumnList  SET ParentId=@ParentId, ColumnType = @ColumnType, ColumnName  = @ColumnName, ColumnSubName=@ColumnSubName, ColumnNo=@ColumnNo, ColumnUrlClient=@ColumnUrlClient, Role=@Role, IndexStatus=@IndexStatus, Remarks=@Remarks, Path=@Path, Length=@Length, Width=@Width WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSingleAdmin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSingleAdmin] ( @ID int, @AdminPassword nvarchar(50) ) AS UPDATE Admin  SET AdminPassword  = @AdminPassword WHERE ID  = @ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSetupCode]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSetupCode] ( @ID int, @State nchar(1), @Content ntext ) AS select * from TbCode where Id=@ID if(@@rowcount<1) begin insert into TbCode ( ID, State, Content ) values ( @ID, @State, @Content ) end else begin update  TbCode set State=@State, Content=@Content where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSetForm]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSetForm] ( @FormID int, @FormState nchar(1), @FormContent ntext ) AS select * from TbSubmitForm where FormID=@FormID if(@@rowcount<1) begin insert into TbSubmitForm ( FormID, FormState, FormContent ) values ( @FormID, @FormState, @FormContent ) end else begin update TbSubmitForm set FormState=@FormState, FormContent=@FormContent where FormID=@FormID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateSEO]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateSEO] ( @ID int, @webTitle nvarchar(255), @webDescription nvarchar(255), @webKeywords nvarchar(255) ) AS select * from SEO where Id=@ID if(@@rowcount<1) begin insert into SEO ( ID, webTitle, webDescription, webKeywords ) values ( @ID, @webTitle, @webDescription, @webKeywords ) end else begin update  SEO  set webTitle=@webTitle, webDescription=@webDescription, webKeywords=@webKeywords where id=@id end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateProStaticPage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateProStaticPage] ( @ProID int, @StaticUrl nvarchar(25), @StaticPage nchar(1) ) AS UPDATE Product  SET StaticUrl = @StaticUrl, StaticPage = @StaticPage WHERE ProID = @ProID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateProductHits]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateProductHits] ( @ProId int ) AS UPDATE Product  SET Hits = Hits+1 WHERE ProId = @ProId  RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateNewsStaticPage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateNewsStaticPage] ( @ID int, @StaticUrl nvarchar(25), @StaticPage nchar(1) ) AS UPDATE News  SET StaticUrl = @StaticUrl, StaticPage = @StaticPage WHERE ID = @ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateNewsHits]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateNewsHits] ( @Id int ) AS UPDATE News  SET Hits = Hits+1 WHERE Id = @Id  RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateColumnStaticPage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateColumnStaticPage] ( @ID int, @ColumnStaticPage nvarchar(25), @StaticPage nchar(1) ) AS UPDATE ColumnList  SET ColumnStaticPage = @ColumnStaticPage, StaticPage = @StaticPage WHERE ID = @ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateBackGround]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateBackGround] (@ID int,@Path nvarchar(255),@State nchar(1),@bgState nchar(1),@bgPath nvarchar(255),@bgDisplayMode nchar(1))AS select * from TbWebSiteBg where ID=@ID if(@@rowcount<1) begin insert into TbWebSiteBg ( ID, Path, State, bgState, bgPath, bgDisplayMode ) values ( @ID, @Path, @State, @bgState, @bgPath, @bgDisplayMode ) end else begin update  TbWebSiteBg  set Path=@Path, State=@State, bgState=@bgState, bgPath=@bgPath, bgDisplayMode=@bgDisplayMode where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateAliPay]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateAliPay] ( @ID int, @PayState nchar(1), @PayName nvarchar(16), @PayDescription ntext, @PaySellerID nvarchar(32), @PayKeyID nvarchar(32), @PayPartnerID nvarchar(16), @PayType nvarchar(12) ) AS select * from TbAliPay where Id=@ID if(@@rowcount<1) begin insert into TbAliPay ( ID, PayState, PayName, PayDescription, PaySellerID, PayKeyID, PayPartnerID, PayType ) values ( @ID, @PayState, @PayName, @PayDescription, @PaySellerID, @PayKeyID, @PayPartnerID, @PayType ) end else begin update  TbAliPay  set PayState=@PayState, PayName=@PayName, PayDescription=@PayDescription, PaySellerID=@PaySellerID, PayKeyID=@PayKeyID, PayPartnerID=@PayPartnerID, PayType=@PayType where ID=@ID end RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateAdminPassword]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateAdminPassword] (  @AdminName  nvarchar(50),  @OldPwd nvarchar(50),  @NewPwd nvarchar(50) )  AS update  Admin  set  AdminPassword=@NewPwd where  AdminName=@AdminName and AdminPassword=@OldPwd RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_UpdateAbout]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_UpdateAbout] ( @ClassId int, @Content ntext, @Putdate nvarchar(19) ) AS select * from News where ClassId=@ClassId if(@@rowcount<1) begin insert into News ( ClassId, Content, Putdate ) values ( @ClassId, @Content, @Putdate ) end else begin update  News set Content=@Content, Putdate=@Putdate where ClassId=@ClassId end return @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_SetSkin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_SetSkin] ( @ID int ) AS UPDATE StyleList SET State=0 UPDATE StyleList SET State=1 WHERE ID  = @ID  RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_SetQQ]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_SetQQ] ( @ID int ) AS UPDATE TbIM SET State=1-State WHERE ID  = @ID  RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_SetColumnSEO]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_SetColumnSEO] ( @Id int, @ColumnTitle nvarchar(255), @ColumnDescription nvarchar(255), @ColumnKeywords nvarchar(255) ) AS UPDATE ColumnList  SET ColumnTitle = @ColumnTitle, ColumnDescription = @ColumnDescription, ColumnKeywords  = @ColumnKeywords WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_InsertSubmitform]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_InsertSubmitform] ( @FormContent ntext, @Putdate nvarchar(19) ) as insert into TbFormContent ( FormContent, Putdate )  values ( @FormContent, @Putdate )  RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetWesSite]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetWesSite] ( @Id int ) AS  SELECT  * FROM  Website  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetWebSiteControl]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetWebSiteControl] ( @Id int ) AS  SELECT  * FROM  WebsiteControl  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetWebMusic]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetWebMusic] ( @ID int ) AS  SELECT  * FROM  WebMusic  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetUser]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetUser] AS select * from TbUser order by UserID desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetTimeLimit]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetTimeLimit] ( @ID int ) AS  SELECT  * FROM  TbTimeLimit  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSupport]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSupport] ( @Id int ) AS  SELECT  * FROM  TbSupport  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSubmitList]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSubmitList] AS select ID,FormContent,Putdate from TbFormContent order by ID desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSubmitform]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSubmitform] ( @ID int ) AS  SELECT  * FROM  TbFormContent  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetStateSkin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetStateSkin] AS select * from StyleList where State=1
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetStateProducts]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetStateProducts] AS select * from Product where State=1 order by ProId desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSkin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSkin] AS select * from StyleList order by ID asc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleUser]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleUser] ( @UserID int ) AS SELECT  * FROM  TbUser WHERE  UserID = @UserID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleSkin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleSkin] ( @ID int ) AS  SELECT  * FROM  StyleList  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleQQ]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleQQ] ( @Id int ) AS  SELECT  * FROM TbIM  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleProduct]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleProduct] ( @Id int ) AS  SELECT  * FROM  Product  WHERE  ProId = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleProClass]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleProClass] ( @Id int ) AS  SELECT  * FROM  ProClass  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSinglePic]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSinglePic] ( @ID int ) AS  SELECT  * FROM  TbPic  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleParentColumnList]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleParentColumnList] ( @Id int ) AS  select Id,ColumnName,ColumnSubName from  ColumnList where Id=(select ParentId from ColumnList where Id=@Id)
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleNews]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleNews] ( @Id int ) AS  SELECT  * FROM News  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleMessage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleMessage] ( @Id int ) AS  SELECT  * FROM Message  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleLinksType]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleLinksType](@Id int) AS select * from linkstype where id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleLinks]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleLinks] (@Id int) AS SELECT *FROM  Links WHERE Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleColumnList]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleColumnList] ( @Id int ) AS  SELECT  * FROM ColumnList  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSingleAdmin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSingleAdmin] ( @ID int ) AS  SELECT  * FROM  Admin  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSetupCode]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSetupCode] ( @Id int ) AS  SELECT  * FROM  TbCode  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetSEO]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetSEO] ( @Id int ) AS  SELECT  * FROM SEO  WHERE  Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetRecentNews]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetRecentNews]  (  @ClassId int ) AS  select top 5 *  from  News where ClassId=@ClassId order by Istop desc,CONVERT(nvarchar(100),Putdate,23)  desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetQQState]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetQQState] AS select * from TbIM where State=0 order by id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetQQ]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetQQ] AS select * from TbIM order by id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetProducts]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetProducts]  (  @ClassId nvarchar(500) ) AS  select * from Product where ClassId like '%'+@ClassId+'%' order by Paixu desc,ProId desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetProClassSub]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetProClassSub] ( @ParentId int ) AS  SELECT  * FROM  ProClass  WHERE  ParentId = @ParentId
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetProClass]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetProClass] AS select * from ProClass order by Paixu desc,id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetPic]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetPic] AS select * from TbPic order by Paixu desc,ID desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetNews]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetNews]  (  @ClassId int ) AS  select *  from  News where classId=@ClassId order by Paixu desc,Istop desc,CONVERT(nvarchar(100),Putdate,23) desc,id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetMessage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetMessage] AS select * from Message order by id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetLog]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetLog] AS select * from TbLog order by id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetLinksType]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetLinksType] AS select * from linkstype order by id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetLinks_TypeID]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetLinks_TypeID](@TypeID int)AS SELECT L.ID,L.Title,L.Url,L.Putdate,T.TypeTitle from Links as L left join LinksType as T on L.TypeID=T.ID where L. TypeID=@TypeID order by L.id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetLinks]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetLinks] AS select L.ID,L.Title,L.Url,L.Putdate,T.TypeTitle from Links as L left join LinksType as T on L.TypeID=T.ID order by L.id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetForm]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetForm] ( @FormID int ) AS  SELECT  * FROM  TbSubmitForm  WHERE  FormID = @FormID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetColumnListSub]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetColumnListSub] ( @ParentId int ) AS  SELECT  * FROM ColumnList  WHERE  ParentId = @ParentId
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetColumnListMaxId]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetColumnListMaxId] AS select max(id) as MaxId from ColumnList
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetColumnList]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetColumnList] AS select * from ColumnList order by id desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetBackGround]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetBackGround](@ID int)AS SELECT* FROM TbWebSiteBg WHERE ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetAllProducts]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetAllProducts] AS select * from Product order by Paixu desc,ProId desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetAliPay]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetAliPay] ( @ID int ) AS  SELECT  * FROM  TbAliPay  WHERE  ID = @ID
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetAdminLogin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetAdminLogin] ( @AdminName nvarchar(50), @AdminPassword nvarchar(50) ) AS  SELECT  AdminName,  Role FROM Admin  WHERE  AdminName = @AdminName AND AdminPassword = @AdminPassword
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetAdmin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetAdmin] AS select * from Admin where Role=0 order by ID desc
GO
/****** Object:  StoredProcedure [dbo].[Pr_GetAbout]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_GetAbout] ( @ClassId int ) AS  SELECT  * FROM News  WHERE  ClassId = @ClassId
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleUser]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleUser] ( @UserID int ) AS DELETE from TbUser WHERE UserID = @UserID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleSubmit]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleSubmit] ( @ID int ) AS DELETE from TbFormContent WHERE ID = @ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleSkin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleSkin] ( @ID int ) AS DELETE from StyleList WHERE ID = @ID  RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleQQ]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleQQ] ( @Id int ) AS DELETE from TbIM WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleProduct]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleProduct] ( @Id int ) AS DELETE from Product WHERE ProId = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleProClass]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleProClass] ( @Id int ) AS DELETE from ProClass WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSinglePic]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSinglePic] ( @ID int ) AS DELETE from TbPic WHERE ID = @ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleNews]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleNews] ( @Id int ) AS DELETE from News WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleMessage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleMessage] ( @Id int ) AS DELETE from Message WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleLog]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleLog] ( @Id int ) AS DELETE from TbLog WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleLinksType]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleLinksType](@Id int)AS DELETE from LinksType WHERE  Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleLinks]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleLinks](@Id int) AS DELETE from Links WHERE Id = @Id RETURN @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleColumnList]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleColumnList] ( @Id int ) AS DELETE from ColumnList WHERE Id = @Id RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteSingleAdmin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteSingleAdmin] ( @ID int ) AS DELETE from Admin WHERE ID = @ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteLikeProduct]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteLikeProduct] ( @ClassId nvarchar(500) ) AS DELETE from Product WHERE ClassID like '%'+@ClassId+'%' RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_DeleteBackGround]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_DeleteBackGround] ( @ID int ) AS DELETE from TbWebSiteBg where ID=@ID RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleUser]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleUser] ( @UserAccount float(8), @UserName nvarchar(255), @UserPassword nvarchar(16), @UserEmail nvarchar(32), @UserQQ nvarchar(18), @UserPhone nvarchar(13), @UserState nchar(1), @UserRealName nvarchar(8), @UserAddress nvarchar(255), @UserCompany nvarchar(50), @Putdate nvarchar(19) ) AS select * from TbUser where UserName=@UserName if(@@rowcount<1) begin INSERT INTO TbUser ( UserAccount, UserName, UserPassword, UserEmail, UserQQ, UserPhone, UserState, UserRealName, UserAddress, UserCompany, Putdate ) VALUES ( @UserAccount, @UserName, @UserPassword, @UserEmail, @UserQQ, @UserPhone, @UserState, @UserRealName, @UserAddress, @UserCompany, @Putdate ) RETURN  @@Identity end else return @@rowcount
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleSkin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleSkin] ( @StyleName nvarchar(25), @StyleUrl nvarchar(255) ) AS  INSERT INTO StyleList ( StyleName, StyleUrl ) VALUES ( @StyleName, @StyleUrl ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleQQ]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleQQ] ( @qq nvarchar(25), @name nvarchar(25) ) AS  INSERT INTO TbIM ( qq, name ) VALUES ( @qq, @name ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleProduct]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleProduct] ( @ClassId nvarchar(500), @Paixu int, @ProName nvarchar(255), @ProBianhao nvarchar(100), @ProChandi nvarchar(100), @ProPrice nvarchar(100), @ProPath nvarchar(255), @ProKeyDescription ntext, @ProDescription ntext, @Keywords nvarchar(255), @Putdate nvarchar(19), @State int ) AS  INSERT INTO Product ( ClassId, Paixu, ProName, ProBianhao, ProChandi, ProPrice, ProPath, ProKeyDescription, ProDescription, Keywords, Putdate, State ) VALUES ( @ClassId, @Paixu, @ProName, @ProBianhao, @ProChandi, @ProPrice, @ProPath, @ProKeyDescription, @ProDescription, @Keywords, @Putdate, @State ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleProClass]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleProClass] ( @Paixu int, @ParentId int, @Context nvarchar(255) ) AS  INSERT INTO ProClass ( Paixu, ParentId, Context ) VALUES ( @Paixu, @ParentId, @Context ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSinglePic]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSinglePic] ( @ClassID int, @Paixu int, @Type nvarchar(25), @Length int, @Width int, @Path nvarchar(255), @Url nvarchar(255), @Beizhu nvarchar(255), @Putdate nvarchar(19) ) AS  INSERT INTO TbPic ( ClassID, Paixu, Type, Length, Width, Path, Url, Beizhu, Putdate ) VALUES ( @ClassID, @Paixu, @Type, @Length, @Width, @Path, @Url, @Beizhu, @Putdate ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleNews]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleNews] ( @ClassId int, @Paixu int, @Title nvarchar(255), @Url nvarchar(255), @Path nvarchar( 255), @Fujian nvarchar(255), @KeyContent nvarchar(500), @Content ntext, @Keywords nvarchar(255), @Putdate nvarchar(19), @Istop int ) AS  INSERT INTO News ( ClassId,  Paixu, Title, Url, Path, Fujian, KeyContent, Content, Keywords, Putdate, Istop ) VALUES ( @ClassId,  @Paixu, @Title, @Url, @Path, @Fujian, @KeyContent, @Content, @Keywords, @Putdate, @Istop ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleMessage]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleMessage] ( @Title nvarchar(255), @Realname nvarchar(25), @Phone nvarchar(25), @Email nvarchar(25), @Content nvarchar(4000), @Putdate nvarchar(19) ) AS  INSERT INTO Message ( Title, Realname, Phone, Email, Content, Putdate ) VALUES ( @Title, @Realname, @Phone, @Email, @Content, @Putdate ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleLog]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleLog] ( @Times nvarchar(19), @IP nvarchar(15), @UserName nvarchar(50), @Result nvarchar(255) ) AS  INSERT INTO TbLog ( Times, IP, UserName, Result ) VALUES ( @Times, @IP, @UserName, @Result ) RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleLinksType]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleLinksType](@TypeTitle nvarchar(255)) AS INSERT INTO LinksType(TypeTitle) VALUES( @TypeTitle)  RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleLinks]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleLinks](@Title nvarchar(255), @Url nvarchar(255),@Putdate nvarchar(19), @TypeID int)AS INSERT INTO  Links ( Title,Url, Putdate,TypeID )VALUES(@Title, @Url,@Putdate,@TypeID)RETURN  @@Identity
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleColumnList]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleColumnList] ( @Id int, @ColumnType nvarchar(25), @ColumnName nvarchar(50), @ColumnSubName nvarchar(50), @ColumnNo int, @ColumnUrlClient nvarchar(100), @ParentId int, @Role int, @IndexStatus int, @Remarks nvarchar(4000), @Path nvarchar(255), @Length int, @Width int ) AS  INSERT INTO ColumnList ( Id, ColumnType, ColumnName, ColumnSubName, ColumnNo, ColumnUrlClient, ParentId, Role, IndexStatus, Remarks, Path, Length, Width ) VALUES ( @Id, @ColumnType, @ColumnName, @ColumnSubName, @ColumnNo, @ColumnUrlClient, @ParentId, @Role, @IndexStatus, @Remarks, @Path, @Length, @Width ) RETURN  @@ROWCOUNT
GO
/****** Object:  StoredProcedure [dbo].[Pr_AddSingleAdmin]    Script Date: 02/03/2024 17:23:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pr_AddSingleAdmin] ( @AdminName nvarchar(50), @AdminPassword nvarchar(50) ) AS select AdminName from Admin where AdminName=@AdminName if(@@rowcount<1) begin INSERT INTO Admin ( AdminName, AdminPassword ) VALUES ( @AdminName, @AdminPassword ) RETURN  @@Identity end else return @@rowcount
GO
/****** Object:  Default [DF__Admin__Role__04E4BC85]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [Role]
GO
/****** Object:  Default [DF__Admin__Logins__05D8E0BE]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [Logins]
GO
/****** Object:  Default [DF__Admin__State__06CD04F7]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__ColumnLis__Paren__07C12930]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF__ColumnLis__Colum__08B54D69]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [ColumnNo]
GO
/****** Object:  Default [DF__ColumnLis__Statu__09A971A2]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__ColumnLis__Index__0A9D95DB]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [IndexStatus]
GO
/****** Object:  Default [DF__ColumnList__Role__0B91BA14]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [Role]
GO
/****** Object:  Default [DF__ColumnLis__Stati__0C85DE4D]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [StaticPage]
GO
/****** Object:  Default [DF__ColumnLis__Lengt__0D7A0286]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [Length]
GO
/****** Object:  Default [DF__ColumnLis__Width__0E6E26BF]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ColumnList] ADD  DEFAULT ((0)) FOR [Width]
GO
/****** Object:  Default [DF__Links__Paixu__0F624AF8]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Links] ADD  DEFAULT ((0)) FOR [Paixu]
GO
/****** Object:  Default [DF__Links__Status__10566F31]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Links] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__Links__Type__114A936A]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Links] ADD  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF__Message__StateSh__123EB7A3]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Message] ADD  DEFAULT ((0)) FOR [StateShenhe]
GO
/****** Object:  Default [DF__Message__StateHu__1332DBDC]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Message] ADD  DEFAULT ((0)) FOR [StateHuifu]
GO
/****** Object:  Default [DF__News__Paixu__14270015]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[News] ADD  DEFAULT ((0)) FOR [Paixu]
GO
/****** Object:  Default [DF__News__Hits__151B244E]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[News] ADD  DEFAULT ((0)) FOR [Hits]
GO
/****** Object:  Default [DF__News__Istop__160F4887]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[News] ADD  DEFAULT ((0)) FOR [Istop]
GO
/****** Object:  Default [DF__News__State__17036CC0]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[News] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__News__Status__17F790F9]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[News] ADD  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF__News__StaticPage__18EBB532]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[News] ADD  DEFAULT ((0)) FOR [StaticPage]
GO
/****** Object:  Default [DF__ProClass__Paixu__19DFD96B]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ProClass] ADD  DEFAULT ((0)) FOR [Paixu]
GO
/****** Object:  Default [DF__ProClass__Parent__1AD3FDA4]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ProClass] ADD  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF__ProClass__State__1BC821DD]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ProClass] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__ProClass__Shulia__1CBC4616]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[ProClass] ADD  DEFAULT ((0)) FOR [Shuliang]
GO
/****** Object:  Default [DF__Product__Paixu__1DB06A4F]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Paixu]
GO
/****** Object:  Default [DF__Product__Hits__1EA48E88]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Hits]
GO
/****** Object:  Default [DF__Product__State__1F98B2C1]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__Product__StaticP__208CD6FA]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [StaticPage]
GO
/****** Object:  Default [DF__StyleList__State__2180FB33]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[StyleList] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__tb_tongji__numbe__22751F6C]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[tb_tongji] ADD  DEFAULT ((0)) FOR [number]
GO
/****** Object:  Default [DF__TbAliPay__PaySta__236943A5]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbAliPay] ADD  DEFAULT ((0)) FOR [PayState]
GO
/****** Object:  Default [DF__TbIM__State__245D67DE]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbIM] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__TbLiulian__Numbe__25518C17]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbLiuliang] ADD  DEFAULT ((0)) FOR [Number]
GO
/****** Object:  Default [DF__TbPic__Paixu__2645B050]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbPic] ADD  DEFAULT ((0)) FOR [Paixu]
GO
/****** Object:  Default [DF__TbQuery__State__2739D489]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbQuery] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__TbSubmitF__FormS__282DF8C2]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbSubmitForm] ADD  DEFAULT ((0)) FOR [FormState]
GO
/****** Object:  Default [DF__TbSupport__State__29221CFB]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbSupport] ADD  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF__TbSupport__State__2A164134]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbSupport] ADD  DEFAULT ((1)) FOR [StateManage]
GO
/****** Object:  Default [DF__TbSupport__State__2B0A656D]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbSupport] ADD  DEFAULT ((1)) FOR [StateSitemap]
GO
/****** Object:  Default [DF__TbTimeLim__SMSSt__2BFE89A6]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbTimeLimit] ADD  DEFAULT ((0)) FOR [SMSState]
GO
/****** Object:  Default [DF__TbTimeLim__Price__2CF2ADDF]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbTimeLimit] ADD  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  Default [DF__TbUser__UserAcco__2DE6D218]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbUser] ADD  DEFAULT ((0)) FOR [UserAccount]
GO
/****** Object:  Default [DF__TbUser__UserStat__2EDAF651]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbUser] ADD  DEFAULT ((0)) FOR [UserState]
GO
/****** Object:  Default [DF__TbWebSite__State__2FCF1A8A]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbWebSiteBg] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__TbWebSite__bgSta__30C33EC3]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbWebSiteBg] ADD  DEFAULT ((0)) FOR [bgState]
GO
/****** Object:  Default [DF__TbWebSite__bgDis__31B762FC]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[TbWebSiteBg] ADD  DEFAULT ((0)) FOR [bgDisplayMode]
GO
/****** Object:  Default [DF__WebMusic__State__32AB8735]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[WebMusic] ADD  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF__Website__NameSta__339FAB6E]    Script Date: 02/03/2024 17:23:11 ******/
ALTER TABLE [dbo].[Website] ADD  DEFAULT ((0)) FOR [NameState]
GO
