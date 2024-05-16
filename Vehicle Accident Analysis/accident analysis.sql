USE [VhclAcc];

-- Retrieving all records from the 'accident' table
SELECT * FROM [dbo].[accident];

-- Retrieving all records from the 'vehicle' table
SELECT * FROM [dbo].[vehicle];

-- Question 1: Counting accidents in urban and rural areas
SELECT
	[Area],
	COUNT([AccidentIndex]) AS 'TotalAccidents'
FROM 
	[dbo].[accident]
GROUP BY 
	[Area];

-- Question 2: Finding the day of the week with the highest number of accidents
SELECT 
	[Day],
	COUNT([AccidentIndex]) AS 'TotalAccidents'
FROM 
	[dbo].[accident]
GROUP BY 
	[Day]
ORDER BY 
	COUNT([AccidentIndex]) DESC;

-- Question 3: Calculating the average age of vehicles involved in accidents based on their type
SELECT 
	[VehicleType], 
	COUNT([AccidentIndex]) AS 'TotalAccidents', 
	AVG([AgeVehicle]) AS 'AverageAge'
FROM 
	[dbo].[vehicle]
WHERE 
	[AgeVehicle] IS NOT NULL
GROUP BY 
	[VehicleType]
ORDER BY 
	COUNT([AccidentIndex]) DESC;

-- Question 4: Analyzing accidents based on the age groups of vehicles involved
SELECT 
	AgeGroup,
	COUNT([AccidentIndex]) AS 'TotalAccidents',
	AVG([AgeVehicle]) AS 'AverageYear'
FROM (
	SELECT
		[AccidentIndex],
		[AgeVehicle],
		CASE
			WHEN [AgeVehicle] BETWEEN 0 AND 5 THEN 'New'
			WHEN [AgeVehicle] BETWEEN 6 AND 10 THEN 'Regular'
			ELSE 'Old'
		END AS AgeGroup
	FROM [dbo].[vehicle]
) AS SubQuery
GROUP BY 
	AgeGroup;

-- Question 5: Investigating specific weather conditions contributing to severe accidents
DECLARE @Severity varchar(100)
SET @Severity = 'Fatal'

SELECT 
	[WeatherConditions],
	COUNT([Severity]) AS 'TotalAccidents'
FROM 
	[dbo].[accident]
WHERE 
	[Severity] = @Severity
GROUP BY 
	[WeatherConditions]
ORDER BY 
	COUNT([Severity]) DESC;

-- Question 6: Examining accidents involving impacts on the left-hand side of vehicles
SELECT 
	[LeftHand], 
	COUNT([AccidentIndex]) AS 'TotalAccidents'
FROM 
	[dbo].[vehicle]
GROUP BY 
	[LeftHand]
HAVING
	[LeftHand] IS NOT NULL;

-- Question 7: Exploring relationships between journey purposes and accident severity
SELECT 
	V.[JourneyPurpose], 
	COUNT(A.[Severity]) AS 'TotalAccidents',
	CASE 
		WHEN COUNT(A.[Severity]) BETWEEN 0 AND 1000 THEN 'Low'
		WHEN COUNT(A.[Severity]) BETWEEN 1001 AND 3000 THEN 'Moderate'
		ELSE 'High'
	END AS 'SeverityLevel'
FROM 
	[dbo].[accident] A
JOIN 
	[dbo].[vehicle] V ON A.[AccidentIndex] = V.[AccidentIndex]
GROUP BY 
	V.[JourneyPurpose]
ORDER BY 
	COUNT(A.[Severity]) DESC;

-- Question 8: Calculating the average age of vehicles involved in accidents considering daylight and point of impact
DECLARE @Impact varchar(100)
DECLARE @Light varchar(100)
SET @Impact = 'Offside'
SET @Light = 'Darkness'

SELECT 
	A.[LightConditions], 
	V.[PointImpact], 
	AVG(V.[AgeVehicle]) AS 'AverageVehicleYear'
FROM 
	[dbo].[accident] A
JOIN 
	[dbo].[vehicle] V ON A.[AccidentIndex] = V.[AccidentIndex]
GROUP BY 
	V.[PointImpact], A.[LightConditions]
HAVING 
	V.[PointImpact] = @Impact AND A.[LightConditions] = @Light;
