
/****** Object:  Table [dbo].[Customers]    Script Date: 9/21/2013 11:30:46 PM ******/


CREATE TABLE [dbo].[Customers](
	[Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[State] [char](2) NULL,
	[Zip] [char](10) NULL,
	[HomePhone] [nvarchar](10) NULL,
	[CellPhone] [nvarchar](10) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



/****** Object:  Table [dbo].[Professional_Type]    Script Date: 9/21/2013 11:33:37 PM ******/


CREATE TABLE [dbo].[Professional_Type](
	[Professional_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Type_Desc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Professional_Type] PRIMARY KEY CLUSTERED 
(
	[Professional_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Professional]    Script Date: 9/21/2013 11:31:57 PM ******/


CREATE TABLE [dbo].[Professional](
	[Professional_ID] [int] IDENTITY(1,1) NOT NULL,
	[Professional_Type_ID] [int] NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Professional_Identification_Number] [nvarchar](50) NULL,
 CONSTRAINT [PK_Professional] PRIMARY KEY CLUSTERED 
(
	[Professional_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Professional]  WITH CHECK ADD  CONSTRAINT [FK_Professional_Professional_Type] FOREIGN KEY([Professional_Type_ID])
REFERENCES [dbo].[Professional_Type] ([Professional_Type_ID])
GO

ALTER TABLE [dbo].[Professional] CHECK CONSTRAINT [FK_Professional_Professional_Type]
GO

/****** Object:  Table [dbo].[Status_Type]    Script Date: 9/21/2013 11:33:50 PM ******/


CREATE TABLE [dbo].[Status_Type](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusDesc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status_Type] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Appointments]    Script Date: 9/21/2013 11:27:50 PM ******/


CREATE TABLE [dbo].[Appointments](
	[AppointmentID] [int] IDENTITY(1,1) NOT NULL,
	[Professional_ID] [int] NOT NULL,
	[Customer_ID] [int] NULL,
	[AppointmentDate] [date] NOT NULL,
	[AppointmentStartTime] [nvarchar](50) NOT NULL,
	[StatusID] [int] NULL,
	[Comments] [nvarchar](250) NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[AppointmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Customers] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customers] ([Customer_ID])
GO

ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Customers]
GO

ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Professional] FOREIGN KEY([Professional_ID])
REFERENCES [dbo].[Professional] ([Professional_ID])
GO

ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Professional]
GO

ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Status_Type] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status_Type] ([StatusID])
GO

ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Status_Type]
GO

/****** Object:  Table [dbo].[Insurance_Type]    Script Date: 9/21/2013 11:31:33 PM ******/


CREATE TABLE [dbo].[Insurance_Type](
	[InsuranceID] [int] IDENTITY(1,1) NOT NULL,
	[InsuranceName] [nvarchar](50) NULL,
	[InsuranceAddress] [nvarchar](150) NULL,
	[InsurancePhone] [nvarchar](10) NULL,
	[InsuranceWebsite] [nvarchar](250) NULL,
 CONSTRAINT [PK_Insurance_Type] PRIMARY KEY CLUSTERED 
(
	[InsuranceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Customer_Insurance]    Script Date: 9/21/2013 11:28:56 PM ******/


CREATE TABLE [dbo].[Customer_Insurance](
	[InsuranceID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[EffectiveDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[PCPName] [nvarchar](100) NULL,
	[CustomerInsuranceNumber] [nvarchar](50) NULL,
	[InsuranceType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customer_Insurance] PRIMARY KEY CLUSTERED 
(
	[InsuranceID] ASC,
	[Customer_ID] ASC,
	[EffectiveDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Customer_Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Insurance_Customers] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customers] ([Customer_ID])
GO

ALTER TABLE [dbo].[Customer_Insurance] CHECK CONSTRAINT [FK_Customer_Insurance_Customers]
GO

ALTER TABLE [dbo].[Customer_Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Insurance_Insurance_Type] FOREIGN KEY([InsuranceID])
REFERENCES [dbo].[Insurance_Type] ([InsuranceID])
GO

ALTER TABLE [dbo].[Customer_Insurance] CHECK CONSTRAINT [FK_Customer_Insurance_Insurance_Type]
GO



/****** Object:  Table [dbo].[Professional_Schedule]    Script Date: 9/21/2013 11:32:18 PM ******/


CREATE TABLE [dbo].[Professional_Schedule](
	[Professional_Schedule_ID] [int] IDENTITY(1,1) NOT NULL,
	[Professional_ID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[TimeIntervalMinutes] [smallint] NULL,
	CONSTRAINT [PK_Professional_Schedule] PRIMARY KEY CLUSTERED 
(
	[Professional_Schedule_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Professional_Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Professional_Schedule_Professional] FOREIGN KEY([Professional_ID])
REFERENCES [dbo].[Professional] ([Professional_ID])
GO

ALTER TABLE [dbo].[Professional_Schedule] CHECK CONSTRAINT [FK_Professional_Schedule_Professional]
GO
