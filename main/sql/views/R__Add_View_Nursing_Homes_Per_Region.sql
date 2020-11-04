-- Copyright (c) 2020 De Staat der Nederlanden, Ministerie van   Volksgezondheid, Welzijn en Sport. 
-- Licensed under the EUROPEAN UNION PUBLIC LICENCE v. 1.2 - see https://github.com/minvws/nl-contact-tracing-app-coordinationfor more information.

CREATE OR ALTER VIEW VWSDEST.V_NURSING_HOMES_PER_REGION AS
SELECT 
	DATE_OF_REPORT_UNIX,
    VRCODE,
    DBO.NO_NEGATIVE_NUMBER_I(INFECTED_NURSERY_DAILY) AS NEWLY_INFECTED_PEOPLE,
    DBO.NO_NEGATIVE_NUMBER_I(TOTAL_NEW_REPORTED_LOCATIONS) AS NEWLY_INFECTED_LOCATIONS,
    DBO.NO_NEGATIVE_NUMBER_I(TOTAL_REPORTED_LOCATIONS) AS INFECTED_LOCATIONS_TOTAL,
    DBO.NO_NEGATIVE_NUMBER_F(INFECTED_LOCATIONS_PERCENTAGE) AS INFECTED_LOCATIONS_PERCENTAGE,
    DBO.NO_NEGATIVE_NUMBER_I(DECEASED_NURSERY_DAILY) AS DECEASED_DAILY,
    dbo.CONVERT_DATETIME_TO_UNIX(DATE_LAST_INSERTED) AS DATE_OF_INSERTION_UNIX
FROM VWSDEST.NURSING_HOMES_PER_REGION

WHERE DATE_LAST_INSERTED = (SELECT max(DATE_LAST_INSERTED) 
                            FROM VWSDEST.NURSING_HOMES_PER_REGION)