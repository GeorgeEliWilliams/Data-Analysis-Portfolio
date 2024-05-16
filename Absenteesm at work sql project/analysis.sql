


-- Query to join tables to gather absenteeism data along with compensation and reasons

SELECT 
    a.ID,  -- Employee ID
    r.Reason,  -- Reason for absence
    a.Month_of_absence,  -- Month of absence
    a.Body_mass_index,  -- Body mass index
    CASE 
        WHEN a.Body_mass_index < 18.5 THEN 'Underweight'
        WHEN a.Body_mass_index BETWEEN 18.5 AND 25 THEN 'Healthy Weight'
        WHEN a.Body_mass_index BETWEEN 25 AND 30 THEN 'Overweight'
        WHEN a.Body_mass_index > 30 THEN 'Obese'
        ELSE 'Unknown' 
    END AS BMI_category,  -- Categorized body mass index
    CASE 
        WHEN a.Month_of_absence IN (12, 1, 2) THEN 'Winter'
        WHEN a.Month_of_absence IN (3, 4, 5) THEN 'Spring'
        WHEN a.Month_of_absence IN (6, 7, 8) THEN 'Summer'
        WHEN a.Month_of_absence IN (9, 10, 11) THEN 'Fall'
        ELSE 'Unknown' 
    END AS Seasons_Names,  -- Season of absence
    a.Seasons,  -- Specific season
    a.Day_of_the_week,  -- Day of the week
    a.Transportation_expense,  -- Transportation expense
    a.Education,  -- Education level
    a.Son,  -- Number of children
    a.Social_drinker,  -- Social drinker status
    a.Social_smoker,  -- Social smoker status
    a.Pet,  -- Number of pets
    a.Disciplinary_failure,  -- Disciplinary failures
    a.Age,  -- Employee age
    a.Work_load_Average_day,  -- Average workload per day
    a.Absenteeism_time_in_hours  -- Hours of absenteeism
FROM 
    Absenteeism_at_work a
LEFT JOIN 
    compensation b ON a.ID = b.ID
LEFT JOIN 
    Reasons r ON a.Reason_for_absence = r.Number;

-- Query to identify the healthiest employees for potential bonuses

SELECT 
    *  -- Selecting all columns
FROM 
    Absenteeism_at_work
WHERE 
    Social_drinker = 0  -- Not a social drinker
    AND Social_smoker = 0  -- Not a social smoker
    AND Body_mass_index < 25  -- Body mass index below 25
    AND Absenteeism_time_in_hours < (SELECT AVG(Absenteeism_time_in_hours) FROM Absenteeism_at_work);  -- Absenteeism time below average

-- Query to determine the number of non-smokers for compensation rate increase

SELECT 
    COUNT(*) AS nonsmokers  -- Counting non-smokers
FROM 
    Absenteeism_at_work
WHERE 
    Social_smoker = 0;  -- Not a social smoker

