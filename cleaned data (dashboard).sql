WITH
  Cleaned_Data AS (
  SELECT
    Date,
    Location_ISO_Code,
    Location,
    New_Cases,
    New_Deaths,
    New_Recovered,
    CASE
      WHEN New_Active_Cases < 0 THEN 0
      ELSE New_Active_Cases
    END AS New_Active_Cases,
    Total_Deaths,
    Total_Recovered,
    Location_Level,
    Longitude,
    Latitude
  FROM `challenge_chapter1.kasus_covid-19` ),

  Recalculated_Data AS (
  SELECT
    Date,
    Location_ISO_Code,
    Location,
    New_Cases,
    New_Deaths,
    New_Recovered,
    New_Active_Cases,
    SUM(New_Active_Cases) OVER (PARTITION BY Location_ISO_Code ORDER BY Date) AS Total_Active_Cases,
    Total_Deaths,
    Total_Recovered,
    Location_Level,
    Longitude,
    Latitude
  FROM Cleaned_Data ),

  Final_Data AS (
  SELECT
    Date,
    Location_ISO_Code,
    Location,
    New_Cases,
    New_Deaths,
    New_Recovered,
    New_Active_Cases,
    Total_Active_Cases,
    Total_Deaths,
    Total_Recovered,
    (Total_Deaths + Total_Recovered + Total_Active_Cases) AS Total_Cases,
    Location_Level,
    Longitude,
    Latitude
  FROM Recalculated_Data )

SELECT *
FROM Final_Data
WHERE Location_Level = 'Province';