USE [master]
GO
/****** Object:  Database [PruebaTec1]    Script Date: 14/02/2022 10:34:36 a. m. ******/
CREATE DATABASE [PruebaTec1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaTec1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTec1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaTec1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTec1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PruebaTec1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaTec1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaTec1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaTec1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaTec1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaTec1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaTec1] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaTec1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaTec1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaTec1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaTec1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaTec1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaTec1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaTec1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaTec1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaTec1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaTec1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PruebaTec1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaTec1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaTec1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaTec1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaTec1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaTec1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaTec1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaTec1] SET RECOVERY FULL 
GO
ALTER DATABASE [PruebaTec1] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaTec1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaTec1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaTec1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaTec1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaTec1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PruebaTec1', N'ON'
GO
ALTER DATABASE [PruebaTec1] SET QUERY_STORE = OFF
GO
USE [PruebaTec1]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[department_name] [nvarchar](50) NULL,
	[employee_id] [int] NULL,
	[employee_name] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salarios]    Script Date: 14/02/2022 10:34:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salarios](
	[salary] [int] NULL,
	[employee_id] [int] NULL,
	[employee_name] [nvarchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'Sales', 123, N'John Doe')
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'Sales', 211, N'Jane Smith')
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'HR', 556, N'Billy Bob')
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'Sales', 711, N'Robert Hayek')
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'Marketing', 235, N'Edward Jorgson')
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'Marketing', 236, N'Christine Packard')
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'Production', 1, N'Jhon Production')
INSERT [dbo].[employees] ([department_name], [employee_id], [employee_name]) VALUES (N'Production', 2, N'Pedro Production')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (500, 123, N'John Doe')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (600, 211, N'Jane Smith')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (1000, 556, N'Billy Bob')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (400, 711, N'Robert Hayek')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (1200, 235, N'Edward Jorgson')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (200, 236, N'Christine Packard')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (200, 1, N'Jhon Production')
INSERT [dbo].[salarios] ([salary], [employee_id], [employee_name]) VALUES (600, 2, N'Pedro Production')
USE [master]
GO
ALTER DATABASE [PruebaTec1] SET  READ_WRITE 
GO
