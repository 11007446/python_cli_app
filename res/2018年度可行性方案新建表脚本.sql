USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[proposerbaseinfo_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[proposerbaseinfo_2018](
	[id] [numeric](19, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[name] [varchar](200) NULL,
	[gender] [varchar](200) NULL,
	[nation] [varchar](200) NULL,
	[birthday] [datetime] NULL,
	[title] [varchar](200) NULL,
	[duty] [varchar](200) NULL,
	[polityrank] [varchar](200) NULL,
	[biradd] [varchar](200) NULL,
	[backdate] [datetime] NULL,
	[degree] [varchar](200) NULL,
	[offernation] [varchar](200) NULL,
	[offerdate] [datetime] NULL,
	[offersch] [varchar](200) NULL,
	[speciality] [varchar](200) NULL,
	[stunation] [varchar](200) NULL,
	[stubdate] [datetime] NULL,
	[stuedate] [datetime] NULL,
	[stuspec] [varchar](200) NULL,
	[stutype] [varchar](200) NULL,
	[stuway] [varchar](200) NULL,
	[hasteacher] [varchar](200) NULL,
	[language] [varchar](200) NULL,
	[firstworkDate] [datetime] NULL,
	[hasoccupancy] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[mobile] [varchar](200) NULL,
	[unit] [varchar](200) NULL,
	[residence] [varchar](200) NULL,
	[idnumber] [varchar](50) NULL,
	[cardbdate] [datetime] NULL,
	[cardedate] [datetime] NULL,
	[fax] [varchar](200) NULL,
	[unitadd] [varchar](200) NULL,
	[unitphone] [varchar](200) NULL,
	[unitpost] [varchar](200) NULL,
	[homeadd] [varchar](200) NULL,
	[homephone] [varchar](200) NULL,
	[homepost] [varchar](200) NULL,
	[cardate] [datetime] NULL,
	[passtype] [varchar](200) NULL,
	[passnumber] [varchar](200) NULL,
	[contractbdate] [datetime] NULL,
	[contractedate] [datetime] NULL,
	[ptjob1] [varchar](200) NULL,
	[ptjob2] [varchar](200) NULL,
	[ptjob3] [varchar](200) NULL,
	[formersch] [varchar](200) NULL,
	[mothersch] [varchar](200) NULL,
	[graddate] [datetime] NULL,
	[gradspec] [varchar](200) NULL,
	[graddegree] [varchar](200) NULL,
	[stuschename] [varchar](500) NULL,
	[stuschcname] [varchar](500) NULL,
	[postdoctoralunitename] [varchar](200) NULL,
	[postdoctoralunitcname] [varchar](200) NULL,
	[beforeunitename] [varchar](200) NULL,
	[beforeunitcname] [varchar](200) NULL,
	[repararticleename] [varchar](4000) NULL,
	[repararticlecname] [varchar](4000) NULL,
	[magazine] [varchar](2000) NULL,
	[releasedate] [varchar](200) NULL,
	[reppatentename] [varchar](500) NULL,
	[reppatentcname] [varchar](500) NULL,
	[repofferdate] [datetime] NULL,
	[transferlucre] [varchar](200) NULL,
	[offunit] [varchar](200) NULL,
	[repfruitename] [varchar](500) NULL,
	[repfruitcname] [varchar](500) NULL,
	[transfercircs] [varchar](200) NULL,
	[bookmakingename] [varchar](500) NULL,
	[bookmakingcname] [varchar](500) NULL,
	[publishdate] [datetime] NULL,
	[bookconcern] [varchar](200) NULL,
	[achievement] [text] NULL,
	[pj_date1] [varchar](50) NULL,
	[pj_date2] [varchar](50) NULL,
	[pj_date3] [varchar](50) NULL,
	[pj_code3] [varchar](200) NULL,
	[pj_code2] [varchar](200) NULL,
	[pj_code1] [varchar](200) NULL,
	[subjectmeaning] [text] NULL,
	[outlaybudget] [text] NULL,
	[appurtenance] [text] NULL,
	[manageropinion] [text] NULL,
	[expgroupopinion] [text] NULL,
	[officeopinion] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[proposerbaseinfo_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[proposerbaseinfo_2018] ADD  CONSTRAINT [DF_proposerbaseinfo_2018_achievement]  DEFAULT (' ') FOR [achievement]
GO
ALTER TABLE [dbo].[proposerbaseinfo_2018] ADD  CONSTRAINT [DF_proposerbaseinfo_2018_subjectmeaning]  DEFAULT ('') FOR [subjectmeaning]
GO
ALTER TABLE [dbo].[proposerbaseinfo_2018] ADD  CONSTRAINT [DF_proposerbaseinfo_2018_outlaybudget]  DEFAULT ('') FOR [outlaybudget]
GO
ALTER TABLE [dbo].[proposerbaseinfo_2018] ADD  CONSTRAINT [DF_proposerbaseinfo_2018_appurtenance]  DEFAULT ('') FOR [appurtenance]
GO
ALTER TABLE [dbo].[proposerbaseinfo_2018] ADD  CONSTRAINT [DF_proposerbaseinfo_2018_manageropinion]  DEFAULT ('') FOR [manageropinion]
GO
ALTER TABLE [dbo].[proposerbaseinfo_2018] ADD  CONSTRAINT [DF_proposerbaseinfo_2018_expgroupopinion]  DEFAULT ('') FOR [expgroupopinion]
GO
ALTER TABLE [dbo].[proposerbaseinfo_2018] ADD  CONSTRAINT [DF_proposerbaseinfo_2018_officeopinion]  DEFAULT ('') FOR [officeopinion]
GO

USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_animal_1_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_animal_1_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[p_num] [varchar](50) NULL,
	[place] [varchar](200) NULL,
	[licence] [varchar](50) NULL,
	[people_num] [varchar](50) NULL,
	[date_in] [datetime] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wky_animal_1_2018] ADD [createTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wky_animal_1_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wky_animal_1_2018] ADD [lastUpdateTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wky_animal_1_2018] ADD [lastUpdator] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_animal_1_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_animal_1_2018] ADD  CONSTRAINT [DF_wky_animal_1_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO
ALTER TABLE [dbo].[wky_animal_1_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wky_animal_1_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO

USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_animal_2_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_animal_2_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[p_num] [varchar](500) NULL,
	[pe_tag] [varchar](500) NULL,
	[kind] [varchar](500) NULL,
	[lev] [varchar](500) NULL,
	[purpose] [varchar](400) NULL,
	[source] [varchar](200) NULL,
	[date_in] [datetime] NOT NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL,
	[permitNum] [varchar](500) NULL,
	[produceOrg] [varchar](500) NULL,
	[produceNum] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_animal_2_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_animal_2_2018] ADD  CONSTRAINT [DF_wky_animal_2_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO
ALTER TABLE [dbo].[wky_animal_2_2018] ADD  CONSTRAINT [DF__wky_anima_2018_creat__3198132C2]  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wky_animal_2_2018] ADD  CONSTRAINT [DF__wky_anima_2018_lastU__328C526FB]  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_attachment_2018_file]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_attachment_2018_file](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NOT NULL,
	[title] [varchar](500) NULL,
	[filename] [varchar](500) NULL,
	[date_in] [datetime] NOT NULL,
	[outputFileName] [varchar](500) NULL,
	[subtableid] [varchar](50) NULL,
	[atttype] [varchar](50) NULL,
	[wky_attachment_2018_fileid] [uniqueidentifier] NULL,
	[wky_attachment_2018_filename] [nvarchar](100) NULL,
	[filefullpath] [nvarchar](500) NULL,
	[tag] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_attachment_2018_file] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_attachment_2018_file] ADD  DEFAULT (getdate()) FOR [date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_checkindex_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wky_checkindex_2018](
	[p_id] [varchar](50) NOT NULL,
	[pattotal] [varchar](50) NULL,
	[patinvent] [varchar](50) NULL,
	[patutility] [varchar](50) NULL,
	[patfacade] [varchar](50) NULL,
	[patsoftware] [varchar](50) NULL,
	[paticc] [varchar](50) NULL,
	[patoth] [varchar](50) NULL,
	[sttotal] [varchar](50) NULL,
	[stinter] [varchar](50) NULL,
	[stnation] [varchar](50) NULL,
	[stindustry] [varchar](50) NULL,
	[stlocal] [varchar](50) NULL,
	[stenter] [varchar](50) NULL,
	[fournew] [varchar](50) NULL,
	[scithesis] [varchar](50) NULL,
	[publishbook] [varchar](50) NULL,
	[planpv] [varchar](50) NULL,
	[planoutput] [varchar](50) NULL,
	[planprofit] [varchar](50) NULL,
	[plantax] [varchar](50) NULL,
	[traindoctor] [varchar](50) NULL,
	[trainmaster] [varchar](50) NULL,
	[nationproj] [varchar](50) NULL,
	[nationprojmoney] [varchar](50) NULL,
	[createdate] [datetime] NULL,
	[p_jindu_1_year] [varchar](50) NULL,
	[p_jindu_1] [text] NULL,
	[p_jindu_2_year] [varchar](50) NULL,
	[p_jindu_2] [text] NULL,
	[p_jindu_3_year] [varchar](50) NULL,
	[p_jindu_3] [text] NULL,
	[p_jindu_4_year] [varchar](50) NULL,
	[p_jindu_4] [text] NULL,
	[pj_date] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[wky_checkindex_2018] ADD  CONSTRAINT [DF_wky_checkindex_2018_createdate]  DEFAULT (getdate()) FOR [createdate]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_image_2018_file]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[wky_image_2018_file](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NOT NULL,
	[title] [varchar](500) NULL,
	[filename] [varchar](500) NULL,
	[date_in] [datetime] NOT NULL,
	[outputFileName] [varchar](500) NOT NULL,
	[subtableid] [varchar](50) NULL,
	[pictype] [varchar](50) NULL,
	[wky_image_2018_fileid] [uniqueidentifier] NULL,
	[wky_image_2018_filename] [nvarchar](100) NULL,
	[filefullpath] [nvarchar](500) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wky_image_2018_file] ADD [atttype] [varchar](20) NULL
/****** Object:  Index [PK_wky_image_2018_file]    Script Date: 08/03/2018 10:00:33 ******/
ALTER TABLE [dbo].[wky_image_2018_file] ADD  CONSTRAINT [PK_wky_image_2018_file] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[wky_image_2018_file] ADD  CONSTRAINT [DF_wky_image_2018_file_date_in]  DEFAULT (getdate()) FOR [date_in]
GO


USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_intercooperate_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_intercooperate_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[p1] [varchar](50) NULL,
	[p2] [varchar](100) NULL,
	[p3] [varchar](50) NULL,
	[p4] [varchar](50) NULL,
	[p5] [varchar](400) NULL,
	[p6] [varchar](50) NULL,
	[p7] [varchar](50) NULL,
	[p8] [varchar](400) NULL,
	[p9] [varchar](50) NULL,
	[p10] [varchar](50) NULL,
	[p11] [varchar](50) NULL,
	[p12] [varchar](50) NULL,
	[p13] [varchar](100) NULL,
	[p14] [varchar](50) NULL,
	[p15] [varchar](400) NULL,
	[p16] [varchar](50) NULL,
	[p17] [varchar](50) NULL,
	[p18] [varchar](100) NULL,
	[p19] [varchar](200) NULL,
	[p20] [varchar](100) NULL,
	[p21] [varchar](100) NULL,
	[p22] [varchar](500) NULL,
	[p23] [varchar](50) NULL,
	[p24] [varchar](50) NULL,
	[p25] [varchar](50) NULL,
	[p26] [varchar](50) NULL,
	[p27] [varchar](50) NULL,
	[p28] [varchar](100) NULL,
	[p29] [varchar](50) NULL,
	[p30] [varchar](100) NULL,
	[p31] [varchar](50) NULL,
	[p32] [varchar](100) NULL,
	[p33] [varchar](50) NULL,
	[p34] [varchar](50) NULL,
	[p35] [varchar](50) NULL,
	[p36] [varchar](50) NULL,
	[p37] [varchar](50) NULL,
	[p38] [varchar](50) NULL,
	[p39] [varchar](50) NULL,
	[p40] [varchar](50) NULL,
	[p41] [varchar](50) NULL,
	[p42] [varchar](50) NULL,
	[p43] [varchar](50) NULL,
	[p44] [varchar](50) NULL,
	[p45] [varchar](50) NULL,
	[p46] [varchar](50) NULL,
	[p47] [varchar](1000) NULL,
	[date_in] [datetime] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [createTime] [datetime] NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [lastUpdator] [varchar](500) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [lastUpdateTime] [datetime] NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [p48] [varchar](1000) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [p49] [varchar](1000) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [p50] [varchar](1000) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [p51] [varchar](1000) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [p52] [varchar](1000) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [p53] [varchar](1000) NULL
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD [p54] [varchar](1000) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_intercooperate_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_intercooperate_2018] ADD  CONSTRAINT [DF_wky_intercooperate_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_knowpr_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_knowpr_2018](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[p1] [varchar](50) NULL,
	[p2] [varchar](50) NULL,
	[p3] [varchar](50) NULL,
	[p4] [varchar](50) NULL,
	[p5] [varchar](50) NULL,
	[p6] [varchar](50) NULL,
	[p7] [varchar](50) NULL,
	[p8] [varchar](50) NULL,
	[p9] [varchar](50) NULL,
	[p10] [varchar](50) NULL,
	[p11] [varchar](50) NULL,
	[p12] [varchar](50) NULL,
	[p13] [varchar](50) NULL,
	[p14] [varchar](50) NULL,
	[p15] [varchar](50) NULL,
	[p16] [varchar](50) NULL,
	[p17] [varchar](50) NULL,
	[p18] [varchar](50) NULL,
	[p19] [varchar](50) NULL,
	[p20] [varchar](50) NULL,
	[p21] [varchar](50) NULL,
	[p22] [varchar](50) NULL,
	[p23] [varchar](50) NULL,
	[p24] [varchar](50) NULL,
	[p25] [varchar](50) NULL,
	[p26] [varchar](50) NULL,
	[p27] [varchar](50) NULL,
	[p28] [varchar](50) NULL,
	[p29] [varchar](50) NULL,
	[p30] [varchar](50) NULL,
	[p31] [varchar](50) NULL,
	[p32] [varchar](50) NULL,
	[p33] [varchar](50) NULL,
	[p34] [varchar](50) NULL,
	[p35] [varchar](50) NULL,
	[p36] [varchar](50) NULL,
	[p37] [varchar](50) NULL,
	[p38] [varchar](50) NULL,
	[p39] [varchar](1000) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wky_knowpr_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wky_knowpr_2018] ADD [createTime] [datetime] NULL
