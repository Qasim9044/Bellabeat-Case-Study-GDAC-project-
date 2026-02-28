# Bellabeat-Case-Study-GDAC-project-
Google Data Analytics Certificate (GDAC)  case study analyzing smart device usage for Bellabeat. Includes SQL queries, visualizations, and strategic recommendations for marketing strategy.

# Bellabeat Case Study

## Step 1 - Ask Phase

### Business Task
Analyze smart device usage data to identify consumer behavior trends and apply these insights to improve marketing strategy for the Bellabeat app.

### Key Stakeholders
- Urška Sršen — Cofounder & Chief Creative Officer
- Sando Mur — Cofounder
- Bellabeat marketing analytics team

### Guiding Questions
- What are the key trends in smart device usage?
- How could these trends apply to Bellabeat customers?
- How could these trends influence Bellabeat’s marketing strategy?

---

## Step 2 - Prepare Phase

### Data Source
The dataset used for this analysis is the **FitBit Fitness Tracker Data (CC0: Public Domain)**, available through Mobius on Kaggle. It contains data from 30 Fitbit users, including daily activity, steps, calories burned, and sleep monitoring.

### Data Organization
Primary files used:  
- `dailyActivity_merged.csv`  
- `sleepDay_merged.csv`  

These include user IDs, activity dates, total steps, calories burned, and sleep duration.

### Data Credibility (ROCCC Framework)
- **Reliable:** Collected from Fitbit devices.  
- **Original:** 30 consenting users.  
- **Comprehensive:** Includes multiple health metrics.  
- **Current:** Data from 2016 (limitation: may not reflect current trends).  
- **Cited:** Publicly available on Kaggle under CC0 license.

### Limitations
- Small sample size (30 users)  
- Fitbit users may not represent Bellabeat customers  
- Data from 2016 may not reflect current patterns  
- Limited demographic information

---

## Step 3 - Process Phase

### Data Import
Imported `dailyActivity_merged.csv` and `sleepDay_merged.csv` into SQLite using DBeaver.

### Data Verification
- Checked total row counts  
- Verified distinct users  
- Inspected column names and data types using `PRAGMA table_info`  
- Checked for duplicates (`GROUP BY`)  
- Checked for NULLs in `TotalSteps`, `Calories`, `TotalMinutesAsleep`

### Data Cleaning
- No major duplicates found  
- No critical missing values  
- Data deemed clean and ready for analysis

### Data Verification Results
- `dailyActivity_merged` table: 940 records, 33 users  
- No NULL values in primary identifiers  
- No duplicates detected  

---

## Step 4 - Analysis Phase

### 1. Overall Activity Levels
- Average daily steps: **7,638**  
- Average daily calories burned: **2,304**  

> Users are moderately active, with potential to increase engagement through goal-setting features.

### 2. Activity Level Distribution
| Activity Level | Days |
|----------------|-----|
| Sedentary      | 303 |
| Active         | 303 |
| Low Active     | 171 |
| Moderately Active | 163 |

> User behavior is inconsistent — opportunities exist to encourage steady activity habits.

### 3. Average Steps per User
- Highest: 16,040 steps/day  
- Lowest: 916 steps/day  
- Most users: 7,000–11,000 steps/day  

> Indicates potential for segmenting users and tailoring motivational strategies.

### 4. Relationship Between Activity and Sleep
- Average daily steps (with sleep tracking): 8,541  
- Average sleep duration: 419 minutes (~7 hours)  

> Users tracking sleep are more active, suggesting opportunity to promote integrated tracking for holistic wellness.

---

## Step 5 - Share Phase

Visualizations were created using **Google Sheets** to clearly communicate findings.  

To communicate insights effectively, visualizations were created using Google Sheets.
The charts highlight overall activity levels, user activity distribution, and the relationship between activity and sleep tracking.
These visual summaries provide a clear view of behavioral trends that inform strategic recommendations

The goal is to present findings clearly in order to support strategic decision-making for Bellabeat.


### Visualizations

#### 1. Average Daily Steps Among Users
![Average Daily Steps](visuals/avg_steps.png)  
> Shows general activity trends across all users.




#### 2. Distribution of User Activity Levels
![Activity Level Distribution](visuals/activity_distribution.png)  
> Highlights the spread of sedentary, low, moderate, and active days.



#### 3. Relationship Between Daily Steps and Sleep Duration
![Activity vs Sleep](visuals/steps_sleep.png)  
> Demonstrates correlation between activity levels and sleep tracking engagement.



---

## Step 6 - Act Phase

### Recommendations

1. **Encourage Goal-Based Activity Campaigns**  
   Introduce step-based challenges (e.g., 8k → 10k steps) to motivate users and build consistent habits.

2. **Segment Users by Activity Level**  
   - Sedentary users: beginner-friendly goals and motivational nudges  
   - Highly active users: advanced challenges and performance tracking

3. **Promote Integrated Wellness Tracking**  
   Emphasize the connection between sleep, movement, and wellness to encourage broader engagement.

4. **Increase In-App Engagement Features**  
   Introduce reminders, streaks, or gamification to encourage daily tracking and reduce inactivity.

---

## Files Included
- `bellabeat.sql` — SQL script for table creation and analysis  
- `visuals/` — folder containing chart images  

---



