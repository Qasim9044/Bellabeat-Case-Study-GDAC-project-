bellabeat sql queries -


--Bellabeat Case study : 



-- Creating the needed tables and then importing the csv files


CREATE TABLE dailyActivity_merged (
    Id INTEGER,
    ActivityDate TEXT,
    TotalSteps INTEGER,
    TotalDistance REAL,
    TrackerDistance REAL,
    LoggedActivitiesDistance REAL,
    VeryActiveDistance REAL,
    ModeratelyActiveDistance REAL,
    LightActiveDistance REAL,
    SedentaryActiveDistance REAL,
    VeryActiveMinutes INTEGER,
    FairlyActiveMinutes INTEGER,
    LightlyActiveMinutes INTEGER,
    SedentaryMinutes INTEGER,
    Calories INTEGER
);

CREATE TABLE sleepDay_merged (
    Id INTEGER,
    SleepDay TEXT,
    TotalSleepRecords INTEGER,
    TotalMinutesAsleep INTEGER,
    TotalTimeInBed INTEGER
);


-- Sanity checks (To see if data was imported correctly) : 

SELECT COUNT(*) FROM dailyActivity_merged;
SELECT COUNT(*) FROM sleepDay_merged;


SELECT COUNT(DISTINCT Id) FROM dailyActivity_merged;



SELECT COUNT(*) 
FROM dailyActivity_merged
WHERE Id IS NULL;


SELECT Id, ActivityDate, COUNT(*)
FROM dailyActivity_merged
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

-- Analysis part (we derive insighst from the data we get from queries) :

-- 1.Overall activity levels(of the users in defined categories) :-


SELECT 
    ROUND(AVG(TotalSteps), 0) AS avg_daily_steps,
    ROUND(AVG(Calories), 0) AS avg_daily_calories
FROM dailyActivity_merged;

-- Activity level Distribution (across sedantary , low active , moderately active and active) :-

SELECT 
    CASE 
        WHEN TotalSteps < 5000 THEN 'Sedentary'
        WHEN TotalSteps BETWEEN 5000 AND 7499 THEN 'Low Active'
        WHEN TotalSteps BETWEEN 7500 AND 9999 THEN 'Moderately Active'
        ELSE 'Active'
    END AS activity_level,
    COUNT(*) AS days_count
FROM dailyActivity_merged
GROUP BY activity_level
ORDER BY days_count DESC;


--Average Steps Per User :-


SELECT 
    Id,
    ROUND(AVG(TotalSteps), 0) AS avg_steps_per_user
FROM dailyActivity_merged
GROUP BY Id
ORDER BY avg_steps_per_user DESC;


-- Sleep vs Activity (real time comparison) :-


SELECT ActivityDate
FROM dailyActivity_merged
LIMIT 5;


SELECT SleepDay
FROM sleepDay_merged
LIMIT 5;


SELECT 
    ROUND(AVG(d.TotalSteps), 0) AS avg_steps,
    ROUND(AVG(s.TotalMinutesAsleep), 0) AS avg_minutes_asleep
FROM dailyActivity_merged d
JOIN sleepDay_merged s
ON d.Id = s.Id
AND d.ActivityDate = substr(s.SleepDay, 1, instr(s.SleepDay, ' ') - 1);



