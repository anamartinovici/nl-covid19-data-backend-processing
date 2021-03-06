-- Copyright (c) 2020 De Staat der Nederlanden, Ministerie van   Volksgezondheid, Welzijn en Sport. 
-- Licensed under the EUROPEAN UNION PUBLIC LICENCE v. 1.2 - see https://github.com/minvws/nl-contact-tracing-app-coordinationfor more information.

CREATE OR ALTER VIEW VWSDEST.V_GENERAL_PRACTITIONERS_BACK_UP AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY WEEK_UNIX ASC) AS ID,
    [DIAGNOSE],
	[JAAR],
    [WEEK]  ,
	[WEEK_UNIX]  ,
	[INCIDENTIE] ,
	[BOVENGRENS] ,
	[GESCHAT_AANTAL] ,
	[ONDERGRENS] ,
	DATE_LAST_INSERTED
FROM VWSDEST.SUSPICIONS_GENERAL_PRACTITIONERS
WHERE DATE_LAST_INSERTED = (SELECT MAX(DATE_LAST_INSERTED) FROM VWSDEST.SUSPICIONS_GENERAL_PRACTITIONERS)