ALTER TABLE [dbo].[wky_knowpr_2018] ADD [lastUpdator] [varchar](500) NULL
ALTER TABLE [dbo].[wky_knowpr_2018] ADD [lastUpdateTime] [datetime] NULL
ALTER TABLE [dbo].[wky_knowpr_2018] ADD [rowguid] [uniqueidentifier] NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_knowpr_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_kp_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_kp_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[buildmeaning] [text] NULL,
	[buildcontent] [text] NULL,
	[effectmap] [varchar](5000) NULL,
	[fwmap] [varchar](5000) NULL,
	[oldt1] [varchar](50) NULL,
	[oldt2] [varchar](50) NULL,
	[oldt3] [varchar](50) NULL,
	[oldt4] [varchar](50) NULL,
	[oldt5] [varchar](50) NULL,
	[oldt6] [text] NULL,
	[newt1] [varchar](50) NULL,
	[newt2] [varchar](50) NULL,
	[newt3] [varchar](50) NULL,
	[newt4] [varchar](50) NULL,
	[newt5] [varchar](50) NULL,
	[newt6] [text] NULL,
	[oldc1] [varchar](1000) NULL,
	[oldc2] [varchar](1000) NULL,
	[newc1] [varchar](1000) NULL,
	[newc2] [varchar](1000) NULL,
	[ensurecontent] [text] NULL,
	[machinecontent] [text] NULL,
	[p_zz00] [varchar](50) NULL,
	[p_money10] [varchar](50) NULL,
	[money2] [varchar](50) NULL,
	[money3] [varchar](50) NULL,
	[money4] [varchar](50) NULL,
	[money5] [varchar](50) NULL,
	[thistotalmoney] [varchar](50) NULL,
	[thismoney1] [varchar](50) NULL,
	[thismoney2] [varchar](50) NULL,
	[thismoney3] [varchar](50) NULL,
	[thismoney4] [varchar](50) NULL,
	[thismoney5] [varchar](50) NULL,
	[guidecontent] [text] NULL,
	[orgopinion] [text] NULL,
	[orgopinionsign] [varchar](50) NULL,
	[modidate] [datetime] NULL,
	[date_in] [datetime] NULL,
	[orgopiniondate] [datetime] NULL,
	[rowguid] [uniqueidentifier] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_kp_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_kp_2018] ADD  CONSTRAINT [DF_wky_kpplan_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO

USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_kpexhibit_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_kpexhibit_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[ename] [varchar](500) NULL,
	[emoney] [varchar](50) NULL,
	[ethismoney] [varchar](50) NULL,
	[ememo] [varchar](5000) NULL,
	[exnum] [varchar](50) NULL,
	[edate1] [datetime] NULL,
	[edate2] [datetime] NULL,
	[edate3] [datetime] NULL,
	[edescontent] [varchar](5000) NULL,
	[etotalmoney] [varchar](50) NULL,
	[tjtag] [varchar](50) NULL,
	[date_in] [datetime] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[stcsmmoney] [varchar](50) NULL,
	[qumoney] [varchar](50) NULL,
	[othermoney] [varchar](50) NULL,
	[ordernum] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_kpexhibit_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_kpexhibit_2018] ADD  CONSTRAINT [DF_wky_kpexhibit_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO

USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_kpexhibitdetail_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_kpexhibitdetail_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[kpexhibit_id] [varchar](50) NULL,
	[pnum] [int] NULL,
	[p1] [varchar](50) NULL,
	[p2] [varchar](500) NULL,
	[p3] [varchar](500) NULL,
	[p4] [varchar](50) NULL,
	[p5] [varchar](50) NULL,
	[p6] [varchar](50) NULL,
	[date_in] [datetime] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[resourse] [varchar](50) NULL,
	[costtype] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_kpexhibitdetail_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_kpexhibitdetail_2018] ADD  CONSTRAINT [DF_wky_kpexhibitdetail_2018_p4]  DEFAULT ('0') FOR [p4]
