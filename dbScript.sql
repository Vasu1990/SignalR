USE [master]
GO
/****** Object:  Database [test]    Script Date: 12/1/2015 12:31:25 PM ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\test.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\test_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY FULL 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'test', N'ON'
GO
USE [test]
GO
/****** Object:  Table [dbo].[Communities]    Script Date: 12/1/2015 12:31:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Communities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CountryId] [int] NULL,
	[ParentId] [int] NULL,
	[Active] [bit] NULL,
	[CreationDate] [datetime] NULL,
	[ModificationDate] [datetime] NULL,
 CONSTRAINT [PK_Communities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/1/2015 12:31:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[UserTypeId] [int] NULL,
	[DOB] [datetime] NULL,
	[Gender] [nvarchar](max) NULL,
	[CommunityId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Communities] ON 

INSERT [dbo].[Communities] ([Id], [Name], [CountryId], [ParentId], [Active], [CreationDate], [ModificationDate]) VALUES (1, N'MVC', 1, 1, 1, CAST(N'2012-12-12 00:00:00.000' AS DateTime), CAST(N'2012-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Communities] ([Id], [Name], [CountryId], [ParentId], [Active], [CreationDate], [ModificationDate]) VALUES (2, N'JAVA', 1, 1, 1, CAST(N'2012-12-12 00:00:00.000' AS DateTime), CAST(N'2012-12-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Communities] ([Id], [Name], [CountryId], [ParentId], [Active], [CreationDate], [ModificationDate]) VALUES (3, N'MVC', 1, 1, 1, CAST(N'2012-12-12 00:00:00.000' AS DateTime), CAST(N'2012-12-12 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Communities] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [UserTypeId], [DOB], [Gender], [CommunityId]) VALUES (1, N'Vasu', N'vasu@gmail.com', N'abcde', 1, CAST(N'2012-12-12 00:00:00.000' AS DateTime), N'Male', 1)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [UserTypeId], [DOB], [Gender], [CommunityId]) VALUES (2, N'Vasu2', N'vasu@gmail.com', N'abcde', 1, CAST(N'2012-12-12 00:00:00.000' AS DateTime), N'Male', 1)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [UserTypeId], [DOB], [Gender], [CommunityId]) VALUES (3, N'Vasu3', N'vasu@gmail.com', N'abcde', 1, CAST(N'2012-12-12 00:00:00.000' AS DateTime), N'Male', 1)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Password], [UserTypeId], [DOB], [Gender], [CommunityId]) VALUES (4, N'Vasu4', N'vasu@gmail.com', N'abcde', 1, CAST(N'2012-12-12 00:00:00.000' AS DateTime), N'Male', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Communities] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Communities] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Communities]
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
