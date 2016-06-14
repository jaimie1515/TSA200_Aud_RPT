-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jaimie Heeren>
-- Create date: <06/09/2016,,>
-- Description:	<Creating a Stored Procedure for TSA200_AUD_RPT,,>
-- =============================================
CREATE PROCEDURE "TSA200_AUD_RPT_SP" 
	-- Add the parameters for the stored procedure here
	 @PatientName nvarchar (30), --@p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	 @MedicalRecNumber nvarchar (20), --@p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
	 @UserLoginId nvarchar (30), --@p3> <Datatype_For_Param3, , int> = <Default_Value_For_Param3, , 0>
	 @Workstation nvarchar (50) --@p4> <Datatype_For_Param4, , int> = <Default_Value_For_Param4, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
     SELECT [Patient Name], [Medical Rec Number], [User Login Id], [Workstation]
      FROM [ARRA_audit].[dbo].[TSA200_AUD_RPT]
      WHERE [Patient Name] = @PatientName
      AND [Medical Rec Number] = @MedicalRecNumber
      AND [User Login Id] = @UserLoginId
      AND [Workstation] = @Workstation
	
END
GO