GO
ALTER TABLE [dbo].[wky_kpexhibitdetail_2018] ADD  CONSTRAINT [DF_wky_kpexhibitdetail_2018_p5]  DEFAULT ('0') FOR [p5]
GO
ALTER TABLE [dbo].[wky_kpexhibitdetail_2018] ADD  CONSTRAINT [DF_wky_kpexhibitdetail_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_kpplan_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_kpplan_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[p_num] [int] NULL,
	[plandate] [varchar](50) NULL,
	[plancontent] [text] NULL,
	[date_in] [datetime] NULL,
	[rowguid] [uniqueidentifier] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_kpplan_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_kpplan_2018] ADD  CONSTRAINT [DF_wky_kpplan_2018_date_in_1]  DEFAULT (getdate()) FOR [date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_largeapparatusbaesinfo_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wky_largeapparatusbaesinfo_2018](
	[eid] [varchar](50) NOT NULL,
	[P_id] [varchar](50) NOT NULL,
	[facilityEngName] [varchar](300) NULL,
	[typeCode] [varchar](50) NULL,
	[fromCountry] [varchar](50) NULL,
	[manufacturer] [varchar](300) NULL,
	[keyParameter] [varchar](800) NULL,
	[useType] [varchar](50) NULL,
	[useFor] [varchar](100) NULL,
	[useField] [varchar](100) NULL,
	[yearUseHour] [varchar](50) NULL,
	[ifshare] [varchar](50) NULL,
	[ifNotShareReason] [varchar](500) NULL,
	[planYearShareHour] [varchar](50) NULL,
	[usePersonNum] [varchar](50) NULL,
	[usePersonHigh] [varchar](50) NULL,
	[usePersonMiddle] [varchar](50) NULL,
	[usePersonLow] [varchar](50) NULL,
	[useSituation] [varchar](500) NULL,
	[shareSevDept] [varchar](100) NULL,
	[shareSevContact] [varchar](100) NULL,
	[shareSevPhone] [varchar](100) NULL,
	[shareSevTime] [varchar](100) NULL,
	[shareSevType] [varchar](50) NULL,
	[shareSevPlanField] [varchar](500) NULL,
	[degdes] [varchar](500) NULL,
	[degdestype] [varchar](500) NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL,
	[cnnameplan1] [varchar](500) NULL,
	[cnnameplan2] [varchar](500) NULL,
	[cnnameplan3] [varchar](500) NULL,
	[ennameplan1] [varchar](500) NULL,
	[ennameplan2] [varchar](500) NULL,
	[ennameplan3] [varchar](500) NULL,
	[modelplan1] [varchar](500) NULL,
	[modelplan2] [varchar](500) NULL,
	[modelplan3] [varchar](500) NULL,
	[instrumentplan1] [varchar](500) NULL,
	[instrumentplan2] [varchar](500) NULL,
	[instrumentplan3] [varchar](500) NULL,
	[fromCountryplan1] [varchar](500) NULL,
	[fromCountryplan2] [varchar](500) NULL,
	[fromCountryplan3] [varchar](500) NULL,
	[manufacturerplan1] [varchar](500) NULL,
	[manufacturerplan2] [varchar](500) NULL,
	[manufacturerplan3] [varchar](500) NULL,
	[priceplan1] [varchar](500) NULL,
	[priceplan2] [varchar](500) NULL,
	[priceplan3] [varchar](500) NULL,
	[projYearUseHour] [varchar](50) NULL,
	[instrumentpurpose] [varchar](500) NULL,
	[installSite] [varchar](5000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_largeapparatusbaesinfo_2018] 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_largeapparatusbaesinfo_2018] ADD  CONSTRAINT [DF__wky_large_2018__creat__02883E1E]  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wky_largeapparatusbaesinfo_2018] ADD  CONSTRAINT [DF__wky_large_2018__lastU__037C6257]  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_largeapparatusbaesinfo_expand_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wky_largeapparatusbaesinfo_expand_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eid] [varchar](50) NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[P_name] [varchar](5000) NULL,
	[P_type] [varchar](500) NULL,
	[P_pri] [decimal](18, 1) NULL,
	[P_time] [int] NULL,
	[P_Share] [varchar](50) NULL,
	[createTime] [datetime] NOT NULL,
	[lastUpdateTime] [datetime] NULL,
	[creator] [varchar](500) NULL,
	[lastUpdator] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_largeapparatusbaesinfo_expand_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_largeapparatusbaesinfo_expand_2018] ADD  CONSTRAINT [DF_wky_largeapparatusbaesinfo_expand_2018_creattime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_meeting_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_meeting_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[m1] [nvarchar](200) NULL,
	[m2] [varchar](200) NULL,
	[m3] [nvarchar](200) NULL,
	[m4] [varchar](200) NULL,
	[m5] [nvarchar](200) NULL,
	[m6] [varchar](200) NULL,
	[m7] [text] NULL,
	[m8] [text] NULL,
	[m9] [text] NULL,
	[m10] [varchar](200) NULL,
	[m11] [nvarchar](500) NULL,
	[m12] [text] NULL,
	[m13] [int] NULL,
	[m14] [int] NULL,
	[m15] [text] NULL,
	[m16] [text] NULL,
	[m17] [text] NULL,
	[creator] [nvarchar](500) NULL,
	[createTime] [datetime] NULL,
	[lastUpdator] [nvarchar](500) NULL,
	[lastUpdateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_meeting_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_meeting_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wky_meeting_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_newproduct_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_newproduct_2018](
	[id] [numeric](9, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[pid] [varchar](50) NULL,
	[LHSB] [varchar](50) NULL,
	[DWMC] [varchar](100) NULL,
	[DWMC1] [varchar](100) NULL,
	[DWMC2] [varchar](100) NULL,
	[JGDM] [varchar](10) NULL,
	[LSGX] [varchar](50) NULL,
	[LSBM] [varchar](50) NULL,
	[DWDZ] [varchar](100) NULL,
	[YZBM] [varchar](50) NULL,
	[FZR] [varchar](10) NULL,
	[LXR] [varchar](10) NULL,
	[DH] [varchar](20) NULL,
	[CZHM] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[JJLX] [varchar](50) NULL,
	[GDBL1] [varchar](72) NULL,
	[GDBL2] [varchar](72) NULL,
	[QYGM] [varchar](50) NULL,
	[GXQY] [varchar](50) NULL,
	[ZGRS] [int] NULL,
	[JSRS] [int] NULL,
	[ZCZE] [numeric](18, 2) NULL,
	[SCL] [numeric](18, 2) NULL,
	[YWLR1] [varchar](50) NULL,
	[YWLR2] [varchar](50) NULL,
	[CPMC1] [varchar](50) NULL,
	[YEAR1] [varchar](4) NULL,
	[PZBM1] [varchar](50) NULL,
	[CPMC2] [varchar](50) NULL,
	[YEAR2] [varchar](4) NULL,
	[PZBM2] [varchar](50) NULL,
	[CPMC3] [varchar](50) NULL,
	[YEAR3] [varchar](4) NULL,
	[PZBM3] [varchar](50) NULL,
	[SBYEAR] [varchar](10) NULL,
	[SCZ] [numeric](18, 2) NULL,
	[SXSE] [numeric](18, 4) NULL,
	[SLR] [numeric](18, 4) NULL,
	[SCH] [numeric](18, 4) NULL,
	[SJS] [numeric](18, 4) NULL,
	[DWSM] [varchar](120) NULL,
	[MCXH] [varchar](100) NULL,
	[JSLY] [varchar](2) NULL,
	[HYLY] [varchar](2) NULL,
	[XMLY] [varchar](1) NULL,
	[JSLY2] [varchar](1) NULL,
	[JSLY1] [varchar](1) NULL,
	[KFXS] [varchar](1) NULL,
	[CBQK] [varchar](1) NULL,
	[FMZL1] [int] NULL,
	[FMZL2] [int] NULL,
	[XXZL1] [int] NULL,
	[XXZL2] [int] NULL,
	[ZZQ1] [int] NULL,
	[ZZQ2] [int] NULL,
	[WGZL1] [int] NULL,
	[WGZL2] [int] NULL,
	[HJQK] [varchar](1) NULL,
	[JSSS] [varchar](1) NULL,
	[XGDW] [varchar](100) NULL,
	[JSQYSM] [varchar](240) NULL,
	[JSLX] [varchar](240) NULL,
	[GNYY] [varchar](120) NULL,
	[XN] [varchar](240) NULL,
	[CQHL] [varchar](1) NULL,
	[CQHLSM] [varchar](120) NULL,
	[CXX] [varchar](1) NULL,
	[CXXSM] [varchar](240) NULL,
	[XJX] [varchar](1) NULL,
	[XJXSM] [varchar](240) NULL,
	[CSD] [varchar](1) NULL,
	[KKX] [varchar](240) NULL,
	[YFRS] [int] NULL,
	[ZTR] [numeric](18, 4) NULL,
	[YFTR] [numeric](18, 2) NULL,
	[KSNY] [varchar](7) NULL,
	[DW1] [varchar](6) NULL,
	[DW2] [varchar](6) NULL,
	[DW3] [varchar](6) NULL,
	[CL1] [numeric](18, 2) NULL,
	[CL2] [numeric](18, 2) NULL,
	[CL3] [numeric](18, 2) NULL,
	[CB1] [numeric](18, 2) NULL,
	[CB2] [numeric](18, 2) NULL,
	[CB3] [numeric](18, 2) NULL,
	[CZ1] [numeric](18, 2) NULL,
	[CZ2] [numeric](18, 2) NULL,
	[CZ3] [numeric](18, 2) NULL,
	[XSE1] [numeric](18, 2) NULL,
	[XSE2] [numeric](18, 2) NULL,
	[XSE3] [numeric](18, 2) NULL,
	[LR1] [numeric](18, 2) NULL,
	[LR2] [numeric](18, 2) NULL,
	[LR3] [numeric](18, 2) NULL,
	[CH1] [numeric](18, 2) NULL,
	[CH2] [numeric](18, 2) NULL,
	[CH3] [numeric](18, 2) NULL,
	[ZZS1] [numeric](18, 2) NULL,
	[ZZS2] [numeric](18, 2) NULL,
	[ZZS3] [numeric](18, 2) NULL,
	[JZQY1] [varchar](72) NULL,
	[JZQY2] [varchar](72) NULL,
	[JZQY3] [varchar](72) NULL,
	[SCSM] [varchar](240) NULL,
	[ZYSM] [varchar](240) NULL,
	[ZJJY] [int] NULL,
	[JNJH] [varchar](1) NULL,
	[WLZL1] [varchar](1) NULL,
	[WLZL2] [varchar](1) NULL,
	[WLZL3] [varchar](1) NULL,
	[WLZL4] [varchar](1) NULL,
	[WLMC] [varchar](50) NULL,
	[WRBZ] [varchar](1) NULL,
	[WRMC] [varchar](50) NULL,
	[HBJG] [varchar](50) NULL,
	[ZLSM] [varchar](240) NULL,
	[SHBAORQ] [datetime] NULL,
	[XMKEY] [int] NULL,
	[DWKEY1] [int] NULL,
	[CPSJL] [varchar](7) NULL,
	[CPZH] [varchar](2) NULL,
	[CPBH] [varchar](4) NULL,
	[PEIMING] [int] NULL,
	[XMBH] [varchar](20) NULL,
	[DEFEN] [numeric](18, 2) NULL,
	[DWKEY] [int] NULL,
	[newproductpw] [varchar](20) NULL,
	[inputdate] [datetime] NULL,
	[updatetime] [datetime] NULL,
	[issubmit] [varchar](10) NULL,
	[upload1] [varchar](10) NULL,
	[upload2] [varchar](10) NULL,
	[zc] [varchar](500) NULL,
	[sj1] [varchar](500) NULL,
	[zw] [varchar](500) NULL,
	[sj2] [varchar](500) NULL,
	[dwdh] [varchar](500) NULL,
	[CPMC4] [varchar](500) NULL,
	[CPMC5] [varchar](500) NULL,
	[CPMC6] [varchar](500) NULL,
	[WLZL5] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_newproduct_2018] 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_newproductword_2018_file]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_newproductword_2018_file](
	[id] [numeric](9, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ut] [varchar](10) NULL,
	[p_id] [varchar](50) NULL,
	[filename] [varchar](100) NULL,
	[title] [varchar](100) NULL,
	[outputFileName] [varchar](100) NULL,
	[date_in] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_newproductword_2018_file] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_base_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wky_person_base_2018](
	[p_id] [varchar](500) NOT NULL,
	[base1] [varchar](1000) NULL,
	[base2] [varchar](1000) NULL,
	[base3] [varchar](1000) NULL,
	[base4] [datetime] NULL,
	[base5] [varchar](1000) NULL,
	[base6] [varchar](1000) NULL,
	[base7] [varchar](1000) NULL,
	[base8] [datetime] NULL,
	[base9] [datetime] NULL,
	[base10] [datetime] NULL,
	[base11] [varchar](1000) NULL,
	[base12] [varchar](1000) NULL,
	[base13] [varchar](1000) NULL,
	[base14] [varchar](1000) NULL,
	[base15] [varchar](1000) NULL,
	[base61] [text] NULL,
	[base62] [text] NULL,
	[base63] [text] NULL,
	[base64] [text] NULL,
	[base65] [text] NULL,
	[base67] [text] NULL,
	[typeCode1] [varchar](500) NULL,
	[typeCode2] [varchar](500) NULL,
	[typeCode3] [varchar](500) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL,
	[base68] [varchar](max) NULL,
	[base69] [text] NULL,
	[base70] [text] NULL,
 CONSTRAINT [PK_wky_person_base_2018] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[wky_person_base_2018] ADD  CONSTRAINT [DF_wky_person_base_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandeight_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_person_expandeight_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandeight1] [varchar](1000) NULL,
	[expandeight2] [varchar](5000) NULL,
	[expandeight3] [varchar](5000) NULL,
	[expandeight4] [varchar](5000) NULL,
	[expandeight5] [varchar](5000) NULL,
	[expandeight6] [varchar](5000) NULL,
	[typeTag] [varchar](50) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_person_expandeight_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandeight_2018] ADD  CONSTRAINT [DF_wky_person_expandeight_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandfive_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_person_expandfive_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandfive1] [varchar](1000) NULL,
	[expandfive2] [varchar](5000) NULL,
	[expandfive3] [varchar](5000) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_person_expandfive_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandfive_2018] ADD  CONSTRAINT [DF_wky_person_expandfive_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandfour_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wky_person_expandfour_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandfour1] [varchar](1000) NULL,
	[expandfour2] [varchar](500) NULL,
	[expandfour3] [varchar](500) NULL,
	[expandfour4] [varchar](500) NULL,
	[expandfour5] [varchar](50) NULL,
	[expandfour6] [varchar](50) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_person_expandfour_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandfour_2018] ADD  CONSTRAINT [DF_wky_person_expandfour_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandone_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_person_expandone_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandone1] [varchar](1000) NULL,
	[expandone2] [varchar](50) NULL,
	[expandone3] [varchar](50) NULL,
	[expandone4] [varchar](50) NULL,
	[expandone5] [varchar](50) NULL,
	[expandone6] [varchar](50) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [pid] ON [dbo].[wky_person_expandone_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandone_2018] ADD  CONSTRAINT [DF_wky_person_expandone_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandseven_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_person_expandseven_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandseven1] [varchar](1000) NULL,
	[expandseven2] [varchar](5000) NULL,
	[expandseven3] [varchar](5000) NULL,
	[expandseven4] [varchar](5000) NULL,
	[expandseven5] [varchar](5000) NULL,
	[expandseven6] [varchar](5000) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_person_expandseven_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandseven_2018] ADD  CONSTRAINT [DF_wky_person_expandseven_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandsix_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_person_expandsix_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandsix1] [varchar](1000) NULL,
	[expandsix2] [varchar](1000) NULL,
	[expandsix3] [varchar](1000) NULL,
	[expandsix4] [varchar](1000) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_person_expandsix_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandsix_2018] ADD  CONSTRAINT [DF_wky_person_expandsix_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandthree_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_person_expandthree_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandthree1] [varchar](1000) NULL,
	[expandthree2] [varchar](500) NULL,
	[expandthree3] [varchar](500) NULL,
	[expandthree4] [varchar](50) NULL,
	[expandthree5] [varchar](50) NULL,
	[expandthree6] [varchar](50) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_person_expandthree_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandthree_2018] ADD  CONSTRAINT [DF_wky_person_expandthree_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_person_expandtwo_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_person_expandtwo_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[p_num] [int] NULL,
	[expandtwo1] [varchar](1000) NULL,
	[expandtwo2] [varchar](500) NULL,
	[expandtwo3] [varchar](50) NULL,
	[expandtwo4] [varchar](50) NULL,
	[expandtwo5] [varchar](50) NULL,
	[expandtwo6] [varchar](50) NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wky_person_expandtwo_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_person_expandtwo_2018] ADD  CONSTRAINT [DF_wky_person_expandtwo_2018_createTime]  DEFAULT (getdate()) FOR [createTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_postdoctoral_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_postdoctoral_2018](
	[id] [numeric](19, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NOT NULL,
	[accountname] [varchar](100) NULL,
	[department] [varchar](100) NULL,
	[birthplace] [varchar](100) NULL,
	[birthday] [datetime] NULL,
	[nation] [varchar](100) NULL,
	[gradation] [varchar](100) NULL,
	[gradcom] [varchar](400) NULL,
	[graddate] [char](4) NULL,
	[indate] [datetime] NULL,
	[outdate] [datetime] NULL,
	[mentor] [varchar](100) NULL,
	[subject] [varchar](100) NULL,
	[projtotalfund] [numeric](9, 2) NULL,
	[appfund] [numeric](9, 2) NULL,
	[commatchfund] [numeric](9, 2) NULL,
	[researchmeaning] [text] NULL,
	[speciality] [text] NULL,
	[experience] [text] NULL,
	[otherspec] [varchar](500) NULL,
	[avocation] [varchar](500) NULL,
	[selfabroad] [varchar](500) NULL,
	[langlvl] [varchar](500) NULL,
	[isstayshanghai] [varchar](10) NULL,
	[partinprojinfo] [text] NULL,
	[credit] [text] NULL,
	[discoursecount] [int] NULL,
	[overseaspublication1] [int] NULL,
	[overseaspublication2] [int] NULL,
	[corepublication1] [int] NULL,
	[corepublication2] [int] NULL,
	[sciindex] [int] NULL,
	[eiindex] [int] NULL,
	[istpindex] [int] NULL,
	[maindiscourse] [text] NULL,
	[patent] [text] NULL,
	[subjectexplain] [text] NULL,
	[otherfund] [numeric](9, 2) NULL,
	[money1] [numeric](9, 2) NULL,
	[reason1] [text] NULL,
	[money2] [numeric](9, 2) NULL,
	[reason2] [text] NULL,
	[money3] [numeric](9, 2) NULL,
	[reason3] [text] NULL,
	[money4] [numeric](9, 2) NULL,
	[reason4] [text] NULL,
	[money5] [numeric](9, 2) NULL,
	[reason5] [text] NULL,
	[mangeropinion1] [text] NULL,
	[mangeropinion2] [text] NULL,
	[createdate] [datetime] NULL,
	[modidate] [datetime] NULL,
	[patentnum] [int] NULL,
	[patentaccepted] [int] NULL,
	[patentauthorized] [int] NULL,
	[proposersex] [varchar](50) NULL,
 CONSTRAINT [PK_wky_postdoctoral_2018] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_researchmeaning]  DEFAULT ('') FOR [researchmeaning]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_speciality]  DEFAULT ('') FOR [speciality]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_experience]  DEFAULT ('') FOR [experience]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_partinprojinfo]  DEFAULT ('') FOR [partinprojinfo]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_credit]  DEFAULT ('') FOR [credit]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_maindiscourse]  DEFAULT ('') FOR [maindiscourse]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_patent]  DEFAULT ('') FOR [patent]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_subjectexplain]  DEFAULT ('') FOR [subjectexplain]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_reason1]  DEFAULT ('') FOR [reason1]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_reason2]  DEFAULT ('') FOR [reason2]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_reason3]  DEFAULT ('') FOR [reason3]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_reason4]  DEFAULT ('') FOR [reason4]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_reason5]  DEFAULT ('') FOR [reason5]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_mangeropinion1]  DEFAULT ('') FOR [mangeropinion1]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF_wky_postdoctoral_2018_mangeropinion2]  DEFAULT ('') FOR [mangeropinion2]
