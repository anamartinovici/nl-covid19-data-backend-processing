CREATE NONCLUSTERED INDEX IX_INTER_RIVM_INFECTIOUS_PEOPLE
ON VWSINTER.RIVM_INFECTIOUS_PEOPLE(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_INTER_FOUNDATION_NICE_IC_INTAKE_COUNT
ON VWSINTER.FOUNDATION_NICE_IC_INTAKE_COUNT(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_REPRODUCTION_NUMBER
ON VWSINTER.RIVM_REPRODUCTION_NUMBER(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_COVID_19_CASE_NATIONAL
ON VWSINTER.RIVM_COVID_19_CASE_NATIONAL(DATE_LAST_INSERTED, DATE_FILE);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_COVID_19_NUMBER_MUNICIPALITY_CUMULATIVE
ON VWSINTER.RIVM_COVID_19_NUMBER_MUNICIPALITY_CUMULATIVE(DATE_LAST_INSERTED, MUNICIPALITY_CODE);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_NURSING_HOMES_INTAKE
ON VWSINTER.RIVM_NURSING_HOMES_INTAKE(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_INTER_NIVEL_SUSPICIONS_GENERAL_PRACTITIONERS
ON VWSINTER.NIVEL_SUSPICIONS_GENERAL_PRACTITIONERS(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_SEWER_MEASUREMENTS
ON VWSINTER.RIVM_SEWER_MEASUREMENTS(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_NURSING_HOMES_DECEASED
ON VWSINTER.RIVM_NURSING_HOMES_DECEASED(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_NURSING_HOMES_INFECTED_LOCATIONS
ON VWSINTER.RIVM_NURSING_HOMES_INFECTED_LOCATIONS(DATE_LAST_INSERTED, DATUM);

CREATE NONCLUSTERED INDEX IX_INTER_RIVM_NURSING_HOMES_TOTALS
ON VWSINTER.RIVM_NURSING_HOMES_TOTALS(DATE_LAST_INSERTED, MELDINGSDATUM);

CREATE NONCLUSTERED INDEX IX_RIVM_NURSING_HOMES_INTAKE
ON VWSSTAGE.RIVM_NURSING_HOMES_INTAKE(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_COVID_19_CASE_NATIONAL
ON VWSSTAGE.RIVM_COVID_19_CASE_NATIONAL(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_FOUNDATION_NICE_IC_INTAKE_COUNT
ON VWSSTAGE.FOUNDATION_NICE_IC_INTAKE_COUNT(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_NIVEL_SUSPICIONS_GENERAL_PRACTITIONERS
ON VWSSTAGE.NIVEL_SUSPICIONS_GENERAL_PRACTITIONERS(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_REPRODUCTION_NUMBER
ON VWSSTAGE.RIVM_REPRODUCTION_NUMBER(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_COVID_19_NUMBER_MUNICIPALITY_CUMULATIVE
ON VWSSTAGE.RIVM_COVID_19_NUMBER_MUNICIPALITY_CUMULATIVE(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_INFECTIOUS_PEOPLE
ON VWSSTAGE.RIVM_INFECTIOUS_PEOPLE(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_SEWER_MEASUREMENTS
ON VWSSTAGE.RIVM_SEWER_MEASUREMENTS(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_NURSING_HOMES_DECEASED
ON VWSSTAGE.RIVM_NURSING_HOMES_DECEASED(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_NURSING_HOMES_INFECTED_LOCATIONS
ON VWSSTAGE.RIVM_NURSING_HOMES_INFECTED_LOCATIONS(DATE_LAST_INSERTED);

CREATE NONCLUSTERED INDEX IX_RIVM_NURSING_HOMES_TOTALS
ON VWSSTAGE.RIVM_NURSING_HOMES_TOTALS(DATE_LAST_INSERTED);