/**
IF OBJECT_ID('[Insurance_Type]', 'U') IS NOT NULL 
	Begin 
	Truncate table Insurance_Type
	Set nocount on
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (1, N'Affinity Medicaid', N'2500 Halsey St. Bronx, NY 10461', N'8662475678', N'www.affinityplan.org')
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (2, N'Affinity Medicare', N'2500 Halsey St. Bronx, NY 10461', N'8662475678', N'www.affinityplan.org')
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (3, N'Fidelis Medicaid', N'P.O. Box 805 Amherst, NY 14226', N'8883433547', N'www.fideliscare.org')
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (4, N'Fidelis Medicare', N'P.O. Box 170 Amherst, NY 14226', N'8883433547', N'www.fideliscare.org')
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (5, N'Health First Medicaid', N'P.O. Box 5196 NY, NY 10274', N'8009055445', N'www.healthfirstny.org')
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (6, N'Health First Medicare', N'P.O. Box 69355 Harrisburg, PA 17106', N'8009055445', N'www.healthfirstny.org')
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (7, N'Oxford Health Plan', N'P.O. Box 7082 Bridgeport, CT 06601', N'8006661353', N'www.oxhp.com')
		INSERT [dbo].[Insurance_Type] ([InsuranceID], [InsuranceName], [InsuranceAddress], [InsurancePhone], [InsuranceWebsite]) VALUES (8, N'United HealthCare Community', N'P.O. Box 5240 Kingston, NY 12402', N'8663623368', N'www.unitedhealthcare.com')

	End

Else Print 'Table Does Not Exist'

Go

IF OBJECT_ID('[Professional_Type]', 'U') IS NOT NULL 
	Begin 
	Truncate table Professional_Type
	Set nocount on

		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (1, N'Internist')
		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (2, N'Lawyer')
		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (3, N'Plumber')
		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (4, N'Accountant')
		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (5, N'Stylist')
		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (6, N'Cardiologist')
		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (7, N'Masseur')
		INSERT [dbo].[Professional_Type] ([Professional_Type_ID], [Professional_Type_Desc]) VALUES (8, N'Insurance Rep.')

	End

Else Print 'Table Does Not Exist'



Go

IF OBJECT_ID('[Status_Type]', 'U') IS NOT NULL 
	Begin 
	Truncate table Status_Type
	Set nocount on

		INSERT [dbo].[Status_Type] ([StatusID], [StatusDesc]) VALUES (1, N'Cancelled')
		INSERT [dbo].[Status_Type] ([StatusID], [StatusDesc]) VALUES (2, N'No Show')
		INSERT [dbo].[Status_Type] ([StatusID], [StatusDesc]) VALUES (3, N'Rescheduled')
		INSERT [dbo].[Status_Type] ([StatusID], [StatusDesc]) VALUES (4, N'Arrived')
		INSERT [dbo].[Status_Type] ([StatusID], [StatusDesc]) VALUES (5, N'Pending')
	INSERT [dbo].[Status_Type] ([StatusID], [StatusDesc]) VALUES (6, N'Checked')
INSERT [dbo].[Status_Type] ([StatusID], [StatusDesc]) VALUES (7, N'No Answer')

	End

Else Print 'Table Does Not Exist'

**/