GO
ALTER TABLE [dbo].[wky_postdoctoral_2018] ADD  CONSTRAINT [DF__wky_postdoctoral_2018__creat__1486F2C8]  DEFAULT (getdate()) FOR [createdate]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_titan_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_titan_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NOT NULL,
	[date_in] [datetime] NOT NULL,
	[dd01] [char](7) NULL,
	[dd02] [char](7) NULL,
	[dd03] [char](7) NULL,
	[dd04] [char](7) NULL,
	[dd05] [datetime] NULL,
	[dd06] [datetime] NULL,
	[dc01] [varchar](200) NULL,
	[dc02] [varchar](200) NULL,
	[dc03] [varchar](200) NULL,
	[dc04] [varchar](200) NULL,
	[dc05] [varchar](200) NULL,
	[dc06] [varchar](200) NULL,
	[dc07] [varchar](200) NULL,
	[dc08] [varchar](200) NULL,
	[dc09] [varchar](200) NULL,
	[dc10] [varchar](200) NULL,
	[dc11] [varchar](200) NULL,
	[dc12] [varchar](200) NULL,
	[dc13] [varchar](200) NULL,
	[dc14] [varchar](200) NULL,
	[dc15] [varchar](200) NULL,
	[dc16] [varchar](200) NULL,
	[dc17] [varchar](200) NULL,
	[dc18] [varchar](200) NULL,
	[dc19] [varchar](200) NULL,
	[dc20] [varchar](200) NULL,
	[dc21] [varchar](200) NULL,
	[dc22] [varchar](200) NULL,
	[dc23] [varchar](200) NULL,
	[dc24] [varchar](200) NULL,
	[dc25] [varchar](200) NULL,
	[dc26] [varchar](200) NULL,
	[dc27] [varchar](200) NULL,
	[dc28] [varchar](200) NULL,
	[dc29] [varchar](200) NULL,
	[dc30] [varchar](200) NULL,
	[dc31] [varchar](200) NULL,
	[dc32] [varchar](200) NULL,
	[dc33] [varchar](200) NULL,
	[dc34] [varchar](200) NULL,
	[dc35] [varchar](200) NULL,
	[dc36] [varchar](200) NULL,
	[dc37] [varchar](200) NULL,
	[dc38] [varchar](200) NULL,
	[dc39] [varchar](200) NULL,
	[dc40] [varchar](200) NULL,
	[dc41] [varchar](200) NULL,
	[dc42] [varchar](200) NULL,
	[dc43] [varchar](200) NULL,
	[dc44] [varchar](200) NULL,
	[dc45] [varchar](200) NULL,
	[dc46] [varchar](200) NULL,
	[dc47] [varchar](200) NULL,
	[dc48] [varchar](200) NULL,
	[dc49] [varchar](200) NULL,
	[dc50] [varchar](200) NULL,
	[dc51] [varchar](200) NULL,
	[dc52] [varchar](200) NULL,
	[dc53] [varchar](200) NULL,
	[dc54] [varchar](200) NULL,
	[dc55] [varchar](200) NULL,
	[dc56] [varchar](200) NULL,
	[dc57] [varchar](200) NULL,
	[dc58] [varchar](200) NULL,
	[dc59] [varchar](200) NULL,
	[dc60] [varchar](200) NULL,
	[dc61] [varchar](200) NULL,
	[dc62] [varchar](200) NULL,
	[dc63] [varchar](200) NULL,
	[dc64] [varchar](200) NULL,
	[dc65] [varchar](200) NULL,
	[dc66] [varchar](200) NULL,
	[dc67] [varchar](200) NULL,
	[dc68] [varchar](200) NULL,
	[dc69] [varchar](200) NULL,
	[dc70] [varchar](200) NULL,
	[dc71] [varchar](200) NULL,
	[dc72] [varchar](200) NULL,
	[dc73] [varchar](200) NULL,
	[dc74] [varchar](200) NULL,
	[dc75] [varchar](200) NULL,
	[dc76] [varchar](200) NULL,
	[dc77] [varchar](200) NULL,
	[dc78] [varchar](200) NULL,
	[dc79] [varchar](200) NULL,
	[dc80] [varchar](200) NULL,
	[dc81] [varchar](200) NULL,
	[dc82] [varchar](200) NULL,
	[dc83] [varchar](200) NULL,
	[dc84] [varchar](200) NULL,
	[dc85] [varchar](200) NULL,
	[dc86] [varchar](200) NULL,
	[dc87] [varchar](200) NULL,
	[dc88] [varchar](200) NULL,
	[dc89] [varchar](200) NULL,
	[dc90] [varchar](200) NULL,
	[dc91] [varchar](200) NULL,
	[dt01] [text] NULL,
	[dt02] [text] NULL,
	[dt03] [text] NULL,
	[dt04] [text] NULL,
	[dt05] [text] NULL,
	[dt06] [text] NULL,
	[dt07] [text] NULL,
	[dt08] [text] NULL,
	[dt09] [text] NULL,
	[dt10] [text] NULL,
	[dt11] [text] NULL,
	[dt12] [text] NULL,
	[dt13] [text] NULL,
	[dt14] [text] NULL,
	[dt15] [text] NULL,
	[dt16] [text] NULL,
	[dt17] [text] NULL,
	[dt18] [text] NULL,
	[dt19] [text] NULL,
	[dt20] [text] NULL,
	[dt21] [text] NULL,
	[dc2004fund] [varchar](200) NULL,
	[dc2005fund] [varchar](200) NULL,
	[dc2006fund] [varchar](200) NULL,
	[dc2007fund] [varchar](200) NULL,
	[dc2008fund] [varchar](200) NULL,
	[dc2009fund] [varchar](200) NULL,
	[dx1] [varchar](50) NULL,
	[dx2] [varchar](50) NULL,
	[dx3] [varchar](50) NULL,
	[dx4] [varchar](50) NULL,
	[dx5] [varchar](50) NULL,
	[dx6] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc2010fund] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc2011fund] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc2012fund] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dx7] [varchar](50) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dx8] [varchar](50) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dx9] [varchar](50) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dx10] [varchar](50) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [ishgTiTan] [varchar](50) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [iskjTiTan] [varchar](50) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [TiTantxt] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [kjTiTantxt] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc93] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc94] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc95] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc96] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc97] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc98] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc99] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc100] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc101] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc102] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc103] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc104] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc105] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc106] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc107] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc108] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc109] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc110] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc111] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc112] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc113] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc114] [varchar](200) NULL
