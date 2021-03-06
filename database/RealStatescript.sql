USE [master]
GO
/****** Object:  Database [Real_Estate]    Script Date: 3/22/2018 1:25:01 PM ******/
CREATE DATABASE [Real_Estate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Real_Estate', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Real_Estate.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Real_Estate_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Real_Estate_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Real_Estate] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Real_Estate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Real_Estate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Real_Estate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Real_Estate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Real_Estate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Real_Estate] SET ARITHABORT OFF 
GO
ALTER DATABASE [Real_Estate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Real_Estate] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Real_Estate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Real_Estate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Real_Estate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Real_Estate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Real_Estate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Real_Estate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Real_Estate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Real_Estate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Real_Estate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Real_Estate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Real_Estate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Real_Estate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Real_Estate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Real_Estate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Real_Estate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Real_Estate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Real_Estate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Real_Estate] SET  MULTI_USER 
GO
ALTER DATABASE [Real_Estate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Real_Estate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Real_Estate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Real_Estate] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Real_Estate]
GO
/****** Object:  StoredProcedure [dbo].[Booking_Payment]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Booking_Payment]
@Book_amount decimal(18,2),
@Expiry_date datetime,
@Created_date datetime,
@Debit varchar(50),
@Credit varchar(50),
@cvv int,
@Visa_Master varchar(50),
@GoogleWallet varchar(50),
@Paytm bigint,
@Bank_payment varchar(50),
@CardNumber bigint,
@AccNumber bigint
As
Begin
Insert into BookingPayment
(Book_amount,Expiry_date,Created_date,Debit,Credit,cvv,CardNumber,AccNumber)
values
(@Book_amount,@Expiry_date,@Created_date,@Debit,@Credit,@cvv,@CardNumber,@AccNumber)
insert into Payment_Method
(Visa_master,GoogleWallet,Paytm,Bank_payment)
values
(@Visa_Master,@GoogleWallet,@Paytm,@Bank_payment)
End 
GO
/****** Object:  StoredProcedure [dbo].[Feedback_info]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--For insert into Feedback
create proc [dbo].[Feedback_info]
@Name varchar(50),
@Email varchar(50),
@Feedback varchar(max)
As
Begin
Insert into Feedback
(Name,Email,Feedback)
values
(@Name,@Email,@Feedback)
End 
GO
/****** Object:  StoredProcedure [dbo].[Insert_adminDetails]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_adminDetails]
@Name varchar(50),
@Phone bigint,
@Email varchar(50),
@Age int
As
Begin
Insert into Admin_info
(Name,Phone,Email,Age)
Values 
(@Name,@Phone,@Email,@Age)
End 
GO
/****** Object:  StoredProcedure [dbo].[Insert_areaDetails]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_areaDetails]
@Commercial varchar(50),
@Residential varchar(50),
@Locality varchar(50),
@Pin int
As
Begin
Insert into Area_info
(Commercial,Residential,Locality,Pin)
Values
(@Commercial,@Residential,@Locality,@Pin)
End 
GO
/****** Object:  StoredProcedure [dbo].[Insert_commissionDetails]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--For insert into Commssion_info
create proc [dbo].[Insert_commissionDetails]
@Amount decimal(18,2)
As
Begin
Insert into Commission_info
(Amount)
values
(@Amount)
End 

GO
/****** Object:  StoredProcedure [dbo].[Insert_paymentMethod]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--For insert into Payment_Method
CREATE proc [dbo].[Insert_paymentMethod]
@Visa_master varchar(50),
@GoogleWallet varchar(50),
@Paytm bigint,
@Bank_payment varchar(50)
As
Begin
Insert into Payment_Method
(Visa_master,GoogleWallet,Paytm,Bank_payment)
values
(@Visa_master,@GoogleWallet,@Paytm,@Bank_payment)
End 
GO
/****** Object:  StoredProcedure [dbo].[Insert_PropertyInfo]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_PropertyInfo]
@Property_Name varchar(50),
@Address varchar(50),
@Image1 varchar(max),
@Image2 varchar(max),
@Image3 varchar(max),
@Image4 varchar(max),
@BHK int,
@Floor int,
@Washroom int,
@Bedroom int,
@hall int,
@kitchen int,
@Description varchar(max),
@Price decimal(18,2),
@Booking_Price decimal(18,2),
@Rent varchar(50),
@Rent_amount varchar(50),
@Duration varchar(50),
@Agreement varchar(50)
As
Begin
Insert into Property_info
(Property_Name, Address, Image1, Image2, Image3, Image4, BHK, Floor, Washroom, Bedroom, hall, kitchen, Description, Price, Booking_Price, Rent, Rent_amount, Duration, Ageement)
values
(@Property_Name,@Address,@Image1,@Image2,@Image3,@Image4,@BHK,@Floor,@Washroom,@Bedroom,@hall
,@kitchen,@Description,@Price,@Booking_Price,@Rent,@Rent_amount,@Duration,@Agreement)

insert into Rent_info
(amount,Duration,Agreement)
values
(@Rent_amount,@Duration,@Agreement)
End

GO
/****** Object:  StoredProcedure [dbo].[Insert_rentDetails]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--For insert into Rent_info
CREATE proc [dbo].[Insert_rentDetails]
@Amount varchar(50),
@Duration varchar(50),
@Agreement varchar(50)
As
Begin
Insert into Rent_info
(Amount,Duration,Agreement)
values
(@Amount,@Duration,@Agreement)
End 
GO
/****** Object:  StoredProcedure [dbo].[Insert_RentPayment]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Insert_RentPayment]
@Rent_amount varchar(50),
@Expirydate varchar(50),
@CreatedDate varchar(50),
@CardNumber varchar(50),
@debit varchar(50),
@Credit varchar(50),
@CVV varchar(50)
As 
Begin
insert into PayRent
(Rent_amount,Expirydate,CreatedDate,CardNumber,debit,Credit,CVV)
values
(@Rent_amount,@Expirydate,@CreatedDate,@CardNumber,@debit,@Credit,@CVv)
End
GO
/****** Object:  StoredProcedure [dbo].[Insert_Rentpaymentdetails]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--For insert into Payment_info
CREATE proc [dbo].[Insert_Rentpaymentdetails]
@Expiry_date datetime,
@Created_date datetime,
@Debit varchar(50),
@Credit varchar(50),
@cvv int,
@Visa_Master varchar(50),
@GoogleWallet varchar(50),
@Paytm bigint,
@Bank_payment varchar(50),
@CardNumber bigint,
@AccNumber bigint
As
Begin
Insert into Payment_info
(Expiry_date,Created_date,Debit,Credit,cvv,CardNumber,AccNumber)
values
(@Expiry_date,@Created_date,@Debit,@Credit,@cvv,@CardNumber,@AccNumber)
insert into Payment_Method
(Visa_master,GoogleWallet,Paytm,Bank_payment)
values
(@Visa_Master,@GoogleWallet,@Paytm,@Bank_payment)
End 
GO
/****** Object:  StoredProcedure [dbo].[Insert_SellerInfo]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_SellerInfo]
@Name varchar(50),
@User_Name varchar(50),
@Email varchar(50),
@Phone bigint,
@Age int,
@Password varchar (50),
@Image varchar(50)
As
Begin
Insert into Seller_Profile
(Name,User_Name,Email,Phone,Age,Password,Image)
values
(@Name,@User_Name,@Email,@Phone,@Age,@Password,@Image)
insert into sellerLogin 
(User_Name,Password,Role)
values
(@User_Name,@Password,3)
END

GO
/****** Object:  StoredProcedure [dbo].[Insert_TimePeriod]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--For insert into Time_period_info
create proc [dbo].[Insert_TimePeriod]
@Duration int
As
Begin
Insert into Time_period_info
(Duration)
values
(@Duration)
End 
GO
/****** Object:  StoredProcedure [dbo].[insert_User'sProfile]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--for insert into User_Profile 
CREATE proc [dbo].[insert_User'sProfile]
@Name varchar(50),
@User_Name varchar(50),
@Gender varchar(50),
@Phone bigint,
@Address varchar(50),
@Password varchar(50),
@Email varchar(50),
@Age int,
@Aadhar_no bigint
As
Begin
Insert into User_Profile
(Name,User_Name ,Gender, Phone, Address, Password, Email, Age, Aadhar_no)
values 
(@Name,@User_Name,@Gender,@Phone,@Address,@Password,@Email,@Age,@Aadhar_no)

insert into LoginDetails
(UserName,Password,Role)
values
(@User_Name,@Password,2)
End
 
GO
/****** Object:  StoredProcedure [dbo].[ValidateLogin]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ValidateLogin]
@UserName varchar(50),
@Password varchar(50)
as 
begin
select * from LoginDetails where UserName=@UserName and Password=@Password
end
GO
/****** Object:  StoredProcedure [dbo].[validateSellerLogin]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[validateSellerLogin]
@UserName varchar(50),
@Password varchar(50)
as 
begin
select * from sellerLogin where User_Name=@UserName and Password=@Password
end
GO
/****** Object:  Table [dbo].[Admin_info]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin_info](
	[Admin_id] [int] IDENTITY(1,1) NOT NULL,
	[Sell_id] [int] NOT NULL,
	[Prof_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_Admin_info] PRIMARY KEY CLUSTERED 
(
	[Admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Area_info]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area_info](
	[Area_id] [int] IDENTITY(1,1) NOT NULL,
	[Commercial] [varchar](50) NOT NULL,
	[Residential] [varchar](50) NOT NULL,
	[Locality] [varchar](50) NOT NULL,
	[Pin] [int] NOT NULL,
 CONSTRAINT [PK_Area_info] PRIMARY KEY CLUSTERED 
(
	[Area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingPayment]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingPayment](
	[Book_Pay_id] [int] IDENTITY(1,1) NOT NULL,
	[comm_id] [int] NULL,
	[PayMethod_id] [int] NULL,
	[Prop_id] [int] NULL,
	[Prof_id] [int] NULL,
	[Book_amount] [decimal](18, 2) NULL,
	[Expiry_date] [datetime] NULL,
	[Created_date] [datetime] NULL,
	[Debit] [varchar](50) NULL,
	[Credit] [varchar](50) NULL,
	[cvv] [int] NULL,
	[Visa_Master] [varchar](50) NULL,
	[GoogleWallet] [varchar](50) NULL,
	[Paytm] [bigint] NULL,
	[Bank_Payment] [varchar](50) NULL,
	[CardNumber] [bigint] NULL,
	[AccNumber] [bigint] NULL,
 CONSTRAINT [PK_BookingPayment] PRIMARY KEY CLUSTERED 
(
	[Book_Pay_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Commission_info]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commission_info](
	[Comm_id] [int] NOT NULL,
	[Pay_id] [int] NOT NULL,
	[Sell_id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_Commission_info_1] PRIMARY KEY CLUSTERED 
(
	[Comm_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Feed_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Feedback] [varchar](max) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Feed_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginDetails]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginDetails](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment_Method]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment_Method](
	[PayMethod_id] [int] IDENTITY(1,1) NOT NULL,
	[Visa_master] [varchar](50) NULL,
	[GoogleWallet] [varchar](50) NULL,
	[Paytm] [bigint] NULL,
	[Bank_payment] [varchar](50) NULL,
 CONSTRAINT [PK_Payment_Method] PRIMARY KEY CLUSTERED 
(
	[PayMethod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment_Rent]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment_Rent](
	[Pay_id] [int] IDENTITY(1,1) NOT NULL,
	[Comm_id] [int] NULL,
	[PayMethod_id] [int] NULL,
	[Prop_id] [int] NULL,
	[Prof_id] [int] NULL,
	[Expiry_date] [datetime] NULL,
	[Created_date] [datetime] NULL,
	[Debit] [varchar](50) NULL,
	[Credit] [varchar](50) NULL,
	[cvv] [int] NULL,
	[Visa_Master] [varchar](50) NULL,
	[GoogleWallet] [varchar](50) NULL,
	[Paytm] [bigint] NULL,
	[Bank_Payment] [varchar](50) NULL,
	[CardNumber] [bigint] NULL,
	[AccNumber] [bigint] NULL,
 CONSTRAINT [PK_Payment_info_1] PRIMARY KEY CLUSTERED 
(
	[Pay_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PayRent]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PayRent](
	[Rentpayid] [int] IDENTITY(1,1) NOT NULL,
	[Pay_id] [int] NOT NULL,
	[Prop_id] [int] NOT NULL,
	[Rent_amount] [varchar](50) NULL,
	[Expirydate] [varchar](50) NULL,
	[CreatedDate] [varchar](50) NULL,
	[CardNumber] [varchar](50) NULL,
	[debit] [varchar](50) NULL,
	[Credit] [varchar](50) NULL,
	[CVV] [varchar](50) NULL,
 CONSTRAINT [PK_PayRent] PRIMARY KEY CLUSTERED 
(
	[Rentpayid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Property_info]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Property_info](
	[Prop_id] [int] IDENTITY(1,1) NOT NULL,
	[Sell_id] [int] NULL,
	[Admin_id] [int] NULL,
	[Property_Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Image1] [varchar](max) NULL,
	[Image2] [varchar](max) NULL,
	[Image3] [varchar](max) NULL,
	[Image4] [varchar](max) NULL,
	[BHK] [int] NULL,
	[Floor] [int] NULL,
	[Washroom] [int] NULL,
	[Bedroom] [int] NULL,
	[hall] [int] NULL,
	[kitchen] [int] NULL,
	[Description] [varchar](max) NULL,
	[Price] [bigint] NULL,
	[Booking_Price] [bigint] NULL,
	[Rent] [varchar](50) NULL,
	[Rent_amount] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Ageement] [varchar](50) NULL,
 CONSTRAINT [PK_Property_info_1] PRIMARY KEY CLUSTERED 
(
	[Prop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rent_info]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rent_info](
	[Rent_id] [int] IDENTITY(1,1) NOT NULL,
	[Prop_id] [int] NULL,
	[Amount] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Agreement] [varchar](50) NULL,
 CONSTRAINT [PK_Rent_info_1] PRIMARY KEY CLUSTERED 
(
	[Rent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seller_Profile]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seller_Profile](
	[Sell_id] [int] IDENTITY(1,1) NOT NULL,
	[Admin_id] [int] NULL,
	[Name] [varchar](50) NULL,
	[User_Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [bigint] NULL,
	[Age] [int] NULL,
	[Password] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Seller_Profile] PRIMARY KEY CLUSTERED 
(
	[Sell_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sellerLogin]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sellerLogin](
	[User_Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Time_period_info]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time_period_info](
	[Time_id] [int] NOT NULL,
	[Prop_id] [int] IDENTITY(1,1) NOT NULL,
	[Duration] [int] NOT NULL,
 CONSTRAINT [PK_Time_period_info_1] PRIMARY KEY CLUSTERED 
(
	[Time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Profile]    Script Date: 3/22/2018 1:25:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Profile](
	[Prof_id] [int] IDENTITY(1,1) NOT NULL,
	[Admin_id] [int] NULL,
	[Name] [varchar](50) NULL,
	[User_Name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Phone] [bigint] NULL,
	[Address] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Age] [int] NULL,
	[Aadhar_no] [bigint] NULL,
 CONSTRAINT [PK_User_Profile_1] PRIMARY KEY CLUSTERED 
(
	[Prof_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([Feed_Id], [Name], [Email], [Feedback]) VALUES (1, N'Prince Dheer', N'princedheer666@gmail.com', N'Abc Xyz')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
INSERT [dbo].[LoginDetails] ([UserName], [Password], [Role]) VALUES (N'TyagiHimanshu', N'123456', 2)
INSERT [dbo].[LoginDetails] ([UserName], [Password], [Role]) VALUES (N'PrinceDheer', N'123', 2)
INSERT [dbo].[LoginDetails] ([UserName], [Password], [Role]) VALUES (N'AdminPrinceDheer', N'RealEstateManagement', 1)
SET IDENTITY_INSERT [dbo].[Payment_Rent] ON 

INSERT [dbo].[Payment_Rent] ([Pay_id], [Comm_id], [PayMethod_id], [Prop_id], [Prof_id], [Expiry_date], [Created_date], [Debit], [Credit], [cvv], [Visa_Master], [GoogleWallet], [Paytm], [Bank_Payment], [CardNumber], [AccNumber]) VALUES (1, NULL, NULL, NULL, NULL, CAST(0x00010F1500000000 AS DateTime), CAST(0x0000A41300000000 AS DateTime), N'1234567896', NULL, 123, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Payment_Rent] OFF
SET IDENTITY_INSERT [dbo].[Property_info] ON 

INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (14, NULL, NULL, N'Royal''s House', N'Noida ', N'~\Uploads\5.jpg', N'~\Uploads\3.jpg', N'~\Uploads\2.jpg', N'~\Uploads\1.jpg', 6, 2, 3, 4, 2, 3, N'Available a Brand New Property (Royal''s House)', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (15, NULL, NULL, N'Leela''s house', N'Gurugram', N'~\Uploads\10.jpg', N'~\Uploads\8.jpg', N'~\Uploads\7.jpg', N'~\Uploads\6.jpg', 10, 2, 3, 5, 4, 3, N'Available the best Property 
(''Leela''s House")', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (16, NULL, NULL, N'Mannat ', N'Manesar', N'~\Uploads\11.jpg', N'~\Uploads\12.jpg', N'~\Uploads\13.jpg', N'~\Uploads\15.jpg', 10, 2, 4, 5, 4, 2, N'Available a Property in Manesar ("Mannat")', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (17, NULL, NULL, N'Galaxy', N'Noida ', N'~\Uploads\11.jpg', N'~\Uploads\12.jpg', N'~\Uploads\14.jpg', N'~\Uploads\15.jpg', 10, 2, 4, 3, 4, 3, N'Available a best Looking Property ("Galaxy")', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (18, NULL, NULL, N'abc xyz', N'delhi', N'~\Uploads\home2.jpg', N'~\Uploads\home8.jpg', N'~\Uploads\facebook_logo.png', N'~\Uploads\home5.jpg', 2, 2, 5, 2, 1, 0, N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (19, NULL, NULL, N'wqert', N'afg', N'', N'', N'', N'', 2, 2, 0, 0, 0, 0, N'afgsgjs', 2450000, 122500, N'Available', N'2100', N'6', N'ghjabms')
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (20, NULL, NULL, N'qwert', N'abc', N'', N'', N'', N'', 2, 1, 1, 1, 2, 1, N'abc', 11245454, 562270, N'Available', N'1211', N'1', N'abc')
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (21, NULL, NULL, N'ghd', N'ghdd', N'', N'', N'', N'', 2, 2, 2, 1, 2, 4, N'sghadv', 123012, 6150, N'Available', N'2100', N'2', N'fhahd')
INSERT [dbo].[Property_info] ([Prop_id], [Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen], [Description], [Price], [Booking_Price], [Rent], [Rent_amount], [Duration], [Ageement]) VALUES (22, NULL, NULL, N'shubh', N'delhi', N'', N'', N'', N'', 2, 2, 2, 2, 2, 2, N'qwert', 123546, 6175, N'Available', N'1200', N'1', N'abc')
SET IDENTITY_INSERT [dbo].[Property_info] OFF
SET IDENTITY_INSERT [dbo].[Rent_info] ON 

INSERT [dbo].[Rent_info] ([Rent_id], [Prop_id], [Amount], [Duration], [Agreement]) VALUES (1, NULL, N'1200', N'1', N'abc')
SET IDENTITY_INSERT [dbo].[Rent_info] OFF
INSERT [dbo].[sellerLogin] ([User_Name], [Password], [Role]) VALUES (N'Prince_Dheer', N'123', 3)
INSERT [dbo].[sellerLogin] ([User_Name], [Password], [Role]) VALUES (N'Prince', N'123', 3)
SET IDENTITY_INSERT [dbo].[User_Profile] ON 

INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (8, NULL, N'hh', NULL, NULL, 546564, N'nbjhb', N'445', N'mnb', 45, NULL)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (9, NULL, N'Prince dheer', NULL, NULL, 9582246785, N'delhi', N'home', N'princedheer666@gmail.com', 20, NULL)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (11, NULL, N'Prince dheer', NULL, NULL, 9582246785, N'chander nagar ', N'Home', N'princedheer666@gmail.com', 20, NULL)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (13, NULL, N'Prince Dheer', N'Prince', NULL, 9582246785, N'okiok', N'User123', N'princedheer666@gmail.com', 21, 1251248742120)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (14, NULL, N'Prince Dheer', N'Prince', NULL, 9582246785, N'ghd', N'1784', N'princedheer666@gmail.com', 20, 1247521)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (16, NULL, N'jkldf', N'sdnm', NULL, 45210, N'msnmdhsg', N'ddhk', N'dskds', 20, 1258745848)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (18, NULL, N'Prince Dheer', N'Prince1', NULL, 958227856, N'krishna nagar', N'prince123', N'princedheer666@gmail.com', 21, 1258745848)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (19, NULL, N'Mukesh', N'mkesh', NULL, 9874587458, N'chattarpur', N'User987', N'mukesh1@gmail.com', 22, 12874596874584578)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (21, NULL, N'User123', N'User1', N'Male', 1254785469, N'hjd', N'123', N'proi@gmail.com', 25, 4511)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (22, NULL, N'gfg', N'gfx', N'Female', 544, N'jhv', N'123', N'bfyu@gm.com', 55, 575777777777)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (23, NULL, N'jaquileine', N'jak', N'Female', 4587458745, N'hjf', N'123', N'hjfk@gmail.com', 20, 4221313)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (24, NULL, N'Prince ', N'PrinceDheer', N'Male', 9582246785, N'Chander Nagar', N'1234', N'user1@gmail.com', 20, 123456789101)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (25, NULL, N'Himanshu Tyagi', N'TyagiHimanshu', N'Male', 8546874596, N'krishna nagar', N'123456', N'himanshu@tyagimail.com', 25, 874596587454)
INSERT [dbo].[User_Profile] ([Prof_id], [Admin_id], [Name], [User_Name], [Gender], [Phone], [Address], [Password], [Email], [Age], [Aadhar_no]) VALUES (26, NULL, N'Prince Dheer', N'PrinceDheer', N'Male', 9582246785, N'chander nagaer', N'123', N'princedgeer@gmail.com', 20, 123457845422)
SET IDENTITY_INSERT [dbo].[User_Profile] OFF
ALTER TABLE [dbo].[Admin_info]  WITH CHECK ADD  CONSTRAINT [FK_Admin_info_Seller_Profile] FOREIGN KEY([Sell_id])
REFERENCES [dbo].[Seller_Profile] ([Sell_id])
GO
ALTER TABLE [dbo].[Admin_info] CHECK CONSTRAINT [FK_Admin_info_Seller_Profile]
GO
ALTER TABLE [dbo].[Admin_info]  WITH CHECK ADD  CONSTRAINT [FK_Admin_info_User_Profile] FOREIGN KEY([Prof_id])
REFERENCES [dbo].[User_Profile] ([Prof_id])
GO
ALTER TABLE [dbo].[Admin_info] CHECK CONSTRAINT [FK_Admin_info_User_Profile]
GO
ALTER TABLE [dbo].[Commission_info]  WITH CHECK ADD  CONSTRAINT [FK_Commission_info_Payment_info] FOREIGN KEY([Pay_id])
REFERENCES [dbo].[Payment_Rent] ([Pay_id])
GO
ALTER TABLE [dbo].[Commission_info] CHECK CONSTRAINT [FK_Commission_info_Payment_info]
GO
ALTER TABLE [dbo].[Commission_info]  WITH CHECK ADD  CONSTRAINT [FK_Commission_info_Seller_Profile] FOREIGN KEY([Sell_id])
REFERENCES [dbo].[Seller_Profile] ([Sell_id])
GO
ALTER TABLE [dbo].[Commission_info] CHECK CONSTRAINT [FK_Commission_info_Seller_Profile]
GO
ALTER TABLE [dbo].[Payment_Rent]  WITH CHECK ADD  CONSTRAINT [FK_Payment_info_Commission_info] FOREIGN KEY([Comm_id])
REFERENCES [dbo].[Commission_info] ([Comm_id])
GO
ALTER TABLE [dbo].[Payment_Rent] CHECK CONSTRAINT [FK_Payment_info_Commission_info]
GO
ALTER TABLE [dbo].[Payment_Rent]  WITH CHECK ADD  CONSTRAINT [FK_Payment_info_Payment_Method] FOREIGN KEY([PayMethod_id])
REFERENCES [dbo].[Payment_Method] ([PayMethod_id])
GO
ALTER TABLE [dbo].[Payment_Rent] CHECK CONSTRAINT [FK_Payment_info_Payment_Method]
GO
ALTER TABLE [dbo].[Payment_Rent]  WITH CHECK ADD  CONSTRAINT [FK_Payment_info_Property_info] FOREIGN KEY([Prop_id])
REFERENCES [dbo].[Property_info] ([Prop_id])
GO
ALTER TABLE [dbo].[Payment_Rent] CHECK CONSTRAINT [FK_Payment_info_Property_info]
GO
ALTER TABLE [dbo].[Payment_Rent]  WITH CHECK ADD  CONSTRAINT [FK_Payment_info_User_Profile] FOREIGN KEY([Prof_id])
REFERENCES [dbo].[User_Profile] ([Prof_id])
GO
ALTER TABLE [dbo].[Payment_Rent] CHECK CONSTRAINT [FK_Payment_info_User_Profile]
GO
ALTER TABLE [dbo].[Property_info]  WITH CHECK ADD  CONSTRAINT [FK_Property_info_Admin_info] FOREIGN KEY([Admin_id])
REFERENCES [dbo].[Admin_info] ([Admin_id])
GO
ALTER TABLE [dbo].[Property_info] CHECK CONSTRAINT [FK_Property_info_Admin_info]
GO
ALTER TABLE [dbo].[Property_info]  WITH CHECK ADD  CONSTRAINT [FK_Property_info_Seller_Profile] FOREIGN KEY([Sell_id])
REFERENCES [dbo].[Seller_Profile] ([Sell_id])
GO
ALTER TABLE [dbo].[Property_info] CHECK CONSTRAINT [FK_Property_info_Seller_Profile]
GO
ALTER TABLE [dbo].[Rent_info]  WITH CHECK ADD  CONSTRAINT [FK_Rent_info_Property_info] FOREIGN KEY([Prop_id])
REFERENCES [dbo].[Property_info] ([Prop_id])
GO
ALTER TABLE [dbo].[Rent_info] CHECK CONSTRAINT [FK_Rent_info_Property_info]
GO
ALTER TABLE [dbo].[Seller_Profile]  WITH CHECK ADD  CONSTRAINT [FK_Seller_Profile_Admin_info] FOREIGN KEY([Admin_id])
REFERENCES [dbo].[Admin_info] ([Admin_id])
GO
ALTER TABLE [dbo].[Seller_Profile] CHECK CONSTRAINT [FK_Seller_Profile_Admin_info]
GO
ALTER TABLE [dbo].[Time_period_info]  WITH CHECK ADD  CONSTRAINT [FK_Time_period_info_Property_info] FOREIGN KEY([Prop_id])
REFERENCES [dbo].[Property_info] ([Prop_id])
GO
ALTER TABLE [dbo].[Time_period_info] CHECK CONSTRAINT [FK_Time_period_info_Property_info]
GO
ALTER TABLE [dbo].[User_Profile]  WITH CHECK ADD  CONSTRAINT [FK_User_Profile_Admin_info] FOREIGN KEY([Admin_id])
REFERENCES [dbo].[Admin_info] ([Admin_id])
GO
ALTER TABLE [dbo].[User_Profile] CHECK CONSTRAINT [FK_User_Profile_Admin_info]
GO
USE [master]
GO
ALTER DATABASE [Real_Estate] SET  READ_WRITE 
GO
