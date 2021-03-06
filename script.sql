USE [BTLWebASP]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FullName] [nvarchar](200) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[BirthOfDate] [datetime] NULL,
	[DateRegister] [datetime] NULL,
	[LastAccess] [datetime] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[Aliases] [varchar](50) NULL,
 CONSTRAINT [PK_LOAISP] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] NOT NULL,
	[CountryName] [nvarchar](200) NOT NULL,
	[Code] [nchar](4) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupProduct]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProduct](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Aliases] [varchar](50) NULL,
 CONSTRAINT [PK_NHOMSP] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MailBox]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailBox](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[MaiContent] [nvarchar](max) NOT NULL,
	[DateEnter] [datetime] NOT NULL,
	[IsChecked] [bit] NOT NULL,
 CONSTRAINT [PK_HopThu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](150) NULL,
	[OrderDate] [datetime] NOT NULL,
	[Total] [int] NOT NULL,
	[IsShipping] [bit] NOT NULL,
	[ShippingDate] [datetime] NULL,
	[Note] [nvarchar](250) NULL,
	[UserID] [nvarchar](128) NULL,
	[Fax] [bigint] NULL,
	[CountryID] [int] NULL,
	[Postcode] [bigint] NULL,
	[City] [nvarchar](200) NULL,
 CONSTRAINT [PK_DatHang_1] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDet]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDet](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [bigint] NOT NULL,
	[Total] [bigint] NOT NULL,
 CONSTRAINT [PK_DatHangCT] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/04/2018 3:25:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [bigint] NOT NULL,
	[SalePrice] [bigint] NULL,
	[Image] [nvarchar](150) NULL,
	[GroupID] [int] NOT NULL,
	[DateEnter] [datetime] NOT NULL,
	[IsStopSelling] [bit] NOT NULL,
	[Aliases] [varchar](150) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'Ad', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'Mod', N'Mod')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2f7e4c3e-9ae9-4eed-8cc5-ff5ee339369c', N'Ad')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f8c1b8a-94b5-4097-aadd-642b23fe53da', N'Ad')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address], [Avatar], [BirthOfDate], [DateRegister], [LastAccess]) VALUES (N'1fad7222-7e5a-424c-9ef3-97f41f22b173', N'fastforious1234567@gmail.com', 1, N'AOAlEjj8SFBdj9m+qhFAudiLAmY0M6shJ8WOybl82LU3OuuhwH7oB2hftrvwwPTBHw==', N'019566ac-5b64-41a7-99c5-2f2085ad479a', NULL, 0, 0, NULL, 1, 0, N'ABCDEF', N'A  B C D E F ', N'Ha Noi', N'1fad7222-7e5a-424c-9ef3-97f41f22b173.jpg', CAST(N'2017-04-06T00:00:00.000' AS DateTime), CAST(N'2017-04-17T09:57:23.753' AS DateTime), CAST(N'2017-04-18T16:42:35.527' AS DateTime))
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address], [Avatar], [BirthOfDate], [DateRegister], [LastAccess]) VALUES (N'2f7e4c3e-9ae9-4eed-8cc5-ff5ee339369c', N'chuvanquang96@gmail.com', 1, N'AMJbYp1rIMGmy3YowsLNwvx+gAIddFtzLA9mYaHi2q8Z8Jl1PJcn5g1DZp2056cEuA==', N'a43786dc-dec2-47cf-b53f-e0fbcfc387f9', NULL, 0, 0, NULL, 1, 0, N'QuangChu', N'Chu Van Quang', N'Vinh Phuc', N'2f7e4c3e-9ae9-4eed-8cc5-ff5ee339369c.jpg', CAST(N'1996-12-06T00:00:00.000' AS DateTime), CAST(N'2017-03-21T21:16:04.617' AS DateTime), CAST(N'2018-03-21T23:37:54.147' AS DateTime))
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address], [Avatar], [BirthOfDate], [DateRegister], [LastAccess]) VALUES (N'3f8c1b8a-94b5-4097-aadd-642b23fe53da', N'cotyeyddca1@gmail.com', 1, N'ABY3fqK+D7jKQfWhQTqKCtY2eSqMFV9pyz/HgFZXJ0SbE3bUWpTg7ix0xiXTbPW46A==', N'0bd0ed1d-d05b-49a2-8a61-8a98f01e7b27', NULL, 0, 0, NULL, 1, 0, N'vincent', N'', N'Hà Nội', N'myavatar.jpg', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address], [Avatar], [BirthOfDate], [DateRegister], [LastAccess]) VALUES (N'40522765-f681-4e08-b2fa-9c9cbb212474', N'jacker200015@gmail.com', 1, N'AHUB4SKwzPUIvS4MOwRNun4DYdcQ4VL5uHoKg+/IT9nziCRyQAzrX6aDlfUZCYkFQw==', N'4498feca-6352-4848-a125-cdec4e99295b', NULL, 0, 0, NULL, 1, 0, N'HongLinh', N'Nguyễn Hồng Lĩnh', N'Hà Nội', N'user.png', CAST(N'2017-04-10T00:00:00.000' AS DateTime), CAST(N'2017-04-18T16:03:32.657' AS DateTime), CAST(N'2017-04-18T16:33:47.417' AS DateTime))
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address], [Avatar], [BirthOfDate], [DateRegister], [LastAccess]) VALUES (N'b7f83f82-ba84-45c8-8d0f-6c51425a1795', N'cotyey1@gmail.com', 0, N'AF9ZR9/h1DN7i6/JY3QziLGjsX6r3YCwHtq5NxtCfGuc8zRaDsfy+Y3gIHiZ1a0How==', N'869372fe-0ca9-47ee-a5cb-cea71b0a58d2', NULL, 0, 0, NULL, 1, 0, N'test', N'', N'', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address], [Avatar], [BirthOfDate], [DateRegister], [LastAccess]) VALUES (N'c49a4a5c-0a5a-4b5d-9974-94fa800908cc', N'a@gmail.com', 1, N'ALLz1R3siBEooeI4kQBpWVESOHILiMA9hs0iq0+j6lajMkh+F3hsbrWq3T0QyuNjxg==', N'a7f4a99e-58fb-41b5-b8c5-047067686e53', NULL, 0, 0, NULL, 1, 0, N'test1', N'', N'', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Aliases]) VALUES (1, N'Quần áo nữ', N'Quan-ao-nu')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Aliases]) VALUES (2, N'Quần áo nam', N'Quan-ao-nam')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Aliases]) VALUES (3, N'Phụ kiện', N'Phu-kien-thoi-trang')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (1, N'Afghanistan', N'AF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (2, N'Åland Islands', N'AX  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (3, N'Albania', N'AL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (4, N'Algeria', N'DZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (5, N'American Samoa', N'AS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (6, N'AndorrA', N'AD  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (7, N'Angola', N'AO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (8, N'Anguilla', N'AI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (9, N'Antarctica', N'AQ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (10, N'Antigua and Barbuda', N'AG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (11, N'Argentina', N'AR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (12, N'Armenia', N'AM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (13, N'Aruba', N'AW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (14, N'Australia', N'AU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (15, N'Austria', N'AT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (16, N'Azerbaijan', N'AZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (17, N'Bahamas', N'BS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (18, N'Bahrain', N'BH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (19, N'Bangladesh', N'BD  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (20, N'Barbados', N'BB  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (21, N'Belarus', N'BY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (22, N'Belgium', N'BE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (23, N'Belize', N'BZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (24, N'Benin', N'BJ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (25, N'Bermuda', N'BM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (26, N'Bhutan', N'BT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (27, N'Bolivia', N'BO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (28, N'Bosnia and Herzegovina', N'BA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (29, N'Botswana', N'BW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (30, N'Bouvet Island', N'BV  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (31, N'Brazil', N'BR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (32, N'British Indian Ocean Territory', N'IO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (33, N'Brunei Darussalam', N'BN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (34, N'Bulgaria', N'BG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (35, N'Burkina Faso', N'BF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (36, N'Burundi', N'BI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (37, N'Cambodia', N'KH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (38, N'Cameroon', N'CM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (39, N'Canada', N'CA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (40, N'Cape Verde', N'CV  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (41, N'Cayman Islands', N'KY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (42, N'Central African Republic', N'CF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (43, N'Chad', N'TD  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (44, N'Chile', N'CL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (45, N'China', N'CN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (46, N'Christmas Island', N'CX  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (47, N'Cocos (Keeling) Islands', N'CC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (48, N'Colombia', N'CO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (49, N'Comoros', N'KM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (50, N'Congo', N'CG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (51, N'Congo, The Democratic Republic of the', N'CD  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (52, N'Cook Islands', N'CK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (53, N'Costa Rica', N'CR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (54, N'Cote D''Ivoire', N'CI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (55, N'Croatia', N'HR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (56, N'Cuba', N'CU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (57, N'Cyprus', N'CY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (58, N'Czech Republic', N'CZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (59, N'Denmark', N'DK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (60, N'Djibouti', N'DJ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (61, N'Dominica', N'DM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (62, N'Dominican Republic', N'DO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (63, N'Ecuador', N'EC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (64, N'Egypt', N'EG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (65, N'El Salvador', N'SV  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (66, N'Equatorial Guinea', N'GQ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (67, N'Eritrea', N'ER  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (68, N'Estonia', N'EE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (69, N'Ethiopia', N'ET  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (70, N'Falkland Islands (Malvinas)', N'FK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (71, N'Faroe Islands', N'FO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (72, N'Fiji', N'FJ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (73, N'Finland', N'FI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (74, N'France', N'FR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (75, N'French Guiana', N'GF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (76, N'French Polynesia', N'PF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (77, N'French Southern Territories', N'TF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (78, N'Gabon', N'GA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (79, N'Gambia', N'GM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (80, N'Georgia', N'GE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (81, N'Germany', N'DE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (82, N'Ghana', N'GH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (83, N'Gibraltar', N'GI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (84, N'Greece', N'GR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (85, N'Greenland', N'GL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (86, N'Grenada', N'GD  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (87, N'Guadeloupe', N'GP  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (88, N'Guam', N'GU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (89, N'Guatemala', N'GT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (90, N'Guernsey', N'GG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (91, N'Guinea', N'GN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (92, N'Guinea-Bissau', N'GW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (93, N'Guyana', N'GY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (94, N'Haiti', N'HT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (95, N'Heard Island and Mcdonald Islands', N'HM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (96, N'Holy See (Vatican City State)', N'VA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (97, N'Honduras', N'HN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (98, N'Hong Kong', N'HK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (99, N'Hungary', N'HU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (100, N'Iceland', N'IS  ')
GO
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (101, N'India', N'IN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (102, N'Indonesia', N'ID  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (103, N'Iran, Islamic Republic Of', N'IR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (104, N'Iraq', N'IQ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (105, N'Ireland', N'IE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (106, N'Isle of Man', N'IM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (107, N'Israel', N'IL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (108, N'Italy', N'IT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (109, N'Jamaica', N'JM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (110, N'Japan', N'JP  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (111, N'Jersey', N'JE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (112, N'Jordan', N'JO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (113, N'Kazakhstan', N'KZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (114, N'Kenya', N'KE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (115, N'Kiribati', N'KI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (116, N'Korea, Democratic People''S Republic of', N'KP  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (117, N'Korea, Republic of', N'KR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (118, N'Kuwait', N'KW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (119, N'Kyrgyzstan', N'KG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (120, N'Lao People''S Democratic Republic', N'LA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (121, N'Latvia', N'LV  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (122, N'Lebanon', N'LB  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (123, N'Lesotho', N'LS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (124, N'Liberia', N'LR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (125, N'Libyan Arab Jamahiriya', N'LY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (126, N'Liechtenstein', N'LI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (127, N'Lithuania', N'LT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (128, N'Luxembourg', N'LU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (129, N'Macao', N'MO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (130, N'Macedonia, The Former Yugoslav Republic of', N'MK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (131, N'Madagascar', N'MG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (132, N'Malawi', N'MW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (133, N'Malaysia', N'MY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (134, N'Maldives', N'MV  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (135, N'Mali', N'ML  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (136, N'Malta', N'MT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (137, N'Marshall Islands', N'MH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (138, N'Martinique', N'MQ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (139, N'Mauritania', N'MR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (140, N'Mauritius', N'MU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (141, N'Mayotte', N'YT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (142, N'Mexico', N'MX  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (143, N'Micronesia, Federated States of', N'FM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (144, N'Moldova, Republic of', N'MD  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (145, N'Monaco', N'MC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (146, N'Mongolia', N'MN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (147, N'Montserrat', N'MS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (148, N'Morocco', N'MA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (149, N'Mozambique', N'MZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (150, N'Myanmar', N'MM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (151, N'Namibia', N'NA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (152, N'Nauru', N'NR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (153, N'Nepal', N'NP  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (154, N'Netherlands', N'NL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (155, N'Netherlands Antilles', N'AN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (156, N'New Caledonia', N'NC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (157, N'New Zealand', N'NZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (158, N'Nicaragua', N'NI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (159, N'Niger', N'NE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (160, N'Nigeria', N'NG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (161, N'Niue', N'NU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (162, N'Norfolk Island', N'NF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (163, N'Northern Mariana Islands', N'MP  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (164, N'Norway', N'NO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (165, N'Oman', N'OM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (166, N'Pakistan', N'PK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (167, N'Palau', N'PW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (168, N'Palestinian Territory, Occupied', N'PS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (169, N'Panama', N'PA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (170, N'Papua New Guinea', N'PG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (171, N'Paraguay', N'PY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (172, N'Peru', N'PE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (173, N'Philippines', N'PH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (174, N'Pitcairn', N'PN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (175, N'Poland', N'PL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (176, N'Portugal', N'PT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (177, N'Puerto Rico', N'PR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (178, N'Qatar', N'QA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (179, N'Reunion', N'RE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (180, N'Romania', N'RO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (181, N'Russian Federation', N'RU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (182, N'RWANDA', N'RW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (183, N'Saint Helena', N'SH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (184, N'Saint Kitts and Nevis', N'KN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (185, N'Saint Lucia', N'LC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (186, N'Saint Pierre and Miquelon', N'PM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (187, N'Saint Vincent and the Grenadines', N'VC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (188, N'Samoa', N'WS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (189, N'San Marino', N'SM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (190, N'Sao Tome and Principe', N'ST  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (191, N'Saudi Arabia', N'SA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (192, N'Senegal', N'SN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (193, N'Serbia and Montenegro', N'CS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (194, N'Seychelles', N'SC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (195, N'Sierra Leone', N'SL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (196, N'Singapore', N'SG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (197, N'Slovakia', N'SK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (198, N'Slovenia', N'SI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (199, N'Solomon Islands', N'SB  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (200, N'Somalia', N'SO  ')
GO
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (201, N'South Africa', N'ZA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (202, N'South Georgia and the South Sandwich Islands', N'GS  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (203, N'Spain', N'ES  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (204, N'Sri Lanka', N'LK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (205, N'Sudan', N'SD  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (206, N'Suriname', N'SR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (207, N'Svalbard and Jan Mayen', N'SJ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (208, N'Swaziland', N'SZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (209, N'Sweden', N'SE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (210, N'Switzerland', N'CH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (211, N'Syrian Arab Republic', N'SY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (212, N'Taiwan, Province of China', N'TW  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (213, N'Tajikistan', N'TJ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (214, N'Tanzania, United Republic of', N'TZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (215, N'Thailand', N'TH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (216, N'Timor-Leste', N'TL  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (217, N'Togo', N'TG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (218, N'Tokelau', N'TK  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (219, N'Tonga', N'TO  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (220, N'Trinidad and Tobago', N'TT  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (221, N'Tunisia', N'TN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (222, N'Turkey', N'TR  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (223, N'Turkmenistan', N'TM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (224, N'Turks and Caicos Islands', N'TC  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (225, N'Tuvalu', N'TV  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (226, N'Uganda', N'UG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (227, N'Ukraine', N'UA  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (228, N'United Arab Emirates', N'AE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (229, N'United Kingdom', N'GB  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (230, N'United States', N'US  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (231, N'United States Minor Outlying Islands', N'UM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (232, N'Uruguay', N'UY  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (233, N'Uzbekistan', N'UZ  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (234, N'Vanuatu', N'VU  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (235, N'Venezuela', N'VE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (236, N'Viet Nam', N'VN  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (237, N'Virgin Islands, British', N'VG  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (238, N'Virgin Islands, U.S.', N'VI  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (239, N'Wallis and Futuna', N'WF  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (240, N'Western Sahara', N'EH  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (241, N'Yemen', N'YE  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (242, N'Zambia', N'ZM  ')
INSERT [dbo].[Country] ([CountryID], [CountryName], [Code]) VALUES (243, N'Zimbabwe', N'ZW  ')
SET IDENTITY_INSERT [dbo].[GroupProduct] ON 

INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (1, N'Áo sơ mi nữ', 1, N'Ao-so-mi-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (2, N'Áo sơ mi nam', 2, N'Ao-so-mi-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (3, N'Áo khoác nữ', 1, N'Ao-khoac-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (4, N'Áo khoác nam', 2, N'Ao-khoac-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (5, N'Áo thun nam', 2, N'Ao-thun-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (6, N'Áo thun nữ', 1, N'Ao-thun-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (7, N'Quần jean nữ', 1, N'Quan-jean-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (8, N'Quần jean nam', 2, N'Quan-jean-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (9, N'Quần tây nam', 2, N'Quan-tay-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (10, N'Quần tây nữ', 1, N'Quan-tay-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (11, N'Quần kaki nữ', 1, N'Quan-kaki-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (12, N'Váy - Đầm', 1, N'Vay-Dam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (13, N'Quần đùi, short nữ', 1, N'Quan-dui-short-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (14, N'Quần đùi, short nam', 2, N'Quan-dui-short-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (15, N'Quần kaki nam', 2, N'Quan-kaki-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (16, N'Đồ ngủ nữ', 1, N'Do-ngu-nu')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (17, N'Đồ ngủ nam', 2, N'Do-ngu-nam')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (18, N'Mắt kính', 3, N'Mat-kinh')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (19, N'Kẹp tóc, băng đô', 3, N'Kep-toc-bang-do')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (20, N'Nón, dây nịt', 3, N'Non-day-nit')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (21, N'Túi xách', 3, N'Tui-xach')
INSERT [dbo].[GroupProduct] ([GroupID], [GroupName], [CategoryID], [Aliases]) VALUES (22, N'Giầy dép', 3, N'Giay-dep')
SET IDENTITY_INSERT [dbo].[GroupProduct] OFF
SET IDENTITY_INSERT [dbo].[MailBox] ON 

INSERT [dbo].[MailBox] ([ID], [Name], [Email], [MaiContent], [DateEnter], [IsChecked]) VALUES (1, N'Phạm Ngọc Cẩm Đào', N'abc@yahoo.com', N'Cảm nhận một không gian nhà vườn mộc mạc, thưởng thức các loại hải sản tươi sống, nhà hàng Alphatek mang đến cho bạn một hương vị thanh đạm chốn hương quê giữa lòng thành phố.', CAST(N'2013-09-03T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[MailBox] ([ID], [Name], [Email], [MaiContent], [DateEnter], [IsChecked]) VALUES (2, N'Trần Hùng', N'tranhung@gmail.com', N'Đến với nhà hàng Alphatek là sự lựa chọn của nhiều thực khách, trong đó có tôi, muốn tìm đến không gian thoáng đãng, yên tĩnh cho những buổi gặp mặt người thân, bạn bè và đồng nghiệp', CAST(N'2013-09-03T11:14:12.737' AS DateTime), 1)
INSERT [dbo].[MailBox] ([ID], [Name], [Email], [MaiContent], [DateEnter], [IsChecked]) VALUES (4, N'nguyễn ái tuấn', N'nguyenaituan@yahoo.com', N'Website cần bổ sung thêm chức năng thanh toán qua thẻ ngân hàng.', CAST(N'2016-10-16T14:18:20.607' AS DateTime), 1)
INSERT [dbo].[MailBox] ([ID], [Name], [Email], [MaiContent], [DateEnter], [IsChecked]) VALUES (8, N'nguyễn ái tuấn', N'nguyenaituan95@gmail.com', N'Website cần bổ sung thêm chức năng thanh toán qua thẻ ngân hàng.', CAST(N'2016-10-16T14:24:01.457' AS DateTime), 1)
INSERT [dbo].[MailBox] ([ID], [Name], [Email], [MaiContent], [DateEnter], [IsChecked]) VALUES (9, N'Lê Minh Nhơn', N'leminhnhon@gmail.com', N'Website rất đẹp nhưng responsive.', CAST(N'2016-10-18T14:38:07.997' AS DateTime), 1)
INSERT [dbo].[MailBox] ([ID], [Name], [Email], [MaiContent], [DateEnter], [IsChecked]) VALUES (1009, N'Nguyễn Tuấn Tú', N'tuantu@gmail.com', N'Xin chào cả nhà', CAST(N'2016-11-29T13:45:20.603' AS DateTime), 1)
INSERT [dbo].[MailBox] ([ID], [Name], [Email], [MaiContent], [DateEnter], [IsChecked]) VALUES (1010, N'Quang Chu', N'chuvanquang96@gmail.com', N'qqwq', CAST(N'2017-03-15T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[MailBox] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (1, N'Trần Thanh Tâm', N'01688996543', N'123 Lê Hồng Phong, Quận 10, Tp.HCM', N'thanhtam@gmail.com', CAST(N'2017-03-01T16:54:14.000' AS DateTime), 3500000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'b7f83f82-ba84-45c8-8d0f-6c51425a1795', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (2, N'Lê Quốc Tuấn Anh', N'01688996547', N'456 Lê Lai, Q1, Tp.HCM', N'tuananh@yahoo.com', CAST(N'2014-04-01T16:54:14.000' AS DateTime), 200000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'40522765-f681-4e08-b2fa-9c9cbb212474', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (3, N'Lê Văn Quốc ', N'01687986547', N'222 Trần Hưng Đạo', N'quoc@gmail.com', CAST(N'2017-04-01T16:54:14.000' AS DateTime), 310000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'40522765-f681-4e08-b2fa-9c9cbb212474', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (4, N'Trần Thanh Mai', N'01687986541', N'202 Trần Hưng Đạo', N'mai@gmail.com', CAST(N'2017-05-01T16:54:14.000' AS DateTime), 335000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'b7f83f82-ba84-45c8-8d0f-6c51425a1795', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (5, N'Trương Quỳnh Thư', N'01688991547', N'128 Trần Phú', N'quynhthu@gmail.com', CAST(N'2017-06-01T16:54:14.000' AS DateTime), 440000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'c49a4a5c-0a5a-4b5d-9974-94fa800908cc', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (6, N'Lê Ngọc Kha', N'0906293981', N'345 Lê Lai', N'ngockha@yahoo.com', CAST(N'2017-06-01T16:54:14.000' AS DateTime), 380000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'b7f83f82-ba84-45c8-8d0f-6c51425a1795', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (7, N'Phi kiến Tâm', N'0906793981', N'232 Nguyễn Chí Thanh', N'Pk0@yahoo.com', CAST(N'2017-05-01T16:54:14.000' AS DateTime), 4293000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'c49a4a5c-0a5a-4b5d-9974-94fa800908cc', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (8, N'Lê đình trầm Long', N'0962410722', N'155 Võ Thị Sáu', N'Ldt0@mdahcmcom', CAST(N'2017-08-01T16:54:14.000' AS DateTime), 4300000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'1fad7222-7e5a-424c-9ef3-97f41f22b173', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (9, N'Phí thị quang Viễn', N'0983715433', N'190 Sư Vạn Hạnh', N'Ptq0@mdahcmvn', CAST(N'2017-10-01T16:54:14.000' AS DateTime), 7250000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'1fad7222-7e5a-424c-9ef3-97f41f22b173', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (10, N'Cao đình Phán', N'0959719234', N'247 Thành Thái', N'Cd0@euhcom', CAST(N'2017-11-01T16:54:14.000' AS DateTime), 2500000, 1, CAST(N'2014-05-02T00:00:00.000' AS DateTime), NULL, N'c49a4a5c-0a5a-4b5d-9974-94fa800908cc', NULL, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OrderID], [Name], [Phone], [Address], [Email], [OrderDate], [Total], [IsShipping], [ShippingDate], [Note], [UserID], [Fax], [CountryID], [Postcode], [City]) VALUES (16, N'Trần Đức Cừ', N'01683368775', N'Đông Anh Hà Nội', N'cotyeyddca1@gmail.com', CAST(N'2018-03-27T23:51:16.057' AS DateTime), 5078000, 0, NULL, N'test', N'40522765-f681-4e08-b2fa-9c9cbb212474', 35325, 236, 100000, N'Hà Nội')
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (1, 32, 10, 310000, 3100000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (1, 89, 2, 200000, 400000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (2, 89, 1, 200000, 200000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (3, 23, 1, 310000, 310000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (4, 13, 1, 165000, 165000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (4, 139, 1, 170000, 170000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (5, 25, 2, 220000, 440000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (6, 109, 2, 190000, 380000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (7, 157, 10, 429300, 4293000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (8, 190, 10, 80000, 800000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (8, 194, 20, 100000, 2000000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (8, 204, 1, 1500000, 1500000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (9, 173, 2, 600000, 1200000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (9, 176, 15, 300000, 4500000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (9, 231, 1, 1550000, 1550000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (10, 89, 1, 200000, 200000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (10, 176, 1, 300000, 300000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (10, 186, 1, 450000, 450000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (10, 231, 1, 1550000, 1550000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (16, 219, 1, 1098000, 1098000)
INSERT [dbo].[OrderDet] ([OrderID], [ProductID], [Quantity], [Price], [Total]) VALUES (16, 226, 1, 3980000, 3980000)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (1, N'Áo cách điệu HOT HOT', N'abc', 230000, NULL, N'1.jpeg', 1, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 1, N'Ao-cach-dieu-HOT-HOT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (2, N'Áo thun KOREA mới về-Kute', N'Hàng order... nhận oder liên tục... thường là cuối tuần có hàng nên thứ 6 đóng oder.', 150000, NULL, N'2.jpeg', 6, CAST(N'2011-03-16T00:00:00.000' AS DateTime), 0, N'Ao-thun-KOREA-moi-ve-Kute')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (3, N'Khoác thun nón cực đẹp', N'CHẤT LIỆU : COTTON', 190000, NULL, N'3.jpeg', 3, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Khoac-thun-non-cuc-dep')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (4, N'Áo thun Nữ xì tin cực xinh, xanh', N'Chất Liệu Thành Phần ：100%Cotton', 220000, NULL, N'4.jpg', 6, CAST(N'2011-03-16T00:00:00.000' AS DateTime), 1, N'Ao-thun-Nu-xi-tin-cuc-xinh--xanh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (5, N'Thun sọc cá tính', N'CHẤT LIỆU : COTTON', 220000, NULL, N'5.jpeg', 6, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Thun-soc-ca-tinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (6, N'Áo ba lỗ dễ thương lắm đây', N'CHẤT LIỆU : COTTON', 150000, NULL, N'6.jpeg', 6, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Ao-ba-lo-de-thuong-lam-day')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (7, N'Áo nơ xinh form dài', N'CHẤT LIỆU : COTTON', 220000, NULL, N'7.jpg', 6, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Ao-no-xinh-form-dai')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (8, N'Áo kiểu set đôi', N'CHẤT LIỆU : COTTON', 190000, NULL, N'8.jpg', 6, CAST(N'2011-03-16T00:00:00.000' AS DateTime), 0, N'Ao-kieu-set-doi')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (9, N'Quần jeans Nam thời trang Hàn', N'', 480000, NULL, N'9.jpg', 8, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-jeans-Nam-thoi-trang-Han')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (10, N'Áo kiểu công sở Ánes_i ', N'', 150000, NULL, N'10.jpg', 1, CAST(N'2011-03-01T00:00:00.000' AS DateTime), 0, N'Ao-kieu-cong-so-Anes_i')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (11, N'Áo Khoác Cổ Đứng Và Có Nón', N'CHẤT LIỆU VẢI NỈ HỒNG KONG,RẤT DÀY,VẢI RẤT MỊN', 190000, NULL, N'11.jpg', 3, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-Khoac-Co-Dung-Va-Co-Non')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (12, N'Áo kiểu nơ xinh Ánes_i', N'<ul>', 210000, NULL, N'12.jpg', 1, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-kieu-no-xinh-Anes_i')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (13, N'Sơ mi kiểu thắt eo xinh', N'<ul>', 165000, NULL, N'13.jpg', 1, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'So-mi-kieu-that-eo-xinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (14, N'Áo kiểu nơ xinh Ánes_i', N'Tên Sản phẩm: Áo kiểu nơ xinh', 165000, NULL, N'14.jpg', 1, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-kieu-no-xinh-Anes_i')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (15, N'Chân váy kẻ sọc', N'Chân váy sọc xanh - 59k', 60000, NULL, N'15.jpg', 12, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Chan-vay-ke-soc')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (17, N'Đầm voan xinh', N'Tên Sản phẩm: Đầm voan xinh', 250000, NULL, N'17.jpg', 12, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Dam-voan-xinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (18, N'Đầm ống phong cách Q_Ling', N'Tên Sản phẩm: Đầm thun xinh xinh', 280000, NULL, N'18.jpg', 12, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Dam-ong-phong-cach-Q_Ling')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (19, N'Đầm ren voan', N'Tên Sản phẩm: Đầm ren voan', 250000, NULL, N'19.jpg', 12, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Dam-ren-voan')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (20, N'Áo voan yêu', N'Tên Sản phẩm: Áo voan yêu', 280000, NULL, N'20.jpg', 12, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-voan-yeu')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (21, N'Đầm satin kết hạt đá Q_Ling', N'Tên Sản phẩm: Đầm satin kết hạt đá', 280000, NULL, N'21.jpg', 12, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Dam-satin-ket-hat-da-Q_Ling')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (22, N'Đầm tầng xinh', N'', 300000, NULL, N'22.jpg', 12, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Dam-tang-xinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (23, N'Đầm ống xinh Q_Ling', NULL, 300000, NULL, N'23.jpg', 12, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Dam-ong-xinh-Q_Ling')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (24, N'Đầm kaki Q_Ling', N'', 300000, NULL, N'24.jpg', 12, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Dam-kaki-Q_Ling')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (25, N'Gile nam cute Men', N'', 220000, NULL, N'25.jpg', 4, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Gile-nam-cute-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (26, N'Áo khoác kiểu lạ Men', N'', 350000, NULL, N'26.jpg', 4, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-khoac-kieu-la-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (27, N'Áo kiểu lạ Men', N'', 350000, NULL, N'27.jpg', 4, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-kieu-la-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (28, N'Fashion Men Men 07', N'', 340000, NULL, N'28.jpg', 4, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Fashion-Men-Men-07')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (29, N'Áo khoác hai lớp Men', N'', 350000, NULL, N'29.jpg', 4, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-khoac-hai-lop-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (30, N'Áo khoác nón M 1003', N'', 290000, NULL, N'30.jpg', 4, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Ao-khoac-non-M-1003')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (31, N'Áo khoác nam Men', N'', 280000, NULL, N'31.jpg', 4, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-khoac-nam-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (32, N'Sơ mi cá tính', N'', 310000, NULL, N'32.png', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'So-mi-ca-tinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (33, N'Sơ mi phong cách Men', N'', 300000, NULL, N'33.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'So-mi-phong-cach-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (34, N'Áo sơ mi thun Men', N'', 230000, NULL, N'34.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-so-mi-thun-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (35, N'Áo sơ mi nam kiểu Men', N'', 285000, NULL, N'35.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-so-mi-nam-kieu-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (36, N'Áo sơ mi nam viền M ', N'', 300000, NULL, N'36.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-so-mi-nam-vien-M')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (37, N'Sơ mi nối sọoc Men', N'', 290000, NULL, N'37.jpg', 2, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'So-mi-noi-sooc-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (38, N'Sơ mi nam công sở Men', N'', 290000, NULL, N'38.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'So-mi-nam-cong-so-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (39, N'Sơ mi sang trọng Men', N'', 280000, NULL, N'39.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'So-mi-sang-trong-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (41, N'Sơ mi caro Men', N'', 290000, NULL, N'41.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'So-mi-caro-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (42, N'Áo sơ mi nam caro Men', N'', 290000, NULL, N'42.jpg', 2, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Ao-so-mi-nam-caro-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (43, N'Sơ mi Hàn Men', N'', 310000, NULL, N'43.jpg', 2, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'So-mi-Han-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (44, N'Sơ mi kiểu hoàng tộc Men', N'', 280000, NULL, N'44.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'So-mi-kieu-hoang-toc-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (45, N'Áo thun nam lạ Men', N'', 260000, NULL, N'45.jpg', 2, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-thun-nam-la-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (46, N'Áo thun cute Men', N'', 290000, NULL, N'46.jpg', 5, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-thun-cute-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (47, N'Áo thun ba màu Men', N'', 220000, NULL, N'47.jpg', 5, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Ao-thun-ba-mau-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (48, N'Áo thun khăn quàng Men', N'', 230000, NULL, N'48.jpg', 5, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-thun-khan-quang-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (49, N'Áo nam cute Men', N'', 240000, NULL, N'49.jpg', 5, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-nam-cute-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (50, N'Áo nam kiểu lạ Men', N'', 270000, NULL, N'50.jpg', 5, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Ao-nam-kieu-la-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (51, N'Áo thun trắng đen Men', N'', 210000, NULL, N'51.jpg', 5, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-thun-trang-den-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (52, N'Áo nam phong cách Men', N'', 220000, NULL, N'52.jpg', 5, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-nam-phong-cach-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (53, N'Áo nam phong cách Men', N'', 300000, NULL, N'53.jpg', 5, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-nam-phong-cach-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (54, N'Áo thun cá tính Men', N'', 260000, NULL, N'54.jpg', 5, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Ao-thun-ca-tinh-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (55, N'Quần kiểu lạ Men', N'', 300000, NULL, N'55.jpg', 14, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-kieu-la-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (56, N'Quần túi hộp Men', N'', 360000, NULL, N'56.jpg', 14, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Quan-tui-hop-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (57, N'Quần sort cute Men', N'', 280000, NULL, N'57.jpg', 14, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Quan-sort-cute-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (58, N'Quần lửng cute Men', N'', 280000, NULL, N'58.jpg', 14, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-lung-cute-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (59, N'quần dài nam hàn quốc cực xinh', N'', 350000, NULL, N'59.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'quan-dai-nam-han-quoc-cuc-xinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (60, N'Quần kaki phong cách Men', N'', 330000, NULL, N'60.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-kaki-phong-cach-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (61, N'Quần nam ống côn M', N'', 370000, NULL, N'61.jpg', 15, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Quan-nam-ong-con-M')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (62, N'Quần nam cute Men', N'', 350000, NULL, N'62.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-nam-cute-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (63, N'Quần kiểu lạ Men', N'', 290000, NULL, N'63.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-kieu-la-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (64, N'Quần nam phong cách Men', N'', 320000, NULL, N'64.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-nam-phong-cach-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (65, N'Quần nam dây kéo M', N'', 360000, NULL, N'65.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-nam-day-keo-M')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (66, N'Quần kaki công sở M', N'', 350000, NULL, N'66.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-kaki-cong-so-M')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (67, N'Quần nam sang trọng Men', N'', 330000, NULL, N'67.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-nam-sang-trong-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (68, N'Quần kaki túi kiểu Men', N'', 310000, NULL, N'68.jpg', 15, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Quan-kaki-tui-kieu-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (69, N'Quần Dior Home Men', N'', 330000, NULL, N'69.jpg', 15, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-Dior-Home-Men')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (70, N'Double-face Chinese style men''s silk bathrobe robe or gow', N'', 50000, NULL, N'70.jpg', 17, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Double-face-Chinese-style-men''s-silk-bathrobe-robe-or-gow')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (71, N'NAUTICA SLEEPWEAR COTTON ROBE MEN''S BLUE EUC', N'', 200000, NULL, N'71.jpg', 17, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'NAUTICA-SLEEPWEAR-COTTON-ROBE-MEN''S-BLUE-EUC')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (72, N'NIP MEN''S BASIC EDITIONS SLEEVE FLANNEL PAJAMAS', N'', 210000, NULL, N'72.jpg', 17, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'NIP-MEN''S-BASIC-EDITIONS-SLEEVE-FLANNEL-PAJAMAS')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (73, N'BNWT MEN''S SLEEPWEAR SET DC Originals', N'', 170000, NULL, N'73.jpg', 17, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'BNWT-MEN''S-SLEEPWEAR-SET-DC-Originals')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (74, N'New Mens Terry Velour Cotton Luxury Bathrobe', N'', 900000, NULL, N'74.jpg', 17, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'New-Mens-Terry-Velour-Cotton-Luxury-Bathrobe')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (75, N'IZOD MEN''S BLACK AND RED CHECKED VELOUR BATHROBE', N'', 700000, NULL, N'75.jpg', 17, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'IZOD-MEN''S-BLACK-AND-RED-CHECKED-VELOUR-BATHROBE')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (76, N'Hàng xách tay USA : Quần nam Rock&Repulic', N'', 3700000, NULL, N'76.jpg', 8, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Hang-xach-tay-USA-:-Quan-nam-RockvaRepulic')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (77, N'Quần Nam cá tính 2011 - KEM', N'', 230000, NULL, N'77.jpg', 8, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-Nam-ca-tinh-2011-KEM')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (78, N'Quần jean bóng thời trang', N'', 250000, NULL, N'78.jpg', 8, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-jean-bong-thoi-trang')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (79, N'Quần jeans Nam thời trang Hàn', N'', 480000, NULL, N'79.jpg', 8, CAST(N'2011-03-17T00:00:00.000' AS DateTime), 0, N'Quan-jeans-Nam-thoi-trang-Han')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (80, N'Mixed cable knit hoodie.', N'<P><IMG src="~/hinh_minh_hoa/280x280_0024_1.jpg"></P>', 1574000, NULL, N'80.jpg', 3, CAST(N'2011-03-21T00:00:00.000' AS DateTime), 0, N'Mixed-cable-knit-hoodie-')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (81, N'Đầm voan M01', N'ko co g', 230000, NULL, N'81.jpg', 12, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Dam-voan-M01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (82, N'Đầm phi M03', N'ko', 200000, NULL, N'82.jpg', 12, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Dam-phi-M03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (83, N'Đầm Nữ dạo phố cực xinh', N'', 210000, NULL, N'83.jpg', 12, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Dam-Nu-dao-pho-cuc-xinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (84, N'Váy PN00015', N'', 220000, NULL, N'84.jpg', 12, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Vay-PN00015')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (85, N'Váy PN00013', N'', 240000, NULL, N'85.jpg', 12, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Vay-PN00013')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (86, N'Áo sơmi body Ms 01', N'', 0, NULL, N'86.jpg', 2, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (87, N'Áo sơmi body Ms 02', N'', 200000, NULL, N'87.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (88, N'Áo sơmi body Ms 03', N'', 200000, NULL, N'88.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (89, N'Áo sơmi body Ms 04', N'', 200000, NULL, N'89.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (90, N'Áo sơmi body Ms 05', N'', 200000, NULL, N'90.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (91, N'Áo sơmi body Ms 06', N'', 200000, NULL, N'91.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-06')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (92, N'Áo sơmi body Ms 07', N'', 200000, NULL, N'92.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-07')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (93, N'Áo sơmi body Ms 08', N'', 200000, NULL, N'93.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-08')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (94, N'Áo sơmi body Ms 09', N'', 200000, NULL, N'94.jpg', 2, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Ao-somi-body-Ms-09')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (95, N'Quần kaki nam MS 01', N'', 260000, NULL, N'95.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (96, N'Quần kaki nam MS 02', N'', 260000, NULL, N'96.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (97, N'Quần kaki nam MS 03', N'', 260000, NULL, N'97.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (98, N'Quần kaki nam MS 04', N'', 260000, NULL, N'98.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (99, N'Quần kaki nam MS 05', N'', 260000, NULL, N'99.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (100, N'Quần kaki nam MS 05', N'', 260000, NULL, N'100.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (101, N'Quần kaki nam MS 06', N'', 260000, NULL, N'101.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-06')
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (102, N'Quần kaki nam MS 07', N'', 260000, NULL, N'102.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-07')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (103, N'Quần kaki nam MS 08', N'', 260000, NULL, N'103.jpg', 15, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nam-MS-08')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (104, N'Quần đùi, short MS 01', N'', 220000, NULL, N'104.jpg', 14, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (105, N'Quần đùi, short MS 02', N'', 220000, NULL, N'105.jpg', 14, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (106, N'Quần đùi, short MS 03', N'', 220000, NULL, N'106.jpg', 14, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (107, N'Quần đùi, short MS 04', N'', 220000, NULL, N'107.jpg', 14, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (108, N'Quần đùi, short MS 05', N'', 220000, NULL, N'108.jpg', 14, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (109, N'Quần tây nam MS 01', N'', 190000, NULL, N'109.jpg', 9, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nam-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (110, N'Quần tây nam MS 02', N'', 190000, NULL, N'110.jpg', 9, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nam-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (111, N'Quần tây nam MS 03', N'', 190000, NULL, N'111.jpg', 9, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nam-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (112, N'Quần tây nam MS 04', N'', 190000, NULL, N'112.jpg', 9, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nam-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (113, N'Quần tây nam MS 05', N'', 190000, NULL, N'113.jpg', 9, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nam-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (114, N'Quần tây nữ MS 01', N'', 190000, NULL, N'114.jpg', 10, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nu-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (115, N'Quần tây nữ MS 02', N'', 190000, NULL, N'115.jpg', 10, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nu-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (116, N'Quần tây nữ MS 03', N'', 190000, NULL, N'116.jpg', 10, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nu-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (117, N'Quần tây nữ MS 04', N'', 190000, NULL, N'117.jpg', 10, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nu-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (118, N'Quần tây nữ MS 05', N'', 190000, NULL, N'118.jpg', 10, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-tay-nu-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (119, N'Quần kaki nữ MS 01', N'', 200000, NULL, N'119.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (120, N'Quần kaki nữ MS 02', N'', 200000, NULL, N'120.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (121, N'Quần kaki nữ MS 03', N'', 200000, NULL, N'121.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (122, N'Quần kaki nữ MS 04', N'', 200000, NULL, N'122.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (123, N'Quần kaki nữ MS 05', N'', 200000, NULL, N'123.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (124, N'Quần kaki nữ MS 06', N'', 200000, NULL, N'124.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-06')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (125, N'Quần kaki nữ MS 07', N'', 200000, NULL, N'125.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-07')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (126, N'Quần kaki nữ MS 08', N'', 200000, NULL, N'126.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-08')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (127, N'Quần kaki nữ MS 09', N'', 200000, NULL, N'127.jpg', 11, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-kaki-nu-MS-09')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (128, N'Quần jean nữ MS 01', N'', 210000, NULL, N'128.jpg', 7, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-jean-nu-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (129, N'Quần jean nữ MS 02', N'', 210000, NULL, N'129.jpg', 7, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-jean-nu-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (130, N'Quần jean nữ MS 03', N'', 210000, NULL, N'130.jpg', 7, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-jean-nu-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (131, N'Quần jean nữ MS 04', N'', 210000, NULL, N'131.jpg', 7, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-jean-nu-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (132, N'Quần jean nữ MS 05', N'', 210000, NULL, N'132.jpg', 7, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-jean-nu-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (133, N'Quần jean nữ MS 06', N'', 210000, NULL, N'133.jpg', 7, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-jean-nu-MS-06')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (134, N'Quần đùi, short nữ MS 01', N'', 170000, NULL, N'134.jpg', 13, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-nu-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (135, N'Quần đùi, short nữ MS 02', N'', 170000, NULL, N'135.jpg', 13, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-nu-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (136, N'Quần đùi, short nữ MS 03', N'', 170000, NULL, N'136.jpg', 13, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-nu-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (137, N'Quần đùi, short nữ MS 04', N'', 170000, NULL, N'137.jpg', 13, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-nu-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (138, N'Quần đùi, short nữ MS 05', N'', 170000, NULL, N'138.jpg', 13, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-nu-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (139, N'Quần đùi, short nữ MS 06', N'', 170000, NULL, N'139.jpg', 13, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-nu-MS-06')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (140, N'Quần đùi, short ữu MS 07', N'', 170000, NULL, N'140.jpg', 13, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Quan-dui-short-uu-MS-07')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (141, N'Đồ ngủ nữ MS 0', N'', 230000, NULL, N'141.jpg', 16, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Do-ngu-nu-MS-0')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (142, N'Đồ ngủ nữ MS 01', N'', 230000, NULL, N'142.jpg', 16, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Do-ngu-nu-MS-01')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (143, N'Đồ ngủ nữ MS 02', N'', 230000, NULL, N'143.jpg', 16, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Do-ngu-nu-MS-02')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (144, N'Đồ ngủ nữ MS 03', N'', 230000, NULL, N'144.jpg', 16, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Do-ngu-nu-MS-03')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (145, N'Đồ ngủ nữ MS 04', N'', 230000, NULL, N'145.jpg', 16, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Do-ngu-nu-MS-04')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (146, N'Đồ ngủ nữ MS 05', N'', 230000, NULL, N'146.jpg', 16, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Do-ngu-nu-MS-05')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (147, N'Đồ ngủ nữ MS 06', N'', 230000, NULL, N'147.jpg', 16, CAST(N'2011-04-14T00:00:00.000' AS DateTime), 0, N'Do-ngu-nu-MS-06')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (148, N'Quần tây nữ MS 051', N'', 200000, NULL, N'148.jpg', 10, CAST(N'2011-04-15T00:00:00.000' AS DateTime), 0, N'Quan-tay-nu-MS-051')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (149, N'Áo khoác  nữ  A0491', N'<p>&#160;<img width="587" height="587" src="/uploads/image/14_1304056106_1.jpg" alt="" /></p>', 150000, NULL, N'149.jpg', 3, CAST(N'2011-05-04T00:00:00.000' AS DateTime), 0, N'Ao-khoac-nu-A0491')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (150, N'Áo khoác Nỉ Nam', N'<p>&#160;</p>', 400000, NULL, N'150.jpg', 4, CAST(N'2011-05-05T00:00:00.000' AS DateTime), 0, N'Ao-khoac-Ni-Nam')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (151, N'Áo Phông Đôi', N'<p>&#160;</p>', 200000, NULL, N'151.jpg', 6, CAST(N'2011-05-05T00:00:00.000' AS DateTime), 0, N'Ao-Phong-Doi')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (152, N'Trisha jewelry', N'Kính mát UV400 lens ', 356400, NULL, N'152.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Trisha-jewelry')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (153, N'SHASHABAG jewelry', N'Kính chuồn chuồn kiểu dáng thời trang ', 176400, NULL, N'153.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'SHASHABAG-jewelry')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (154, N'SHASHABAG jewelry-Hiphop', N'Kính mát Shashabag phong cách Hiphop thu hút - 8833', 176400, NULL, N'154.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'SHASHABAG-jewelry-Hiphop')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (155, N'EyeLucy', N'Gọng kính màu sắc trẻ trung ', 477000, NULL, N'155.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'EyeLucy')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (156, N'SHASHABAG jewelry', N'Kính mát Shashabag kiểu dáng sang trọng - 1928 ', 180000, NULL, N'156.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'SHASHABAG-jewelry')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (157, N'EyeLucy Korea', N'Mắt kính eyeLucy Korea gọng sừng,chất liệu nhựa dẻo(TR) không gãy DS024 ', 429300, NULL, N'157.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'EyeLucy-Korea')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (158, N'Bandolini-KINA001', N'Kính nâu 3 khuy tròn - KINA001', 369000, NULL, N'158.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KINA001')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (159, N'Bandolini-KIVA001 ', N'Kính vàng 3 khuy tròn - KIVA001 ', 369000, NULL, N'159.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KIVA001')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (160, N'Bandolini-KINA002', N'Kính nâu khuy tròn đính đá - KINA002 ', 399000, NULL, N'160.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KINA002')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (161, N'Bandolini-KINA003', N'Kính nâu gắn bông hoa - KINA003 ', 359000, NULL, N'161.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KINA003')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (162, N'Bandolini-KINA004', N'Kính nâu đính hạt cườm - KINA004 ', 399000, NULL, N'162.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KINA004')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (163, N'Bandolini-KITI004', N'Kính tím gắn hạt cườm - KITI004 ', 399000, NULL, N'163.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KITI004')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (164, N'Bandolini-KINA005', N'Kính nâu gắn hình khối - KINA005 ', 299000, NULL, N'164.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KINA005')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (165, N'Bandolini-KINA006', N'Kính nâu khuy trái tim - KINA006 ', 299000, NULL, N'165.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'Bandolini-KINA006')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (166, N'arnaldo bassini jewelry-M1-C3', N'Gọng kính M1-C3 ', 2760000, NULL, N'166.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'arnaldo-bassini-jewelry-M1-C3')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (167, N'arnaldo bassini jewelry-M11-C3', N'Gọng kính M11-C3 thời trang ', 2760000, NULL, N'167.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'arnaldo-bassini-jewelry-M11-C3')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (168, N'arnaldo bassini jewelry-M11-C1', N'Gọng kính M11-C1 thời trang ', 2760000, NULL, N'168.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'arnaldo-bassini-jewelry-M11-C1')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (169, N'arnaldo bassini jewelry-M10-C2', N'Gọng kính M10-C2 trẻ trung ', 2760000, NULL, N'169.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'arnaldo-bassini-jewelry-M10-C2')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (170, N'arnaldo bassini jewelry-M10-C1', N'Gọng kính M10-C1 trẻ trung ', 2760000, NULL, N'170.jpg', 18, CAST(N'2011-07-02T21:25:22.000' AS DateTime), 0, N'arnaldo-bassini-jewelry-M10-C1')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (171, N'Lắc tay JJ Jewelry', N'[Giá đặc biệt] Lắc tay mùa hè trẻ trung nhiều kiểu lựa chọn ', 156000, NULL, N'171.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Lac-tay-JJ-Jewelry')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (172, N'Hoa tai Walt Disney', N'Hoa tai hình tinker bell ngồi lên vòng tròn đính hạt đá xinh xắn ', 720000, NULL, N'172.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Hoa-tai-Walt-Disney')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (173, N'Dây chuyền Walt Disney', N'Dây chuyền mặt dây đẹp mắt ', 600000, NULL, N'173.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Day-chuyen-Walt-Disney')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (174, N'RaRavon', N'Bông tai trẻ trung 40 chọn 1', 396000, NULL, N'174.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'RaRavon')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (175, N'RaRavon', N'Băng đô trẻ trung 30 chọn 1', 396000, NULL, N'175.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'RaRavon')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (176, N'MAG SHOP', N'Băng đô trẻ trung 8 chọn 1', 300000, NULL, N'176.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'MAG-SHOP')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (177, N'Chocogem', N'Băng đô hoa 5 cánh ', 640000, NULL, N'177.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Chocogem')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (178, N'Kẹp nơ Aznavour 178', N'[2set] Kẹp nơ họa tiết hoa xinh ', 720000, NULL, N'178.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Kep-no-Aznavour-178')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (179, N'Kẹp khuy tròn họa tiết da báo', N'Kẹp khuy tròn họa tiết da báo', 768000, NULL, N'179.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Kep-khuy-tron-hoa-tiet-da-bao')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (180, N'Băng đô họa tiết da beo ', N'Băng đô họa tiết da beo ', 720000, NULL, N'180.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Bang-do-hoa-tiet-da-beo')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (181, N'Aznavour Kẹp đủ màu sắc', N'[2set] Kẹp đủ màu sắc ', 640000, NULL, N'181.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Aznavour-Kep-du-mau-sac')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (182, N'Băng đô nơ chấm bi ', N'Băng đô nơ chấm bi ', 672000, NULL, N'182.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Bang-do-no-cham-bi')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (183, N'Băng đô nơ xinh ', N'Băng đô nơ xinh ', 580000, NULL, N'183.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Bang-do-no-xinh')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (184, N'Kẹp tóc nơ điểm trái tim', N'Kẹp tóc nơ điểm trái tim màu sắc ', 720000, NULL, N'184.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Kep-toc-no-diem-trai-tim')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (185, N'Thun cột tóc nơ điểm trái tim', N'Thu cột tóc nơ điểm trái tim màu sắc ', 464000, NULL, N'185.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Thun-cot-toc-no-diem-trai-tim')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (186, N'Kẹp họa tiết hoa ', N'Kẹp họa tiết hoa nữ tính', 450000, NULL, N'186.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Kep-hoa-tiet-hoa')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (187, N'Kẹp jean chấm bi ', N'Kẹp jean chấm bi ', 576000, NULL, N'187.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Kep-jean-cham-bi')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (188, N'Băng đô nơ điểm trái tim', N'Băng đô nơ điểm trái tim màu sắc ', 580000, NULL, N'188.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Bang-do-no-diem-trai-tim')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (189, N'Cột tóc trái tim in hoa', N'Cột tóc trái tim in hoa lãng mạn ', 580000, NULL, N'189.jpg', 19, CAST(N'2011-07-02T21:27:27.000' AS DateTime), 0, N'Cot-toc-trai-tim-in-hoa')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (190, N'Nón lưỡi trai pure  190', N'Nón lưỡi trai pure đơn giản', 80000, NULL, N'190.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'Non-luoi-trai-pure-190')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (191, N'Nón lưỡi trai pure 191', N'Nón lưỡi trai pure đơn giản ', 80000, NULL, N'191.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'Non-luoi-trai-pure-191')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (192, N'Chris Christy', N'Dây lưng kiểu dáng đôc đáo', 70000, NULL, N'192.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'Chris-Christy')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (193, N'SHASHABAG jewelry', N'Dây lưng bản nhỏ, nhiều màu sắc, cài hình chữ nhật khoét lỗ bầu dục ', 104400, NULL, N'193.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'SHASHABAG-jewelry')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (194, N'Nón lưỡi trai League ', N'Nón lưỡi trai League ', 100000, NULL, N'194.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'Non-luoi-trai-League')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (195, N'SHASHABAG jewelry', N'Nón vành rộng nhiều màu sắc tươi trẻ ', 196000, NULL, N'195.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'SHASHABAG-jewelry')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (196, N'THERES', N'Nón lưỡi trai thân sau dạng lưới, rách nhẹ fần lưỡi trai ', 90000, NULL, N'196.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'THERES')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (197, N'DICUBO', N'Thắt lưng sọc 3 màu thời trang ', 316000, NULL, N'197.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'DICUBO')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (198, N'SHASHABAG jewelry', N'Nón kết logo chữ nhiều màu sắc nổi bật ', 284400, NULL, N'198.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'SHASHABAG-jewelry')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (199, N'Julicat accessories', N'Vòng đeo tay dây da cá tính - P130 ', 99000, NULL, N'199.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'Julicat-accessories')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (200, N'fashion hat', N'Nón kiểu thợ săn không lưỡi hoa văn ca rô ', 516000, NULL, N'200.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'fashion-hat')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (201, N'NOTON', N'Nón lưỡi trai thêu hình cối xay gió nho xinh ', 80000, NULL, N'201.jpg', 20, CAST(N'2011-07-02T21:27:47.000' AS DateTime), 0, N'NOTON')
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (202, N'Túi xách - AHKMJY', N'Jemma - Phong Cách Cùng JEMMA <br /> Chất liệu: Jacquard (vải dệt hoa) <br />Màu sắc: Vàng ', 1290000, NULL, N'202.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMJY')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (203, N'Túi xách - AHKMPW', N'Jemma - Phong Cách Cùng JEMMA <br />Chất liệu: Da tổng hợp<br />Màu sắc: Trắng', 1250000, NULL, N'203.jpg', 21, CAST(N'2011-07-11T18:06:30.000' AS DateTime), 0, N'Tui-xach-AHKMPW')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (204, N'Túi xách - AHKMPS', N'Jemma - Phong Cách Cùng JEMMA <br />Chất liệu: Da tổng hợp<br />Màu sắc: Trắng', 1500000, NULL, N'204.bmp', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMPS')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (205, N'Túi xách - AHKMPR', N'Jemma - Phong Cách Cùng JEMMA <br />Chất liệu: Da tổng hợp<br />Màu sắc: Đỏ, đen', 1750000, NULL, N'205.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMPR')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (206, N'Ví thời trang cao cấp LV180', N'Hàng thời trang cao cấp, sắc nét . Sang trọng khi đi tiệc. Kich thuoc khoảng 25x12', 690000, NULL, N'206.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Vi-thoi-trang-cao-cap-LV180')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (207, N'Ví - APKMPN00021', N'Jemma - Phong Cách Cùng JEMMA <br />Chất liệu: Da tổng hợp<br />Màu sắc: Nâu', 960000, NULL, N'207.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Vi-APKMPN00021')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (208, N'Ví - APKMPB00005', N'Jemma - Phong Cách Cùng JEMMA <br />Chất liệu: Da tổng hợp<br />Màu sắc: Đen', 640000, NULL, N'208.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Vi-APKMPB00005')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (209, N'Ví - APKMLV00018', N'Jemma - Phong Cách Cùng JEMMA <br />Chất liệu: Da tổng hợp<br />Màu sắc: Tím. đỏ, đen', 1150000, NULL, N'209.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Vi-APKMLV00018')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (210, N'Burberry B11', N'Burberry, B11<br />', 780000, NULL, N'210.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Burberry-B11')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (211, N'Túi xách - AHKMJO', N'Chất liệu: Jacquard (vải dệt hoa)<br />Màu sắc: Cam', 1850000, NULL, N'211.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMJO')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (212, N'Túi xách - AHKMPO', N'Chất liệu: Jacquard (vải dệt hoa)<br />Màu sắc: Cam, trắng', 1490000, NULL, N'212.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMPO')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (213, N'Túi xách - AHKMLX', N'Chất liệu: Da<br />Màu sắc: Xám <br />Kích thước: Chiều dài 34 cm, chiều cao 33.5 cm ', 4450000, NULL, N'213.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMLX')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (214, N'Túi xách - AHKMLB', N'Chất liệu: Da<br />Màu sắc: Đem <br />Kích thước: Chiều dài 30 cm, chiều cao 29 cm ', 3530000, NULL, N'214.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMLB')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (215, N'Túi be mặt da rắn - TUBE034', N'World Fashion Shoe<br />Chất Liệu: Da tổng hợp<br />Màu: màu be<br />Kích thước:<br />- Width: 27 cm<br />- Height: 26 cm<br />- Depth: 5 cm<br />* Túi thiết kế dáng hộp hình chữ nhật, nhiều ngăn trang trí lớp da rắn mặt trước', 1169000, NULL, N'215.jpg', 21, CAST(N'2011-07-11T18:19:31.000' AS DateTime), 0, N'Tui-be-mat-da-ran-TUBE034')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (216, N'Túi xách - AHKMLN', N'Chất liệu: Da<br />Màu sắc: Nâu <br />Kích thước: Chiều dài 33 cm, chiều cao 23 cm ', 4950000, NULL, N'216.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-xach-AHKMLN')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (217, N'Túi nâu khóa 2 bên - TUNA027', N'World Fashion Shoe<br />Chất Liệu: Da tổng hợp<br />Màu: màu be<br />Kích thước:<br />- Width: 26 cm<br />- Height: 17 cm<br />- Depth: 8 cm<br />* Túi thiết kế nhỏ gọn', 869000, NULL, N'217.jpg', 21, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Tui-nau-khoa-2-ben-TUNA027')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (218, N'Giày đen gót da rắn - GIDE36095', N'World Fashion Shoe<br />Chất Liệu: Da cừu<br />Màu: Đen<br />Cao: 9cm<br />* Miêu tả: Giầy dáng cao 2 đế, tạo cảm giác thoải mái , phần gót thiết kế cải da rắn tạo sự trẻ trung<br /> Sizes: * 34 35 36 37 38 39', 998000, NULL, N'218.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-den-got-da-ran-GIDE36095')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (219, N'Giày đỏ da rắn nơ dây - GIDO36094', N'World Fashion Shoe<br />Chất Liệu: Da rắn<br />Màu: Đen<br />Cao: 9cm<br />* Miêu tả: Giầy dáng cao 2 đế, tạo cảm giác vững ôm chân khi sử dụng, mũi nơ trang trí<br /> Sizes: * 34 35 36 37 38 39', 1098000, NULL, N'219.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-do-da-ran-no-day-GIDO36094')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (220, N'Giày cao Pukaas P7001', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 7 cm<br/>Màu: Đen/Xám<br />Chất liệu: da bò Đức kết hợp nỉ cao cấp<br />Đế: cao su<br />Size: 38-39-40-41-42', 2980000, NULL, N'220.jpg', 22, CAST(N'2013-12-22T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P7001')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (221, N'Giày cao Pukaas P0108', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 7 cm<br/>Màu: Trắng<br />Chất liệu: da bò Đức<br />Đế: cao su<br />Size: 38-39-40-41-42', 2380000, NULL, N'221.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P0108')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (222, N'Giày cao Pukaas P0301', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 7 cm<br/>Màu: Nâu<br />Chất liệu: da bò Đức<br />Đế: cao su ép gỗ<br />Size: 38-39-40-41-42', 2180000, NULL, N'222.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P0301')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (223, N'Giày cao Pukaas P0101', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 7 cm<br/>Màu: Đen<br />Chất liệu: da bò Đức<br />Đế: cao su ép gỗ<br />Size: 38-39-40-41-42', 2980000, NULL, N'223.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P0101')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (224, N'Giày cao Pukaas P2332', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 8.5 cm<br/>Màu: Nâu<br />Chất liệu: da bò Đức<br />Đế: cao su <br />Size: 38-39-40-41-42', 2380000, NULL, N'224.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P2332')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (225, N'Giày cao Pukaas P7318', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 7 cm<br/>Màu: Nâu<br />Chất liệu: da bò Đức<br />Đế: cao su ép gỗ<br />Size: 38-39-40-41-42', 2980000, NULL, N'225.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P7318')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (226, N'Giày cao Pukaas P11801', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 7 cm<br/>Màu: Đen<br />Chất liệu: da bò Đức<br />Đế: cao su ép gỗ<br />Size: 38-39-40-41-42', 3980000, NULL, N'226.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P11801')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (227, N'Giày cao Pukaas P6915', N'Giày Cao Maucci - Pukass<br />Higher Standing - Wider Seeing<br />Nâng cao: 6.5 cm<br/>Màu: Trắng sữa<br />Chất liệu: da bò Đức<br />Đế: cao su <br />Size: 38-39-40-41-42', 2850000, NULL, N'227.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-Pukaas-P6915')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (228, N'Giày cao 75091-(7cm)', N'Boxxyno<br />Cao Hơn, Sang Trọng Hơn<br />Màu: kem<br/>Da: Bò<br />Cao: 7cm<br />Size: 37-38-39-40-41-42-43 / 5-6-6.5-7-7.5-8-8.5-9', 3040000, NULL, N'228.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-75091-7cm')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (229, N'Giày cao 8606-(7cm)', N'Boxxyno<br />Cao Hơn, Sang Trọng Hơn<br />Màu: Trắng<br/>Da: Bò<br />Laoa5iL Teh63 thao<br />Cao: 7cm<br />Size: 37-38-39-40-41-42-43 / 5-6-6.5-7-7.5-8-8.5-9', 3040000, NULL, N'229.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Giay-cao-8606-7cm')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (230, N'Kohlerman Sandal KS584', N'Kohlerman<br />What makes a man<br />Phù hợp: Công sở, thường phục<br />Chất liệu: Da bò cao cấp<br />Đế: Cao su, mặt đế da<br />Màu: Nâu - Coffee <br />Kiểu: Sandal quai hậu<br />Cỡ sandal: 39-40-41-42-43<br />Xuất xứ: Malaysia', 1550000, NULL, N'230.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Kohlerman-Sandal-KS584')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (231, N'Kohlerman Sandal KS527', N'Kohlerman<br />What makes a man<br />Phù hợp: Công sở, thường phục<br />Chất liệu: Da bò cao cấp<br />Đế: Cao su, mặt đế da<br />Màu: Nâu/vàng <br />Kiểu: Sandal quai hậu<br />Cỡ sandal: 39-40-41-42-43<br />Xuất xứ: Malaysia', 1550000, NULL, N'231.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Kohlerman-Sandal-KS527')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (232, N'Kohlerman Shoes KM59', N'Kohlerman<br />What makes a man<br />Phù hợp: Thể thao<br />Chất liệu: Da bò cao cấp<br />Đế: Cao su<br />Màu: Trắng <br />Kiểu: Buộc dây<br />Cỡ sandal: 38-42<br />Xuất xứ: Malaysia', 1500000, NULL, N'232.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Kohlerman-Shoes-KM59')
INSERT [dbo].[Product] ([ProductID], [ProductName], [Description], [Price], [SalePrice], [Image], [GroupID], [DateEnter], [IsStopSelling], [Aliases]) VALUES (233, N'Kohlerman Shoes KM27', N'<p>Kohlerman<br />
What makes a man<br />
Ph&ugrave; hợp: Thể thao, thường phục<br />
Chất liệu: Da b&ograve; cao cấp<br />
Đế: Cao su<br />
M&agrave;u: N&acirc;u<br />
Kiểu: Buộc d&acirc;y<br />
Cỡ sandal: 38-43<br />
Xuất xứ: Malaysia</p>
', 1950000, NULL, N'233.jpg', 22, CAST(N'2011-07-11T00:00:00.000' AS DateTime), 0, N'Kohlerman-Shoes-KM27')
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF__AspNetUse__FullN__2D27B809]  DEFAULT ('') FOR [FullName]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF__AspNetUse__Addre__2E1BDC42]  DEFAULT ('') FOR [Address]
GO
ALTER TABLE [dbo].[MailBox] ADD  CONSTRAINT [DF_HopThu_NgayCapNhat]  DEFAULT (getdate()) FOR [DateEnter]
GO
ALTER TABLE [dbo].[MailBox] ADD  CONSTRAINT [DF_HopThu_DaDoc]  DEFAULT ((0)) FOR [IsChecked]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_DatHang_NgayDat]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_DatHang_TriGia]  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_DatHang_DaGiao]  DEFAULT ((0)) FOR [IsShipping]
GO
ALTER TABLE [dbo].[OrderDet] ADD  CONSTRAINT [DF_DatHangCT_SoLuong]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDet] ADD  CONSTRAINT [DF_DatHangCT_DonGia]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDet] ADD  CONSTRAINT [DF_DatHangCT_ThanhTien]  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_SanPham_DonGia]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_SANPHAM_NgayDang]  DEFAULT (getdate()) FOR [DateEnter]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_SanPham_NgungBan]  DEFAULT ((0)) FOR [IsStopSelling]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[GroupProduct]  WITH CHECK ADD  CONSTRAINT [FK_Nhomsp_PhanLoai] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[GroupProduct] CHECK CONSTRAINT [FK_Nhomsp_PhanLoai]
GO
ALTER TABLE [dbo].[OrderDet]  WITH CHECK ADD  CONSTRAINT [FK_DatHangCT_DatHang] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDet] CHECK CONSTRAINT [FK_DatHangCT_DatHang]
GO
ALTER TABLE [dbo].[OrderDet]  WITH CHECK ADD  CONSTRAINT [FK_DatHangCT_SanPham] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDet] CHECK CONSTRAINT [FK_DatHangCT_SanPham]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Nhomsp] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupProduct] ([GroupID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_SanPham_Nhomsp]
GO