ALTER TABLE [dbo].[wky_titan_2018] ADD [dc115] [varchar](200) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_titan_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0001]  DEFAULT ('') FOR [dt01]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0002]  DEFAULT ('') FOR [dt02]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0003]  DEFAULT ('') FOR [dt03]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0004]  DEFAULT ('') FOR [dt04]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0005]  DEFAULT ('') FOR [dt05]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0006]  DEFAULT ('') FOR [dt06]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0007]  DEFAULT ('') FOR [dt07]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0008]  DEFAULT ('') FOR [dt08]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt0009]  DEFAULT ('') FOR [dt09]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1000]  DEFAULT ('') FOR [dt10]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1001]  DEFAULT ('') FOR [dt11]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1002]  DEFAULT ('') FOR [dt12]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1003]  DEFAULT ('') FOR [dt13]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1004]  DEFAULT ('') FOR [dt14]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1005]  DEFAULT ('') FOR [dt15]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1006]  DEFAULT ('') FOR [dt16]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1007]  DEFAULT ('') FOR [dt17]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1008]  DEFAULT ('') FOR [dt18]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt1009]  DEFAULT ('') FOR [dt19]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt2000]  DEFAULT ('') FOR [dt20]
GO
ALTER TABLE [dbo].[wky_titan_2018] ADD  CONSTRAINT [DF_wky_titan_2018_dt2001]  DEFAULT ('') FOR [dt21]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_titan_Addons_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_titan_Addons_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[p_num] [int] NULL,
	[stockholderName] [varchar](200) NULL,
	[isOnMarket] [varchar](50) NULL,
	[isForeign] [varchar](50) NULL,
	[stocklot] [varchar](50) NULL,
	[investMode] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_titan_Addons_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_titan_AfterMoney_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_titan_AfterMoney_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NOT NULL,
	[dc05] [varchar](500) NULL,
	[dc02] [varchar](500) NULL,
	[dc10] [varchar](500) NULL,
	[dc11] [varchar](500) NULL,
	[dc12] [varchar](500) NULL,
	[dc13] [varchar](500) NULL,
	[dx1] [varchar](500) NULL,
	[dx2] [varchar](500) NULL,
	[dx3] [varchar](500) NULL,
	[dx4] [varchar](500) NULL,
	[dx5] [varchar](500) NULL,
	[dx6] [varchar](500) NULL,
	[dx7] [varchar](500) NULL,
	[dx8] [varchar](500) NULL,
	[pattotal] [varchar](500) NULL,
	[patinvent] [varchar](500) NULL,
	[patutility] [varchar](500) NULL,
	[patfacade] [varchar](500) NULL,
	[patsoftware] [varchar](500) NULL,
	[paticc] [varchar](500) NULL,
	[patoth] [varchar](500) NULL,
	[sttotal] [varchar](500) NULL,
	[stinter] [varchar](500) NULL,
	[stnation] [varchar](500) NULL,
	[stindustry] [varchar](500) NULL,
	[stlocal] [varchar](500) NULL,
	[stenter] [varchar](500) NULL,
	[fournew] [varchar](500) NULL,
	[scithesis] [varchar](500) NULL,
	[publishbook] [varchar](500) NULL,
	[planpv] [varchar](500) NULL,
	[planoutput] [varchar](500) NULL,
	[planprofit] [varchar](500) NULL,
	[plantax] [varchar](500) NULL,
	[traindoctor] [varchar](500) NULL,
	[trainmaster] [varchar](500) NULL,
	[nationproj] [varchar](500) NULL,
	[nationprojmoney] [varchar](500) NULL,
	[employmentNum] [varchar](500) NULL,
	[universityNum] [varchar](500) NULL,
	[t1] [varchar](500) NULL,
	[t2] [varchar](500) NULL,
	[t3] [varchar](500) NULL,
	[t4] [varchar](500) NULL,
	[t5] [varchar](500) NULL,
	[t6] [varchar](500) NULL,
	[t7] [varchar](500) NULL,
	[t8] [varchar](500) NULL,
	[t9] [varchar](500) NULL,
	[t10] [varchar](500) NULL,
	[t11] [varchar](500) NULL,
	[t12] [varchar](500) NULL,
	[t13] [varchar](500) NULL,
	[t14] [varchar](500) NULL,
	[t15] [varchar](500) NULL,
	[t16] [varchar](500) NULL,
	[t17] [varchar](500) NULL,
	[t18] [varchar](500) NULL,
	[t19] [varchar](500) NULL,
	[p_jindu_1_year] [varchar](500) NULL,
	[p_jindu_1] [text] NULL,
	[p_jindu_2_year] [varchar](500) NULL,
	[p_jindu_2] [text] NULL,
	[pj_date] [datetime] NULL,
	[p_fenxian_1] [text] NULL,
	[p_fenxian_2] [text] NULL,
	[p_gnco_1] [text] NULL,
	[p_gnco_2] [text] NULL,
	[pg_date] [varchar](500) NULL,
	[p_xy] [varchar](500) NULL,
	[p_yj_1] [text] NULL,
	[py_date_1] [datetime] NULL,
	[p_yj_2] [text] NULL,
	[py_date_2] [datetime] NULL,
	[p_yj_3] [text] NULL,
	[py_date_3] [datetime] NULL,
	[date_in] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_titan_AfterMoney_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wky_titan_AfterMoney_2018] ADD  CONSTRAINT [DF_wky_titan_AfterMoney_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_titan_AfterMoney_check_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_titan_AfterMoney_check_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[check1] [varchar](50) NULL,
	[check2] [varchar](50) NULL,
	[check3] [varchar](50) NULL,
	[check4] [varchar](50) NULL,
	[check5] [varchar](50) NULL,
	[check6] [varchar](50) NULL,
	[check7] [varchar](50) NULL,
	[check8] [varchar](50) NULL,
	[check9] [varchar](50) NULL,
	[check10] [varchar](50) NULL,
	[check11] [varchar](50) NULL,
	[check12] [varchar](50) NULL,
	[check13] [varchar](50) NULL,
	[check14] [varchar](50) NULL,
	[check15] [varchar](50) NULL,
	[check16] [varchar](50) NULL,
	[check17] [varchar](50) NULL,
	[check18] [varchar](50) NULL,
	[check19] [varchar](50) NULL,
	[check20] [varchar](50) NULL,
	[check21] [varchar](50) NULL,
	[check22] [varchar](50) NULL,
	[check23] [varchar](50) NULL,
	[check24] [varchar](50) NULL,
	[check25] [varchar](50) NULL,
	[check26] [text] NULL,
	[check27] [text] NULL,
	[check28] [text] NULL,
	[check29] [text] NULL,
	[check30] [text] NULL,
	[check31] [datetime] NULL,
	[check32] [text] NULL,
	[check33] [datetime] NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wky_titan_AfterMoney_check_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wky_titan_AfterMoney_money_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wky_titan_AfterMoney_money_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[kw1] [varchar](50) NULL,
	[kw2] [varchar](50) NULL,
	[kw3] [varchar](50) NULL,
	[kw4] [varchar](50) NULL,
	[kw5] [varchar](50) NULL,
	[kw6] [varchar](50) NULL,
	[kw7] [varchar](50) NULL,
	[kw8] [varchar](50) NULL,
	[kw9] [varchar](50) NULL,
	[kw10] [varchar](50) NULL,
	[kw11] [varchar](50) NULL,
	[kw12] [varchar](50) NULL,
	[kw13] [varchar](50) NULL,
	[kw14] [varchar](50) NULL,
	[kw15] [varchar](50) NULL,
	[kw16] [varchar](50) NULL,
	[kw17] [varchar](50) NULL,
	[kw18] [varchar](50) NULL,
	[kw19] [varchar](50) NULL,
	[kw20] [varchar](50) NULL,
	[kw21] [varchar](50) NULL,
	[qt1] [varchar](50) NULL,
	[qt2] [varchar](50) NULL,
	[qt3] [varchar](50) NULL,
	[qt4] [varchar](50) NULL,
	[qt5] [varchar](50) NULL,
	[qt6] [varchar](50) NULL,
	[qt7] [varchar](50) NULL,
	[qt8] [varchar](50) NULL,
	[qt9] [varchar](50) NULL,
	[qt10] [varchar](50) NULL,
	[qt11] [varchar](50) NULL,
	[qt12] [varchar](50) NULL,
	[qt13] [varchar](50) NULL,
	[qt14] [varchar](50) NULL,
	[qt15] [varchar](50) NULL,
	[qt16] [varchar](50) NULL,
	[qt17] [varchar](50) NULL,
	[qt18] [varchar](50) NULL,
	[qt19] [varchar](50) NULL,
	[qt20] [varchar](50) NULL,
	[qt21] [varchar](50) NULL,
	[qt22] [varchar](50) NULL,
	[checkmoney1] [datetime] NULL,
	[checkmoney2] [varchar](50) NULL,
	[checkmoney3] [varchar](50) NULL,
	[checkmoney4] [varchar](50) NULL,
	[checkmoney5] [text] NULL,
	[checkmoney6] [text] NULL,
	[checkmoney7] [text] NULL,
	[checkmoney8] [text] NULL,
	[checkmoney9] [datetime] NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_deg_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_deg_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NOT NULL,
	[p_num] [varchar](5) NULL,
	[Deg_name] [varchar](50) NULL,
	[Deg_type] [varchar](500) NULL,
	[Deg_coun] [varchar](50) NULL,
	[Deg_pri] [varchar](50) NULL,
	[Deg_count] [varchar](50) NULL,
	[Deg_priz] [varchar](50) NULL,
	[Deg_thispr] [varchar](50) NULL,
	[Deg_info] [varchar](5000) NULL,
	[Date_in] [datetime] NOT NULL,
	[eid] [varchar](50) NULL,
	[estate] [char](1) NULL,
	[creator] [varchar](500) NULL,
	[createTime] [datetime] NULL,
	[lastUpdator] [varchar](500) NULL,
	[lastUpdateTime] [datetime] NULL,
	[state] [varchar](500) NULL,
	[kpexhibit_id] [varchar](500) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_deg_2018] ADD [deg_category] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_deg_2018] ADD [deg_property] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_deg_2018] ADD [deg_use] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_deg_2018] ADD [deg_source] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_deg_2018] ADD [deg_class] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wkym_deg_2018] 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_deg_2018] ADD  CONSTRAINT [DF_wkym_deg_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_des_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_des_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NOT NULL,
	[P_num] [varchar](5) NULL,
	[Des_name] [varchar](50) NULL,
	[Des_pri] [varchar](50) NULL,
	[Des_count] [varchar](50) NULL,
	[Des_priz] [varchar](50) NULL,
	[Des_thispr] [varchar](50) NULL,
	[Des_info] [varchar](5000) NULL,
	[Date_in] [datetime] NOT NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL,
	[state] [varchar](500) NOT NULL,
	[eid] [varchar](500) NULL,
	[estate] [varchar](500) NULL,
	[kpexhibit_id] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wkym_des_2018] 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_des_2018] ADD  CONSTRAINT [DF_wkym_des_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
ALTER TABLE [dbo].[wkym_des_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_des_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
ALTER TABLE [dbo].[wkym_des_2018] ADD  DEFAULT ((0)) FOR [state]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_dex_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_dex_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NULL,
	[p_num] [varchar](5) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_name] [varchar](5000) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_type] [varchar](5000) NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_pril] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_pri] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_count] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_priz] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_prisy] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_thispr] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [Date_in] [datetime] NOT NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [createTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [lastUpdateTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [lastUpdator] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_info] [varchar](5000) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_dex_2018] ADD [dex_source] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wkym_dex_2018] 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_dex_2018] ADD  CONSTRAINT [DF_wkym_dex_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
ALTER TABLE [dbo].[wkym_dex_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_dex_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_innofund2_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_innofund2_2018](
	[p_id] [varchar](50) NOT NULL,
	[fund1] [datetime] NULL,
	[fund2] [varchar](200) NULL,
	[fund3] [varchar](200) NULL,
	[fund4] [varchar](200) NULL,
	[fund5] [varchar](200) NULL,
	[fund6] [varchar](200) NULL,
	[fund7] [varchar](200) NULL,
	[fund8] [varchar](200) NULL,
	[fund9] [varchar](200) NULL,
	[fund10] [varchar](200) NULL,
	[fund11] [varchar](200) NULL,
	[fund12] [varchar](200) NULL,
	[fund13] [varchar](200) NULL,
	[fund14] [varchar](200) NULL,
	[fund15] [varchar](200) NULL,
	[fund16] [varchar](200) NULL,
	[fund17] [varchar](200) NULL,
	[fund18] [varchar](200) NULL,
	[fund19] [varchar](200) NULL,
	[fund20] [varchar](200) NULL,
	[fund21] [varchar](200) NULL,
	[fund22] [varchar](200) NULL,
	[fund23] [varchar](200) NULL,
	[fund24] [varchar](200) NULL,
	[fund25] [varchar](200) NULL,
	[fund26] [varchar](200) NULL,
	[fund27] [varchar](200) NULL,
	[fund28] [varchar](200) NULL,
	[fund29] [varchar](200) NULL,
	[fund30] [varchar](200) NULL,
	[fund31] [varchar](200) NULL,
	[fund32] [varchar](200) NULL,
	[fund33] [varchar](200) NULL,
	[fund34] [varchar](200) NULL,
	[fund35] [varchar](200) NULL,
	[fund36] [varchar](200) NULL,
	[fund37] [varchar](200) NULL,
	[fund38] [varchar](200) NULL,
	[fund39] [varchar](200) NULL,
	[fund40] [varchar](200) NULL,
	[fund41] [varchar](200) NULL,
	[fund42] [text] NULL,
	[fund43] [text] NULL,
	[fund44] [text] NULL,
	[fund45] [text] NULL,
	[fund46] [text] NULL,
	[fund47] [text] NULL,
	[fund48] [text] NULL,
	[fund49] [text] NULL,
	[fund50] [varchar](400) NULL,
	[fund51] [varchar](400) NULL,
	[fund54] [varchar](400) NULL,
	[fund55] [varchar](400) NULL,
	[fund56] [varchar](400) NULL,
	[fund57] [varchar](400) NULL,
	[fund58] [varchar](400) NULL,
	[fund59] [varchar](400) NULL,
	[fund60] [varchar](400) NULL,
	[fund61] [varchar](400) NULL,
	[fund62] [varchar](400) NULL,
	[fund63] [varchar](400) NULL,
	[fund64] [varchar](400) NULL,
	[fund65] [varchar](400) NULL,
	[fund66] [varchar](400) NULL,
	[fund67] [varchar](400) NULL,
	[fund68] [varchar](400) NULL,
	[fund69] [varchar](400) NULL,
	[fund70] [text] NULL,
	[fund71] [varchar](400) NULL,
	[fund72] [varchar](400) NULL,
	[fund73] [varchar](400) NULL,
	[fund74] [varchar](400) NULL,
	[fund75] [varchar](400) NULL,
	[fund76] [varchar](400) NULL,
	[fund77] [varchar](400) NULL,
	[fund78] [varchar](400) NULL,
	[fund79] [varchar](400) NULL,
	[fund80] [varchar](400) NULL,
	[fund81] [varchar](400) NULL,
	[fund82] [varchar](400) NULL,
	[fund83] [varchar](400) NULL,
	[fund84] [varchar](400) NULL,
	[fund85] [varchar](400) NULL,
	[fund86] [varchar](400) NULL,
	[fund87] [varchar](400) NULL,
	[fund88] [varchar](400) NULL,
	[fund89] [varchar](400) NULL,
	[fund90] [varchar](400) NULL,
	[fund91] [varchar](400) NULL,
	[fund92] [varchar](400) NULL,
	[fund93] [varchar](400) NULL,
	[fund94] [varchar](400) NULL,
	[fund95] [varchar](400) NULL,
	[fund96] [varchar](400) NULL,
	[fund97] [varchar](400) NULL,
	[fund98] [varchar](400) NULL,
	[fund99] [varchar](400) NULL,
	[fund100] [varchar](400) NULL,
	[fund101] [varchar](400) NULL,
	[fund102] [varchar](400) NULL,
	[fund103] [varchar](400) NULL,
	[fund104] [text] NULL,
	[fund105] [varchar](200) NULL,
	[fund106] [varchar](200) NULL,
	[fund107] [varchar](200) NULL,
	[fund108] [varchar](200) NULL,
	[fund109] [varchar](200) NULL,
	[fund110] [varchar](200) NULL,
	[fund111] [varchar](200) NULL,
	[fund112] [varchar](200) NULL,
	[fund113] [varchar](200) NULL,
	[fund114] [text] NULL,
	[fund115] [text] NULL,
	[fund116] [text] NULL,
	[fund117] [text] NULL,
	[fund118] [text] NULL,
	[fund119] [text] NULL,
	[fund120] [text] NULL,
	[fund121] [text] NULL,
	[fund122] [text] NULL,
	[fund123] [text] NULL,
	[fund124] [text] NULL,
	[fund125] [text] NULL,
	[fund126] [varchar](200) NULL,
	[fund127] [varchar](200) NULL,
	[fund128] [varchar](200) NULL,
	[fund129] [varchar](200) NULL,
	[fund130] [text] NULL,
	[fund131] [varchar](200) NULL,
	[fund132] [text] NULL,
	[fund133] [text] NULL,
	[fund134] [varchar](200) NULL,
	[fund135] [varchar](200) NULL,
	[fund136] [varchar](200) NULL,
	[fund137] [varchar](200) NULL,
	[fund138] [varchar](200) NULL,
	[fund139] [varchar](200) NULL,
	[fund140] [text] NULL,
	[fund141] [text] NULL,
	[fund142] [text] NULL,
	[fund143] [varchar](200) NULL,
	[fund144] [varchar](200) NULL,
	[fund145] [text] NULL,
	[fund146] [varchar](200) NULL,
	[fund147] [text] NULL,
	[fund148] [text] NULL,
	[fund149] [text] NULL,
	[fund150] [text] NULL,
	[fund151] [text] NULL,
	[fund152] [text] NULL,
	[fund153] [text] NULL,
	[fund154] [text] NULL,
	[fund155] [text] NULL,
	[fund156] [text] NULL,
	[fund157] [text] NULL,
	[fund158] [text] NULL,
	[fund159] [text] NULL,
	[fund160] [varchar](200) NULL,
	[fund161] [varchar](200) NULL,
	[fund162] [varchar](500) NULL,
	[fund163] [varchar](200) NULL,
	[fund164] [varchar](200) NULL,
	[fund165] [text] NULL,
	[fund166] [varchar](200) NULL,
	[fund167] [varchar](200) NULL,
	[fund168] [varchar](200) NULL,
	[fund169] [varchar](200) NULL,
	[fund170] [varchar](200) NULL,
	[fund171] [varchar](100) NULL,
	[fund172] [varchar](200) NULL,
	[fund173] [varchar](200) NULL,
	[fund174] [varchar](200) NULL,
	[fund175] [varchar](200) NULL,
	[fund176] [varchar](200) NULL,
	[fund177] [varchar](200) NULL,
	[fund178] [varchar](200) NULL,
	[fund179] [varchar](200) NULL,
	[fund180] [varchar](200) NULL,
	[fund181] [varchar](200) NULL,
	[fund182] [text] NULL,
	[fund183] [text] NULL,
	[fund184] [text] NULL,
	[fund185] [text] NULL,
	[fund186] [text] NULL,
	[fund187] [varchar](200) NULL,
	[fund188] [varchar](200) NULL,
	[fund189] [varchar](200) NULL,
	[fund190] [varchar](200) NULL,
	[fund191] [varchar](200) NULL,
	[fund192] [varchar](200) NULL,
	[fund193] [varchar](200) NULL,
	[fund194] [varchar](200) NULL,
	[fund195] [varchar](200) NULL,
	[fund196] [varchar](200) NULL,
	[fund197] [varchar](200) NULL,
	[fund198] [varchar](200) NULL,
	[fund199] [varchar](200) NULL,
	[fund200] [varchar](200) NULL,
	[fund201] [varchar](200) NULL,
	[fund202] [varchar](200) NULL,
	[fund203] [varchar](200) NULL,
	[fund204] [varchar](200) NULL,
	[fund205] [varchar](200) NULL,
	[fund206] [varchar](200) NULL,
	[fund207] [text] NULL,
	[fund208] [varchar](200) NULL,
	[fund209] [varchar](200) NULL,
	[fund210] [varchar](200) NULL,
	[fund211] [text] NULL,
	[fund212] [text] NULL,
	[fund213] [text] NULL,
	[fund214] [text] NULL,
	[fund215] [text] NULL,
	[fund216] [text] NULL,
	[fund217] [text] NULL,
	[fund218] [text] NULL,
	[fund219] [text] NULL,
	[fund220] [text] NULL,
	[fund221] [text] NULL,
	[fund222] [text] NULL,
	[fund223] [text] NULL,
	[fund224] [text] NULL,
	[fund225] [text] NULL,
	[fund226] [text] NULL,
	[fund227] [text] NULL,
	[fund228] [text] NULL,
	[fund229] [text] NULL,
	[fund230] [text] NULL,
	[fund231] [text] NULL,
	[fund232] [text] NULL,
	[fund233] [text] NULL,
	[fund234] [text] NULL,
	[fund235] [text] NULL,
	[fund236] [text] NULL,
	[fund237] [text] NULL,
	[fund238] [text] NULL,
	[fund239] [text] NULL,
	[fund240] [text] NULL,
	[fund241] [text] NULL,
	[fund242] [text] NULL,
	[fund243] [varchar](200) NULL,
	[fund244] [varchar](200) NULL,
	[fund245] [varchar](200) NULL,
	[fund246] [varchar](200) NULL,
	[fund247] [varchar](200) NULL,
	[fund248] [varchar](200) NULL,
	[fund249] [varchar](200) NULL,
	[fund250] [varchar](200) NULL,
	[fund251] [varchar](300) NULL,
	[fund252] [varchar](200) NULL,
	[fund253] [varchar](200) NULL,
	[fund254] [varchar](200) NULL,
	[fund255] [text] NULL,
	[fund256] [varchar](200) NULL,
	[fund257] [varchar](200) NULL,
	[fund258] [varchar](200) NULL,
	[fund259] [varchar](200) NULL,
	[fund260] [varchar](300) NULL,
	[fund261] [varchar](200) NULL,
	[fund262] [varchar](200) NULL,
	[fund263] [varchar](200) NULL,
	[fund264] [text] NULL,
	[fund265] [text] NULL,
	[fund266] [varchar](200) NULL,
	[fund267] [varchar](50) NULL,
	[fund268] [varchar](50) NULL,
	[fund269] [varchar](50) NULL,
	[date_in] [datetime] NOT NULL,
 CONSTRAINT [PK_wkym_innofund2_2018] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[wkym_innofund2_2018] ADD  CONSTRAINT [DF_wkym_innofund2_2018_date_in]  DEFAULT (getdate()) FOR [date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_innofund2_zgdw_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_innofund2_zgdw_2018](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_innofund2_zgdw_2018] 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_innofund2_zjjg_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_innofund2_zjjg_2018](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_innofund2_zjjg_2018] 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_ma_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_ma_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NULL,
	[P_num] [varchar](5) NULL,
	[Ma_name] [varchar](500) NULL,
	[Ma_unit] [varchar](50) NULL,
	[Ma_pri] [varchar](50) NULL,
	[Ma_priz] [varchar](50) NULL,
	[Ma_thispr] [varchar](50) NULL,
	[Date_in] [datetime] NOT NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL,
	[ma_info] [varchar](5000) NULL,
	[kpexhibit_id] [varchar](500) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_ma_2018] ADD [ma_source] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_ma_2018] ADD [ma_count] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wkym_ma_2018] 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_ma_2018] ADD  CONSTRAINT [DF_wkym_ma_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
ALTER TABLE [dbo].[wkym_ma_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_ma_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_magnolia1_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_magnolia1_2018](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NOT NULL,
	[applierbirthday] [varchar](50) NULL,
	[applierspecialty] [varchar](200) NULL,
	[applierdegree] [varchar](200) NULL,
	[applierduty] [varchar](50) NULL,
	[foreignunitcnname] [varchar](200) NULL,
	[foreignunitenname] [varchar](200) NULL,
	[cooperatername] [varchar](200) NULL,
	[cooperatersex] [varchar](50) NULL,
	[cooperaterbirthday] [varchar](50) NULL,
	[cooperaterspecialty] [varchar](200) NULL,
	[cooperaterdegree] [varchar](50) NULL,
	[cooperaterduty] [varchar](50) NULL,
	[cooperaterphone] [varchar](100) NULL,
	[cooperatere_mail] [varchar](50) NULL,
	[cooperaterfax] [varchar](50) NULL,
	[intercomprojname] [text] NULL,
	[intercomprojcontent] [text] NULL,
	[apllicationmanexperience] [text] NULL,
	[apllicationmanhortation] [text] NULL,
	[foreigncooperaterbrief] [text] NULL,
	[invition] [text] NULL,
	[invitiontime] [varchar](50) NULL,
	[totalbudget] [varchar](50) NULL,
	[unitimburseoutlay] [varchar](50) NULL,
	[kwapply] [varchar](50) NULL,
	[trafficcharge] [varchar](50) NULL,
	[roomcharge] [varchar](50) NULL,
	[livingcharge] [varchar](50) NULL,
	[budgetremark] [text] NULL,
	[othercharge] [varchar](50) NULL,
	[applicationuitopinion] [text] NULL,
	[fundsecretariatopinion] [text] NULL,
	[intercomprojplan] [text] NULL,
	[intercomprojenglishname] [text] NULL,
	[intercomprojpresider] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_magnolia1_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_magnolia2_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_magnolia2_2018](
	[p_id] [varchar](50) NOT NULL,
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[othercooperatername] [text] NULL,
	[othercooperaterbirthday] [text] NULL,
	[othercooperaterduty] [text] NULL,
	[othercooperaterspecialty] [text] NULL,
	[othercooperatecontent] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_magnolia2_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NULL,
	[p_num] [varchar](5) NULL,
	[Pe_tag] [varchar](2) NULL,
	[Pe_name] [varchar](50) NULL,
	[Pe_id] [varchar](50) NULL,
	[pe_idtag] [char](1) NULL,
	[pe_sex] [varchar](2) NULL,
	[pe_age] [varchar](3) NULL,
	[Pe_org] [varchar](100) NULL,
	[Pe_zhiwu] [varchar](50) NULL,
	[Pe_other] [varchar](50) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_person_2018] ADD [Pe_work] [varchar](1000) NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[wkym_person_2018] ADD [Pe_time] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [Pe_st] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [Pe_stz] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [Pe_thisst] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [Pe_thisstz] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [Pe_sign] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [zc] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [xl] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [zy] [varchar](50) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [Date_in] [datetime] NOT NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [institution] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [pe_zy] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [createTime] [datetime] NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [lastUpdator] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [lastUpdateTime] [datetime] NULL
ALTER TABLE [dbo].[wkym_person_2018] ADD [pe_brithdate] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_2018] 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_2018] ADD  CONSTRAINT [DF_wkym_person_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_a_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_a_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[a1] [varchar](50) NULL,
	[a2] [datetime] NULL,
	[a3] [varchar](50) NULL,
	[a4] [varchar](50) NULL,
	[a5] [varchar](50) NULL,
	[a6] [varchar](50) NULL,
	[a7] [varchar](50) NULL,
	[a8] [varchar](50) NULL,
	[a9] [varchar](50) NULL,
	[a10] [varchar](50) NULL,
	[a11] [datetime] NULL,
	[a12] [varchar](50) NULL,
	[a13] [datetime] NULL,
	[a14] [varchar](50) NULL,
	[a15] [datetime] NULL,
	[a16] [varchar](200) NULL,
	[a17] [datetime] NULL,
	[a18] [varchar](200) NULL,
	[a19] [datetime] NULL,
	[a20] [varchar](200) NULL,
	[a21] [datetime] NULL,
	[a22] [varchar](200) NULL,
	[a23] [varchar](100) NULL,
	[a24] [varchar](50) NULL,
	[a25] [varchar](50) NULL,
	[a26] [varchar](50) NULL,
	[a27] [varchar](50) NULL,
	[a28] [varchar](200) NULL,
	[a29] [varchar](50) NULL,
	[a30] [varchar](50) NULL,
	[a31] [varchar](200) NULL,
	[a32] [varchar](50) NULL,
	[a33] [varchar](50) NULL,
	[a34] [varchar](50) NULL,
	[a35] [varchar](50) NULL,
	[a36] [text] NULL,
	[a37] [varchar](50) NULL,
	[a38] [varchar](50) NULL,
	[a39] [varchar](50) NULL,
	[a40] [varchar](50) NULL,
	[a41] [varchar](50) NULL,
	[a42] [varchar](50) NULL,
	[a43] [varchar](50) NULL,
	[a44] [varchar](50) NULL,
	[a45] [varchar](50) NULL,
	[a46] [varchar](50) NULL,
	[a47] [varchar](50) NULL,
	[a48] [varchar](50) NULL,
	[a49] [varchar](50) NULL,
	[a50] [varchar](50) NULL,
	[a51] [varchar](50) NULL,
	[a52] [varchar](50) NULL,
	[a53] [varchar](50) NULL,
	[a54] [varchar](50) NULL,
	[a55] [varchar](50) NULL,
	[a56] [varchar](50) NULL,
	[a57] [varchar](50) NULL,
	[a58] [varchar](50) NULL,
	[a59] [varchar](50) NULL,
	[a60] [varchar](50) NULL,
	[a61] [varchar](50) NULL,
	[a62] [varchar](50) NULL,
	[a63] [varchar](50) NULL,
	[a64] [varchar](50) NULL,
	[a65] [varchar](50) NULL,
	[a66] [varchar](50) NULL,
	[a67] [varchar](50) NULL,
	[a68] [varchar](50) NULL,
	[a69] [varchar](50) NULL,
	[a70] [varchar](50) NULL,
	[a71] [varchar](50) NULL,
	[a72] [varchar](50) NULL,
	[a73] [varchar](50) NULL,
	[a74] [varchar](50) NULL,
	[a75] [varchar](50) NULL,
	[a76] [varchar](50) NULL,
	[a77] [varchar](50) NULL,
	[a78] [varchar](50) NULL,
	[a79] [varchar](50) NULL,
	[a80] [varchar](50) NULL,
	[a81] [varchar](50) NULL,
	[a82] [varchar](50) NULL,
	[a83] [varchar](50) NULL,
	[a84] [varchar](50) NULL,
	[a85] [varchar](50) NULL,
	[a86] [varchar](50) NULL,
	[a87] [varchar](50) NULL,
	[a88] [varchar](50) NULL,
	[a89] [varchar](50) NULL,
	[a90] [varchar](50) NULL,
	[a91] [varchar](50) NULL,
	[a92] [varchar](50) NULL,
	[a93] [varchar](50) NULL,
	[a94] [varchar](50) NULL,
	[a95] [varchar](50) NULL,
	[a96] [varchar](50) NULL,
	[a97] [varchar](50) NULL,
	[a98] [varchar](50) NULL,
	[a99] [varchar](50) NULL,
	[a100] [text] NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL,
	[a101] [varchar](50) NULL,
	[a102] [text] NULL,
	[a103] [text] NULL,
	[a104] [text] NULL,
	[a105] [text] NULL,
	[typeCode1] [varchar](50) NULL,
	[typeCode2] [varchar](50) NULL,
	[typeCode3] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_a_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_a_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_creat__338207B34]  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_person_a_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_lastU__324749F6D]  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
