USE [master]
GO
/****** Object:  Database InventorySystem    Script Date: 10.12.2018 23:42:58 ******/

use InventorySystem;

ALTER DATABASE InventorySystem SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC InventorySystem.[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE InventorySystem SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE InventorySystem SET ANSI_NULLS OFF 
GO
ALTER DATABASE InventorySystem SET ANSI_PADDING OFF 
GO
ALTER DATABASE InventorySystem SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE InventorySystem SET ARITHABORT OFF 
GO
ALTER DATABASE InventorySystem SET AUTO_CLOSE OFF 
GO
ALTER DATABASE InventorySystem SET AUTO_SHRINK OFF 
GO
ALTER DATABASE InventorySystem SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE InventorySystem SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE InventorySystem SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE InventorySystem SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE InventorySystem SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE InventorySystem SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE InventorySystem SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE InventorySystem SET  DISABLE_BROKER 
GO
ALTER DATABASE InventorySystem SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE InventorySystem SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE InventorySystem SET TRUSTWORTHY OFF 
GO
ALTER DATABASE InventorySystem SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE InventorySystem SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE InventorySystem SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE InventorySystem SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE InventorySystem SET RECOVERY FULL 
GO
ALTER DATABASE InventorySystem SET  MULTI_USER 
GO
ALTER DATABASE InventorySystem SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE InventorySystem SET DB_CHAINING OFF 
GO
ALTER DATABASE InventorySystem SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE InventorySystem SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE InventorySystem SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'InventorySystem', N'ON'
GO
ALTER DATABASE InventorySystem SET QUERY_STORE = OFF
GO
USE InventorySystem
GO
/****** Object:  Table [dbo].[Login]    Script Date: 10.12.2018 23:42:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10.12.2018 23:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductCode] [int] NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductStatus] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 10.12.2018 23:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[ProductCode] [int] NOT NULL,
	[ProductName] [varchar](50) NULL,
	[TransDate] [datetime] NULL,
	[Quantity] [float] NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE InventorySystem SET  READ_WRITE 
GO
