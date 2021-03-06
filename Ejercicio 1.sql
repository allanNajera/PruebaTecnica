USE [master]
GO
/****** Object:  Database [PruebaTec]    Script Date: 14/02/2022 10:31:57 a. m. ******/
CREATE DATABASE [PruebaTec]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaTec', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTec.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaTec_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PruebaTec_log.ldf' , SIZE = 729088KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PruebaTec] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaTec].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaTec] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaTec] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaTec] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaTec] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaTec] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaTec] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PruebaTec] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaTec] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaTec] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaTec] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaTec] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaTec] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaTec] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaTec] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaTec] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PruebaTec] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaTec] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaTec] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaTec] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaTec] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaTec] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaTec] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaTec] SET RECOVERY FULL 
GO
ALTER DATABASE [PruebaTec] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaTec] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaTec] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaTec] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaTec] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaTec] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PruebaTec', N'ON'
GO
ALTER DATABASE [PruebaTec] SET QUERY_STORE = OFF
GO
USE [PruebaTec]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[author_name] [nvarchar](50) NOT NULL,
	[book_name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 14/02/2022 10:31:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[book_name] [nvarchar](50) NOT NULL,
	[sold_copies] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista 1]    Script Date: 14/02/2022 10:31:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vista 1]
AS
SELECT        dbo.books.sold_copies, dbo.authors.author_name
FROM            dbo.authors CROSS JOIN
                         dbo.books
GO
INSERT [dbo].[authors] ([author_name], [book_name]) VALUES (N'author_1', N'book_1')
INSERT [dbo].[authors] ([author_name], [book_name]) VALUES (N'author_1', N'book_2')
INSERT [dbo].[authors] ([author_name], [book_name]) VALUES (N'author_2', N'book_3')
INSERT [dbo].[authors] ([author_name], [book_name]) VALUES (N'author_2', N'book_4')
INSERT [dbo].[authors] ([author_name], [book_name]) VALUES (N'author_2', N'book_5')
INSERT [dbo].[authors] ([author_name], [book_name]) VALUES (N'author_3', N'book_6')
INSERT [dbo].[books] ([book_name], [sold_copies]) VALUES (N'book_1', 1000)
INSERT [dbo].[books] ([book_name], [sold_copies]) VALUES (N'book_2', 1500)
INSERT [dbo].[books] ([book_name], [sold_copies]) VALUES (N'book_3', 34000)
INSERT [dbo].[books] ([book_name], [sold_copies]) VALUES (N'book_4', 29000)
INSERT [dbo].[books] ([book_name], [sold_copies]) VALUES (N'book_5', 40000)
INSERT [dbo].[books] ([book_name], [sold_copies]) VALUES (N'book_6', 4400)
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "authors"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "books"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 102
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 1050
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista 1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vista 1'
GO
USE [master]
GO
ALTER DATABASE [PruebaTec] SET  READ_WRITE 
GO
