-- Copyright (c) 2020 De Staat der Nederlanden, Ministerie van   Volksgezondheid, Welzijn en Sport. 
-- Licensed under the EUROPEAN UNION PUBLIC LICENCE v. 1.2 - see https://github.com/minvws/nl-contact-tracing-app-coordinationfor more information.

-- Production table for national results of infected people per age group

IF NOT EXISTS(SELECT * FROM sys.sequences WHERE object_id = OBJECT_ID(N'[dbo].[SEQ_VWSDEST_POSITIVE_TESTED_PEOPLE_PER_AGE_GROUP]') AND type = 'SO')
CREATE SEQUENCE SEQ_VWSDEST_POSITIVE_TESTED_PEOPLE_PER_AGE_GROUP
  START WITH 1
  INCREMENT BY 1;
GO

 CREATE TABLE VWSDEST.POSITIVE_TESTED_PEOPLE_PER_AGE_GROUP(
	[ID] INT PRIMARY KEY NOT NULL DEFAULT (NEXT VALUE FOR [dbo].[SEQ_VWSDEST_POSITIVE_TESTED_PEOPLE_PER_AGE_GROUP]),
	DATE_OF_REPORT DATETIME NULL,
	DATE_OF_REPORT_UNIX BIGINT NULL,
	AGEGROUP VARCHAR(100) NULL,
	INFECTED_PER_AGEGROUP_INCREASE INT NULL,
	INFECTED_PER_AGEGROUP_TOTALS INT NULL,
	DATE_LAST_INSERTED DATETIME DEFAULT GETDATE()
 );