ALTER TABLE [dbo].[wkym_person_a_2018] ADD  CONSTRAINT [DF_wkym_person_a_2018_typeCode1]  DEFAULT ('') FOR [typeCode1]
GO
ALTER TABLE [dbo].[wkym_person_a_2018] ADD  CONSTRAINT [DF_wkym_person_a_2018_typeCode2]  DEFAULT ('') FOR [typeCode2]
GO
ALTER TABLE [dbo].[wkym_person_a_2018] ADD  CONSTRAINT [DF_wkym_person_a_2018_typeCode3]  DEFAULT ('') FOR [typeCode3]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_b_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_b_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[b1] [varchar](50) NULL,
	[b2] [varchar](50) NULL,
	[b3] [varchar](200) NULL,
	[b4] [varchar](100) NULL,
	[b5] [varchar](100) NULL,
	[p_num] [int] NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_b_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_b_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_creat__35681C3A6]  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_person_b_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_lastU__3265CE7DF]  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_c_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_c_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[c1] [varchar](100) NULL,
	[c2] [varchar](50) NULL,
	[c3] [varchar](50) NULL,
	[c4] [varchar](50) NULL,
	[c5] [varchar](200) NULL,
	[c6] [varchar](50) NULL,
	[c7] [varchar](100) NULL,
	[p_num] [int] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_person_c_2018] ADD [createTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_person_c_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_person_c_2018] ADD [lastUpdateTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_person_c_2018] ADD [lastUpdator] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_c_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_c_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_person_c_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_d_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_d_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[d1] [varchar](100) NULL,
	[d2] [varchar](100) NULL,
	[d3] [varchar](50) NULL,
	[d4] [varchar](50) NULL,
	[d5] [varchar](100) NULL,
	[p_num] [int] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_person_d_2018] ADD [createTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_person_d_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_person_d_2018] ADD [lastUpdateTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_person_d_2018] ADD [lastUpdator] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_d_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_d_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_person_d_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_e_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_e_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[e1] [varchar](400) NULL,
	[e2] [varchar](100) NULL,
	[e3] [varchar](100) NULL,
	[e4] [varchar](100) NULL,
	[e5] [datetime] NULL,
	[e6] [varchar](100) NULL,
	[p_num] [int] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_person_e_2018] ADD [createTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_person_e_2018] ADD [creator] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_person_e_2018] ADD [lastUpdateTime] [varchar](500) NOT NULL
ALTER TABLE [dbo].[wkym_person_e_2018] ADD [lastUpdator] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_e_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_e_2018] ADD  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_person_e_2018] ADD  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_f_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_f_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[f1] [varchar](500) NULL,
	[f2] [varchar](100) NULL,
	[f3] [varchar](100) NULL,
	[f4] [datetime] NULL,
	[f5] [varchar](2000) NULL,
	[p_num] [int] NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_f_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_f_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_creat__7232A61B]  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_person_f_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_lastU__7326CA54]  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_g_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wkym_person_g_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[g1] [varchar](300) NULL,
	[g2] [varchar](300) NULL,
	[g3] [varchar](100) NULL,
	[g4] [varchar](50) NULL,
	[g5] [varchar](8000) NULL,
	[p_num] [int] NULL,
	[createTime] [varchar](500) NOT NULL,
	[creator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_g_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkym_person_g_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_creat__58B2CB3A]  DEFAULT (getdate()) FOR [createTime]
GO
ALTER TABLE [dbo].[wkym_person_g_2018] ADD  CONSTRAINT [DF__wkym_pers_2018_lastU__59A6EF73]  DEFAULT (getdate()) FOR [lastUpdateTime]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_h_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_h_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[h1] [varchar](50) NULL,
	[h2] [varchar](50) NULL,
	[h3] [varchar](200) NULL,
	[h4] [varchar](100) NULL,
	[h5] [varchar](100) NULL,
	[p_num] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_h_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_i_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_i_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](50) NULL,
	[i1] [varchar](200) NULL,
	[i2] [varchar](1000) NULL,
	[i3] [varchar](1000) NULL,
	[p_num] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_person_i_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_other_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_person_other_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NULL,
	[p_num] [varchar](5) NULL,
	[Pe_tag] [varchar](2) NULL,
	[Pe_name] [varchar](50) NULL,
	[Pe_id] [varchar](50) NULL,
	[pe_idtag] [char](1) NULL,
	[pe_sex] [varchar](2) NULL,
	[pe_age] [varchar](3) NULL,
	[Pe_org] [varchar](100) NULL,
	[Pe_zhiwu] [varchar](50) NULL,
	[Pe_other] [varchar](50) NULL,
	[Pe_work] [varchar](100) NULL,
	[Pe_time] [varchar](50) NULL,
	[Pe_st] [varchar](50) NULL,
	[Pe_stz] [varchar](50) NULL,
	[Pe_thisst] [varchar](50) NULL,
	[Pe_thisstz] [varchar](50) NULL,
	[Pe_sign] [varchar](50) NULL,
	[zc] [varchar](50) NULL,
	[xl] [varchar](50) NULL,
	[zy] [varchar](50) NULL,
	[Date_in] [datetime] NOT NULL,
	[institution] [varchar](500) NULL,
	[pe_zy] [varchar](500) NULL,
	[creator] [varchar](500) NULL,
	[createTime] [datetime] NULL,
	[lastUpdator] [varchar](500) NULL,
	[lastUpdateTime] [datetime] NULL,
	[pe_brithdate] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[wkym_person_other_2018] ADD  CONSTRAINT [DF_wkym_person_other_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_person_titan_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wkym_person_titan_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NULL,
	[p_num] [varchar](5) NULL,
	[Pe_name] [varchar](50) NULL,
	[pe_sex] [varchar](2) NULL,
	[pe_brithdate] [varchar](500) NULL,
	[Pe_zhichen] [varchar](50) NULL,
	[pe_wenhua] [varchar](100) NULL,
	[Pe_work] [varchar](1000) NULL,
	[Pe_orggx] [text] NULL,
	[Date_in] [datetime] NOT NULL,
	[createTime] [datetime] NULL,
	[lastUpdateTime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[wkym_person_titan_2018] ADD  CONSTRAINT [DF_wkym_person_titan_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_unitinfo2_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_unitinfo2_2018](
	[id] [numeric](19, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[p_id] [varchar](50) NULL,
	[servicefield] [varchar](50) NULL,
	[scope1content] [varchar](50) NULL,
	[scope1method] [varchar](30) NULL,
	[scope1fee] [varchar](20) NULL,
	[scope2content] [varchar](50) NULL,
	[scope2method] [varchar](30) NULL,
	[scope2fee] [varchar](20) NULL,
	[scope3content] [varchar](50) NULL,
	[scope3method] [varchar](30) NULL,
	[scope3fee] [varchar](20) NULL,
	[scope4content] [varchar](50) NULL,
	[scope4method] [varchar](30) NULL,
	[scope4fee] [varchar](20) NULL,
	[scope5content] [varchar](50) NULL,
	[scope5method] [varchar](30) NULL,
	[scope5fee] [varchar](20) NULL,
	[certificate] [varchar](50) NULL,
	[contactorname] [varchar](50) NULL,
	[contactorposi] [varchar](20) NULL,
	[contactordept] [varchar](50) NULL,
	[contactorphone] [varchar](20) NULL,
	[contactoremail] [varchar](50) NULL,
	[contactorweb] [varchar](50) NULL,
	[desc1techname] [varchar](50) NULL,
	[desc1use] [varchar](30) NULL,
	[desc1devmothod] [varchar](10) NULL,
	[desc1usemothod] [varchar](10) NULL,
	[desc2techname] [varchar](50) NULL,
	[desc2use] [varchar](30) NULL,
	[desc2devmothod] [varchar](10) NULL,
	[desc2usemothod] [varchar](10) NULL,
	[desc3techname] [varchar](50) NULL,
	[desc3use] [varchar](30) NULL,
	[desc3devmothod] [varchar](10) NULL,
	[desc3usemothod] [varchar](10) NULL,
	[desc4techname] [varchar](50) NULL,
	[desc4use] [varchar](30) NULL,
	[desc4devmothod] [varchar](10) NULL,
	[desc4usemothod] [varchar](10) NULL,
	[desc5techname] [varchar](50) NULL,
	[desc5use] [varchar](30) NULL,
	[desc5devmothod] [varchar](10) NULL,
	[desc5usemothod] [varchar](10) NULL,
	[fillindate] [datetime] NULL,
	[commitdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkym_unitinfo2_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkym_wx_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkym_wx_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NOT NULL,
	[P_num] [int] NULL,
	[wx_name] [varchar](500) NULL,
	[wx_unit] [varchar](500) NULL,
	[wx_count] [decimal](18, 1) NULL,
	[wx_org] [varchar](500) NULL,
	[wx_priz] [decimal](18, 1) NULL,
	[wx_thispr] [decimal](18, 1) NULL,
	[wx_desc] [varchar](5000) NULL,
	[creator] [varchar](500) NULL,
	[createTime] [varchar](500) NOT NULL,
	[lastUpdator] [varchar](500) NULL,
	[lastUpdateTime] [varchar](500) NOT NULL,
	[kpexhibit_id] [varchar](500) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[wkym_wx_2018] ADD [wx_pri] [varchar](500) NULL
ALTER TABLE [dbo].[wkym_wx_2018] ADD [wx_source] [varchar](500) NULL
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wkym_wx_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkymoney_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wkymoney_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_name] [varchar](300) NULL,
	[P_kwid] [varchar](50) NULL,
	[P_id] [varchar](50) NULL,
	[P_money1] [varchar](50) NULL,
	[P_money2] [varchar](50) NULL,
	[P_money3] [varchar](50) NULL,
	[P_money4] [varchar](50) NULL,
	[P_money5] [varchar](50) NULL,
	[P_money6] [varchar](50) NULL,
	[P_money7] [varchar](50) NULL,
	[P_money8] [varchar](50) NULL,
	[P_money9] [varchar](50) NULL,
	[P_money10] [varchar](50) NULL,
	[P_mmp1] [varchar](50) NULL,
	[P_mmp2] [varchar](50) NULL,
	[P_mmp3] [varchar](53) NULL,
	[P_mmp4] [varchar](50) NULL,
	[P_mmp5] [varchar](500) NULL,
	[P_mmp6] [varchar](50) NULL,
	[P_mmgj1] [varchar](50) NULL,
	[P_mmgj2] [varchar](50) NULL,
	[P_mmgj3] [varchar](50) NULL,
	[P_mmgj4] [varchar](50) NULL,
	[P_mmgj5] [varchar](500) NULL,
	[P_mmgj6] [varchar](50) NULL,
	[P_mmc1] [varchar](50) NULL,
	[P_mmc2] [varchar](50) NULL,
	[P_mmc3] [varchar](50) NULL,
	[P_mmc4] [varchar](50) NULL,
	[P_mmc5] [varchar](500) NULL,
	[P_mmc6] [varchar](50) NULL,
	[P_devg1] [varchar](50) NULL,
	[P_devg2] [varchar](50) NULL,
	[P_devg3] [varchar](50) NULL,
	[P_devg4] [varchar](50) NULL,
	[P_devg5] [varchar](500) NULL,
	[P_devg6] [varchar](50) NULL,
	[P_devs1] [varchar](50) NULL,
	[P_devs2] [varchar](50) NULL,
	[P_devs3] [varchar](50) NULL,
	[P_devs4] [varchar](50) NULL,
	[P_devs5] [varchar](500) NULL,
	[P_devs6] [varchar](50) NULL,
	[P_ma1] [varchar](50) NULL,
	[P_ma2] [varchar](50) NULL,
	[P_ma3] [varchar](50) NULL,
	[P_ma4] [varchar](50) NULL,
	[P_ma5] [varchar](500) NULL,
	[P_ma6] [varchar](50) NULL,
	[P_ran1] [varchar](50) NULL,
	[P_ran2] [varchar](50) NULL,
	[P_ran3] [varchar](50) NULL,
	[P_ran4] [varchar](50) NULL,
	[P_ran5] [varchar](500) NULL,
	[P_ran6] [varchar](50) NULL,
	[P_wx1] [varchar](50) NULL,
	[P_wx2] [varchar](50) NULL,
	[P_wx3] [varchar](50) NULL,
	[P_wx4] [varchar](50) NULL,
	[P_wx5] [varchar](500) NULL,
	[P_wx6] [varchar](50) NULL,
	[P_pub1] [varchar](50) NULL,
	[P_pub2] [varchar](50) NULL,
	[P_pub3] [varchar](50) NULL,
	[P_pub4] [varchar](50) NULL,
	[P_pub5] [varchar](500) NULL,
	[P_pub6] [varchar](50) NULL,
	[P_meet1] [varchar](50) NULL,
	[P_meet2] [varchar](50) NULL,
	[P_meet3] [varchar](50) NULL,
	[P_meet4] [varchar](50) NULL,
	[P_meet5] [varchar](500) NULL,
	[P_meet6] [varchar](50) NULL,
	[P_xiu1] [varchar](50) NULL,
	[P_xiu2] [varchar](50) NULL,
	[P_xiu3] [varchar](50) NULL,
	[P_xiu4] [varchar](50) NULL,
	[P_xiu5] [varchar](50) NULL,
	[P_xiu6] [varchar](50) NULL,
	[P_oth1] [varchar](50) NULL,
	[P_oth2] [varchar](50) NULL,
	[P_oth3] [varchar](50) NULL,
	[P_oth4] [varchar](50) NULL,
	[P_oth5] [varchar](500) NULL,
	[P_oth6] [varchar](50) NULL,
	[P_xian1] [varchar](50) NULL,
	[P_xian2] [varchar](50) NULL,
	[P_xian3] [varchar](50) NULL,
	[P_xian4] [varchar](50) NULL,
	[P_xian5] [varchar](500) NULL,
	[P_xian6] [varchar](50) NULL,
	[P_house1] [varchar](50) NULL,
	[P_house2] [varchar](50) NULL,
	[P_house3] [varchar](50) NULL,
	[P_house4] [varchar](50) NULL,
	[P_house5] [varchar](500) NULL,
	[P_house6] [varchar](50) NULL,
	[P_guan1] [varchar](50) NULL,
	[P_guan2] [varchar](50) NULL,
	[P_guan3] [varchar](50) NULL,
	[P_guan4] [varchar](50) NULL,
	[P_guan5] [varchar](500) NULL,
	[P_guan6] [varchar](50) NULL,
	[P_oj1] [varchar](50) NULL,
	[P_oj2] [varchar](50) NULL,
	[P_oj3] [varchar](50) NULL,
	[P_oj4] [varchar](50) NULL,
	[P_oj5] [varchar](500) NULL,
	[P_oj6] [varchar](50) NULL,
	[P_xiez1] [varchar](50) NULL,
	[P_xiez2] [varchar](50) NULL,
	[P_xiez3] [varchar](50) NULL,
	[P_xiez4] [varchar](50) NULL,
	[P_xiez5] [varchar](500) NULL,
	[P_xiez6] [varchar](50) NULL,
	[P_firstdig] [varchar](50) NULL,
	[P_mpdig] [varchar](50) NULL,
	[P_cwdig] [varchar](50) NULL,
	[P_orgdig] [varchar](50) NULL,
	[P_hzdig] [varchar](50) NULL,
	[P_zey] [varchar](50) NULL,
	[P_zes] [varchar](50) NULL,
	[P_zz00] [varchar](50) NULL,
	[P_zz10] [varchar](50) NULL,
	[P_zz11] [varchar](50) NULL,
	[P_zz12] [varchar](50) NULL,
	[P_zz20] [varchar](50) NULL,
	[P_zz21] [varchar](50) NULL,
	[P_zz22] [varchar](50) NULL,
	[P_zz30] [varchar](50) NULL,
	[P_zz31] [varchar](50) NULL,
	[P_zz32] [varchar](50) NULL,
	[P_zz40] [varchar](50) NULL,
	[P_zz41] [varchar](50) NULL,
	[P_zz42] [varchar](50) NULL,
	[P_zz50] [varchar](50) NULL,
	[P_zz51] [varchar](50) NULL,
	[P_zz52] [varchar](50) NULL,
	[p_gjhz0] [varchar](100) NULL,
	[p_gjhz1] [varchar](50) NULL,
	[p_gjhz2] [varchar](50) NULL,
	[p_gjhz3] [varchar](50) NULL,
	[p_gjhz4] [varchar](50) NULL,
	[p_gjhz5] [varchar](50) NULL,
	[p_gjhz6] [varchar](500) NULL,
	[Date_in] [datetime] NOT NULL,
	[p_selfmoney0] [varchar](500) NULL,
	[p_selfmoney1] [varchar](500) NULL,
	[p_selfmoney2] [varchar](500) NULL,
	[p_selfmoney3] [varchar](500) NULL,
	[p_devtotal3] [varchar](500) NULL,
	[p_lend3] [varchar](500) NULL,
	[p_added3] [varchar](500) NULL,
	[p_business3] [varchar](500) NULL,
	[p_evection3] [varchar](500) NULL,
	[p_manage3] [varchar](500) NULL,
	[p_devtotal4] [varchar](500) NULL,
	[p_lend4] [varchar](500) NULL,
	[p_business4] [varchar](500) NULL,
	[p_evection4] [varchar](500) NULL,
	[p_manage4] [varchar](500) NULL,
	[p_added4] [varchar](500) NULL,
	[p_devg7] [varchar](8000) NULL,
	[p_devs7] [varchar](8000) NULL,
	[p_xian7] [varchar](8000) NULL,
	[p_lend7] [varchar](8000) NULL,
	[p_ma7] [varchar](8000) NULL,
	[p_ran7] [varchar](8000) NULL,
	[p_wx7] [varchar](8000) NULL,
	[p_pub7] [varchar](8000) NULL,
	[p_meet7] [varchar](8000) NULL,
	[p_evection7] [varchar](8000) NULL,
	[p_xiu7] [varchar](8000) NULL,
	[p_manage7] [varchar](8000) NULL,
	[p_added7] [varchar](8000) NULL,
	[p_soft3] [varchar](500) NULL,
	[p_soft4] [varchar](500) NULL,
	[p_soft7] [varchar](8000) NULL,
	[promised] [varchar](500) NULL,
	[creator] [varchar](500) NULL,
	[createTime] [datetime] NULL,
	[lastUpdator] [varchar](500) NULL,
	[lastUpdateTime] [datetime] NULL,
	[p_mmyj3] [varchar](50) NULL,
	[p_mmyj4] [varchar](50) NULL,
	[p_devg8] [varchar](500) NULL,
	[p_devs8] [varchar](500) NULL,
	[p_lend8] [varchar](500) NULL,
	[p_ma8] [varchar](500) NULL,
	[p_wx8] [varchar](500) NULL,
	[p_ran8] [varchar](500) NULL,
	[p_evection8] [varchar](500) NULL,
	[p_meet8] [varchar](500) NULL,
	[p_gjjl8] [varchar](500) NULL,
	[p_pub8] [varchar](500) NULL,
	[p_gjjl4] [varchar](500) NULL,
	[p_gjjl7] [varchar](5000) NULL,
	[p_expert8] [varchar](500) NULL,
	[p_added8] [varchar](500) NULL,
	[p_jianjie8] [varchar](500) NULL,
	[p_jixiao8] [varchar](500) NULL,
	[p_expert4] [varchar](500) NULL,
	[p_jianjie4] [varchar](500) NULL,
	[p_jixiao4] [varchar](500) NULL,
	[p_mmls9] [varchar](500) NULL,
	[p_expert7] [varchar](5000) NULL,
	[p_jianjie7] [varchar](5000) NULL,
	[p_jixiao7] [varchar](5000) NULL,
	[p_keyandig] [varchar](500) NULL,
	[p_mmls4] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [_dta_index_wkymoney_2018_14_2106542638__K4_14_124] ON [dbo].[wkymoney_2018] 
(
	[P_id] ASC
)
INCLUDE ( [P_money10],
[P_zz00]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [pid] ON [dbo].[wkymoney_2018] 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkymoney_2018] ADD  CONSTRAINT [DF_wkymoney_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO
USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkymoney_added_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkymoney_added_2018](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NOT NULL,
	[p_num] [int] NULL,
	[Date_in] [datetime] NOT NULL,
	[moneyname] [varchar](500) NULL,
	[totalmoney] [varchar](500) NULL,
	[thismoney] [varchar](500) NULL,
	[moneymemo] [varchar](500) NULL,
	[creator] [varchar](500) NULL,
	[createTime] [datetime] NULL,
	[lastUpdator] [varchar](500) NULL,
	[lastUpdateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkymoney_added_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkymoney_added_2018] ADD  CONSTRAINT [DF__wkymoney_2018___Date___25126034Cx]  DEFAULT (getdate()) FOR [Date_in]
GO
USE [kyproject_ydb]
GO

/****** Object:  Table [dbo].[wkyname_2018]    Script Date: 08/03/2018 16:11:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[wkyname_2018](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[P_id] [varchar](50) NOT NULL,
	[P_name] [varchar](200) NOT NULL,
	[P_org] [varchar](200) NULL,
	[P_bdate] [datetime] NULL,
	[P_edate] [datetime] NULL,
	[P_mp] [varchar](50) NULL,
	[P_mpmobile] [varchar](50) NULL,
	[P_mpemail] [varchar](50) NULL,
	[P_mptel] [varchar](50) NULL,
	[P_add] [varchar](1000) NULL,
	[P_pcode] [varchar](50) NULL,
	[P_email] [varchar](50) NULL,
	[P_zcadd] [varchar](1000) NULL,
	[P_orgcode] [varchar](50) NULL,
	[P_faren] [varchar](50) NULL,
	[P_frsex] [varchar](50) NULL,
	[P_frid] [varchar](50) NULL,
	[P_fridtag] [char](1) NOT NULL,
	[P_frage] [char](10) NULL,
	[P_frxl] [varchar](50) NULL,
	[P_frdate] [varchar](50) NULL,
	[P_frtel] [varchar](50) NULL,
	[P_lxren] [varchar](50) NULL,
	[P_lxtel] [varchar](50) NULL,
	[P_lxfax] [varchar](50) NULL,
	[P_bank] [varchar](100) NULL,
	[P_account] [varchar](50) NULL,
	[P_tclass] [varchar](50) NULL,
	[P_area] [varchar](50) NULL,
	[P_class] [varchar](50) NULL,
	[P_reshu] [varchar](50) NULL,
	[P_dazhuan] [varchar](50) NULL,
	[P_dev] [varchar](50) NULL,
	[P_gl] [varchar](50) NULL,
	[P_benke] [varchar](50) NULL,
	[P_money] [varchar](50) NULL,
	[P_ratio] [varchar](50) NULL,
	[P_zmoney] [varchar](50) NULL,
	[P_profit] [varchar](50) NULL,
	[P_sale] [varchar](50) NULL,
	[P_wmoney] [varchar](50) NULL,
	[P_zcaptial] [varchar](50) NULL,
	[P_zdebt] [varchar](50) NULL,
	[P_orgtagcode] [varchar](50) NULL,
	[P_abstract] [text] NULL,
	[P_fcode] [varchar](50) NULL,
	[P_qushi] [text] NULL,
	[P_key] [ntext] NULL,
	[P_jindu] [text] NULL,
	[P_hj] [text] NULL,
	[P_kaohe] [text] NULL,
	[P_fenxian] [text] NULL,
	[P_mpresume] [text] NULL,
	[P_qt] [text] NULL,
	[P_gnco] [text] NULL,
	[P_gjco] [text] NULL,
	[P_yj] [text] NULL,
	[shtag0] [char](2) NULL,
	[shtag1] [char](2) NULL,
	[shtag2] [char](2) NULL,
	[shtag3] [char](2) NULL,
	[shtag4] [char](2) NULL,
	[shtag5] [char](2) NULL,
	[shtag6] [char](2) NULL,
	[shtag7] [char](2) NULL,
	[shtag8] [char](2) NOT NULL,
	[shtag9] [char](2) NOT NULL,
	[shtag10] [char](2) NULL,
	[P_tag] [varchar](100) NOT NULL,
	[P_psw] [varchar](50) NULL,
	[p_horg] [varchar](500) NULL,
	[fajff] [text] NULL,
	[pxkcode] [char](5) NULL,
	[pdeltag] [char](1) NOT NULL,
	[pyear] [char](10) NULL,
	[p_xingzhi] [char](10) NULL,
	[p_dinxiang] [varchar](10) NULL,
	[isanimal] [varchar](10) NULL,
	[jidi01] [text] NULL,
	[Date_in] [datetime] NOT NULL,
	[cxjjpdf1] [varchar](100) NULL,
	[cxjjpdf2] [varchar](50) NULL,
	[subjectId] [varchar](50) NULL,
	[applyEndDate] [datetime] NULL,
	[firstaudit] [varchar](50) NULL,
	[firstauditopinion] [varchar](3000) NULL,
	[shtag11] [varchar](10) NULL,
	[shtag12] [varchar](10) NULL,
	[iszscq] [varchar](50) NULL,
	[isgj] [varchar](50) NULL,
	[qxname] [varchar](50) NULL,
	[firstauditing_operaterfirstaudit] [varchar](50) NULL,
	[firstauditing_operaterprojectsubmit] [varchar](50) NULL,
	[firstauditing_operaterfail] [varchar](50) NULL,
	[firstauditing_operaterretrieveproject] [varchar](50) NULL,
	[firstauditing_operaterprojectsubmittime] [datetime] NULL,
	[firstauditing_operaterfailtimedatetime] [datetime] NULL,
	[firstauditing_operaterretrieveprojecttime] [datetime] NULL,
	[admissibleNum] [varchar](50) NULL,
	[p_kyemail] [varchar](50) NULL,
	[messagereplystate] [varchar](50) NULL,
	[lastProjSubmitTime] [datetime] NULL,
	[lastProjUpdateTime] [datetime] NULL,
	[projState] [varchar](500) NULL,
	[projType] [varchar](500) NULL,
	[parentpid] [varchar](500) NULL,
	[isOldproj] [varchar](500) NULL,
	[projSequence] [varchar](500) NULL,
	[shanimaltag] [varchar](10) NULL,
	[shtag13] [varchar](10) NULL,
	[creator] [varchar](500) NULL,
	[createTime] [datetime] NULL,
	[lastUpdator] [varchar](500) NULL,
	[lastUpdateTime] [datetime] NULL,
	[p_zhangname] [varchar](500) NULL,
	[p_frbirthdate] [datetime] NULL,
	[cw_email] [varchar](500) NULL,
	[personRatioType] [varchar](50) NULL,
	[gjhzRatioType] [varchar](50) NULL,
	[typeCode1] [varchar](50) NULL,
	[typeCode2] [varchar](50) NULL,
	[typeCode3] [varchar](50) NULL,
	[wkyname_2018id] [uniqueidentifier] NULL,
	[wkyname_2018name] [nvarchar](50) NULL,
	[p_orgDate] [datetime] NULL,
	[firstauditing_operaterbackretrieveproject] [varchar](50) NULL,
	[firstauditing_operaterbackretrieveprojecttime] [datetime] NULL,
	[kxxpreaudit] [varchar](50) NOT NULL,
	[BasicSubjectCode] [varchar](50) NULL,
	[BasicSubjectCodeDesc] [varchar](500) NULL,
	[p_guide_ls] [varchar](1000) NULL,
	[p_lxren_tj] [varchar](1000) NULL,
	[p_lxren_tj_tel] [varchar](1000) NULL,
	[p_tjqd] [varchar](50) NULL,
	[p_tjqddesc] [varchar](max) NULL,
	[p_tjqd2] [varchar](50) NULL,
	[p_tjqd2desc] [varchar](max) NULL,
	[p_tjdwdesc] [varchar](max) NULL,
	[p_tjqdCode] [varchar](50) NULL,
	[firstadditoperatername] [varchar](50) NULL,
	[firstadditoperatdate] [datetime] NULL,
	[isPmoney10MT20] [varchar](50) NULL,
	[p_zw1] [varchar](1000) NULL,
	[p_zw2] [varchar](1000) NULL,
	[p_zw3] [varchar](1000) NULL,
	[p_zw4] [varchar](1000) NULL,
	[p_zw5] [varchar](1000) NULL,
	[p_yw1] [varchar](1000) NULL,
	[p_yw2] [varchar](1000) NULL,
	[p_yw3] [varchar](1000) NULL,
	[p_yw4] [varchar](1000) NULL,
	[p_yw5] [varchar](1000) NULL,
	[p_zwzy] [varchar](1000) NULL,
 CONSTRAINT [PK_wkyname_2018] PRIMARY KEY CLUSTERED 
(
	[P_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [nodeid] ON [dbo].[wkyname_2018] 
(
	[P_tag] ASC,
	[shtag0] ASC,
	[shtag1] ASC,
	[shtag2] ASC,
	[shtag3] ASC,
	[shtag4] ASC,
	[shtag5] ASC,
	[shtag6] ASC,
	[shtag7] ASC,
	[shtag8] ASC,
	[shtag9] ASC,
	[shtag10] ASC,
	[shtag11] ASC,
	[shtag12] ASC,
	[projState] ASC,
	[shtag13] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_bdate]  DEFAULT ('1900-1-1') FOR [P_bdate]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_edate]  DEFAULT ('1900-1-1') FOR [P_edate]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_mp]  DEFAULT ('') FOR [P_mp]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_fridtag]  DEFAULT ((1)) FOR [P_fridtag]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_abstract]  DEFAULT ('') FOR [P_abstract]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_qushi]  DEFAULT ('') FOR [P_qushi]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_jindu]  DEFAULT ('') FOR [P_jindu]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_hj]  DEFAULT ('') FOR [P_hj]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_kaohe]  DEFAULT ('') FOR [P_kaohe]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_fenxian]  DEFAULT ('') FOR [P_fenxian]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_mpresume]  DEFAULT ('') FOR [P_mpresume]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_qt]  DEFAULT ('') FOR [P_qt]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_gnco]  DEFAULT ('') FOR [P_gnco]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_gjco]  DEFAULT ('') FOR [P_gjco]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_P_yj]  DEFAULT ('') FOR [P_yj]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag0]  DEFAULT ('0') FOR [shtag0]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag1]  DEFAULT ('0') FOR [shtag1]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag2]  DEFAULT ('0') FOR [shtag2]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag3]  DEFAULT ('0') FOR [shtag3]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag4]  DEFAULT ('0') FOR [shtag4]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag5]  DEFAULT ('0') FOR [shtag5]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag6]  DEFAULT ('0') FOR [shtag6]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag7]  DEFAULT ('0') FOR [shtag7]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag8]  DEFAULT ('-1') FOR [shtag8]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag9]  DEFAULT ('-1') FOR [shtag9]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag10]  DEFAULT ('-1') FOR [shtag10]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_fajff]  DEFAULT ('') FOR [fajff]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_pdeltag]  DEFAULT ('0') FOR [pdeltag]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_pyear]  DEFAULT ('2018') FOR [pyear]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_p_xingzhi]  DEFAULT ('2') FOR [p_xingzhi]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_p_dinxiang]  DEFAULT ('0') FOR [p_dinxiang]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_isanimal]  DEFAULT ((0)) FOR [isanimal]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_jidi01]  DEFAULT ('') FOR [jidi01]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_firstaudit]  DEFAULT ((0)) FOR [firstaudit]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF__wkyname_2018__shtag__74B941B4]  DEFAULT ('-1') FOR [shtag11]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF__wkyname_2018__shtag__75AD65ED]  DEFAULT ('-1') FOR [shtag12]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF__wkyname_2018__iszsc__76A18A26]  DEFAULT ('0') FOR [iszscq]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF__wkyname_20180__isgj__7795AE5F]  DEFAULT ('0') FOR [isgj]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF__wkyname_2018__isOld__280EC8889]  DEFAULT ('0') FOR [isOldproj]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shanimaltag]  DEFAULT ('-1') FOR [shanimaltag]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF_wkyname_2018_shtag13]  DEFAULT ('-1') FOR [shtag13]
GO

ALTER TABLE [dbo].[wkyname_2018] ADD  CONSTRAINT [DF__wkyname_2018__kxxpr__0B8863CA]  DEFAULT ('9') FOR [kxxpreaudit]
GO






USE [kyproject_ydb]
GO
/****** Object:  Table [dbo].[wkynameAddition_2018]    Script Date: 08/05/2015 14:03:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[wkynameAddition_2018](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[p_id] [varchar](500) NULL,
	[chrfield1] [varchar](500) NULL,
	[txtfield1] [text] NULL,
	[txtfield2] [text] NULL,
	[txtfield3] [text] NULL,
	[txtfield4] [text] NULL,
	[txtfield5] [text] NULL,
	[txtfield6] [text] NULL,
	[txtfield7] [text] NULL,
	[txtfield8] [text] NULL,
	[txtfield9] [text] NULL,
	[txtfield10] [text] NULL,
	[txtfield11] [text] NULL,
	[txtfield12] [text] NULL,
	[txtfield13] [text] NULL,
	[txtfield14] [text] NULL,
	[createTime] [datetime] NULL,
	[creator] [varchar](50) NULL,
	[lastUpdateTime] [datetime] NULL,
	[lastUpdator] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [p_id] ON [dbo].[wkynameAddition_2018] 
(
	[p_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
USE [kyproject_ydb]
GO

/****** Object:  Table [dbo].[wky_other_2018]    Script Date: 04/06/2016 10:07:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[wky_other_2018](
	[P_id] [varchar](50) NOT NULL,
	[p_jbqk] [text] NULL,
	[p_cgal] [text] NULL,
	[p_ztmb] [text] NULL,
	[p_cgxs] [text] NULL,
	[p_zlyt] [text] NULL,
	[p_hxly] [text] NULL,
	[p_jhjd] [text] NULL,
	[p_cgdw] [text] NULL,
	[p_ssbz] [text] NULL,
	[p_hzxs] [text] NULL,
	[p_yqcx] [text] NULL,
	[Date_in] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[wky_other_2018] ADD  CONSTRAINT [DF_wky_other_2018_Date_in]  DEFAULT (getdate()) FOR [Date_in]
GO


