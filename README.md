# Data Analytics Portfolio

Welcome to my Data Analytics Portfolio! This repository serves as a showcase of my proficiency in data analytics, encompassing a diverse array of projects ranging from SQL queries to Tableau visualizations. Each project within this portfolio underscores my capabilities in data analysis, visualization, and storytelling.

# Introduction

In today's data-driven world, the ability to extract actionable insights from raw data is paramount. As a data analytics enthusiast, I am passionate about leveraging data to uncover patterns, trends, and opportunities that drive informed decision-making.

Through my projects, I demonstrate a comprehensive skill set encompassing data cleaning, transformation, analysis, and visualization. Moreover, I emphasize the importance of effective storytelling, as insights are most impactful when communicated clearly and persuasively.

# Projects

Within this portfolio, you will find a curated selection of projects that showcase my expertise in various facets of data analytics:

* SQL Projects: These projects showcase my proficiency in querying databases, extracting relevant information, and performing data analysis using SQL (Structured Query Language). From data exploration to advanced analytics, SQL enables me to derive valuable insights from structured datasets.

* Tableau Projects: Tableau serves as a powerful tool for visualizing data and creating interactive dashboards that facilitate data-driven decision-making. In my Tableau projects, I harness the platform's capabilities to create compelling visualizations that effectively communicate insights to stakeholders.

# Highlighted Projects
## Absenteeism at Work Analysis
directory : [Absenteesm at work Analysis](https://github.com/GeorgeEliWilliams/Data-Analysis-Portfolio/tree/main/Absenteesm%20at%20work%20sql%20project)

Description : The "Absenteeism at Work" project focuses on analyzing absenteeism patterns among employees and identifying factors contributing to absenteeism. The dataset contains information on employees' absenteeism, including reasons for absence, body mass index (BMI), transportation expenses, education level, social habits, disciplinary history, and more. By examining these factors, the project aims to gain insights into absenteeism trends and potential strategies for mitigating absenteeism in the workplace.

Skills :
* Data Joining: Utilized SQL JOIN operations to merge multiple tables, including "Absenteeism_at_work," "compensation," and "Reasons," to consolidate relevant information for analysis.
* Data Transformation: Employed CASE statements to categorize BMI into different groups (Underweight, Healthy Weight, Overweight, and Obese) and to classify months into seasons (Winter, Spring, Summer, Fall) based on the month of absence.
* Data Filtering: Implemented WHERE clauses to filter data based on specific conditions, such as identifying employees who are non-drinkers and non-smokers with a BMI below 25 and absenteeism time below the average.
* Aggregation: Employed aggregate functions (e.g., COUNT, AVG) to calculate statistics, such as counting the number of non-smokers and determining the average absenteeism time across all employees.

## Covid-19 Analysis
directory : [Covid-19 Analysis](https://github.com/GeorgeEliWilliams/Data-Analysis-Portfolio/tree/main/Covid19%20Analysis)

Description : The "COVID-19 Analysis" project involves examining COVID-19 data to understand the impact of the pandemic across different locations. The dataset contains information on infection rates, death counts, vaccination rates, and population demographics for various countries or regions. By analyzing this data, the project aims to assess the likelihood of death for infected and vaccinated individuals, determine infection rates among vaccinated individuals, and identify countries with the highest death rates relative to their populations.

Skills :
* Data Aggregation: Employed aggregate functions (SUM) to calculate the total number of deaths, infections, and vaccinations within each location, enabling a comprehensive analysis of COVID-19 statistics.
* Data Transformation: Calculated derived metrics such as the likelihood of death for infected individuals and vaccinated individuals by dividing the total number of deaths by the total number of infections and vaccinations, respectively.
* Data Grouping: Utilized GROUP BY clauses to group data by location, enabling the aggregation of COVID-19 statistics at the country or regional level.
* Data Sorting: Ordered the results using ORDER BY clauses to arrange the data based on specific metrics such as the likelihood of death for infected individuals, the likelihood of death for vaccinated individuals, and the infection rate among vaccinated individuals.
* Statistical Analysis: Determined the death rate relative to population size by dividing the total number of deaths by the population and expressing the result as a percentage, providing insights into the severity of the pandemic in different locations.

## Vehicle Accident Analysis
directory : [Vehicle Acident Analysis](https://github.com/GeorgeEliWilliams/Data-Analysis-Portfolio/tree/main/Vehicle%20Accident%20Analysis)

Description : The "Vehicle Accident Analysis" project involves the exploration and analysis of vehicle accident data to understand various factors contributing to accidents and their severity. The dataset contains information on accidents, vehicles involved, weather conditions, journey purposes, and more. Through a series of SQL queries, the project aims to answer key questions related to accident frequency, severity, vehicle age, weather conditions, impact points, and journey purposes.

Skills :
* Data Retrieval: Utilized SELECT statements to retrieve data from the "accident" and "vehicle" tables, providing a comprehensive view of the dataset.
* Data Aggregation: Employed aggregate functions (COUNT, AVG) to summarize accident data, including total accidents, average vehicle age, and accident severity levels.
* Data Filtering: Used WHERE clauses to filter data based on specific conditions, such as weather conditions contributing to severe accidents or accidents involving impacts on the left-hand side of vehicles.
* Data Grouping: Utilized GROUP BY clauses to group data by attributes such as area, day of the week, vehicle type, age group, journey purpose, and light conditions, facilitating analysis at a granular level.
* Data Sorting: Ordered the results using ORDER BY clauses to arrange data based on accident frequency, severity levels, and other relevant metrics.
* Variable Declaration: Employed variable declaration to store specific values for filtering purposes, enhancing query flexibility and readability.
* Subquery: Utilized subqueries to perform data transformations and categorize vehicle age into groups (New, Regular, Old) based on predefined criteria.
* Conditional Logic: Employed CASE statements to categorize data and assign severity levels based on predefined thresholds, enhancing the interpretability of results.

## Netflix Analysis Dashboard
Dashboard : [tableau dashboard](https://public.tableau.com/views/NetflixAnalyticsDashboard_17148618820930/NetflixAnalytics?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)

Description : The "Netflix Analysis" project focuses on creating a comprehensive Tableau dashboard to visualize and analyze the Netflix catalog. Using the 'netflix_titles' dataset, the project aims to provide insights into the types of content available, trends over time, content ratings, and geographic distribution of Netflix productions. This visualization helps in understanding Netflix's content strategy, identifying popular genres, and exploring the diversity of Netflix's offerings.

Skills :
* Interactive Dashboards: Designed interactive dashboards in Tableau that allow users to explore the Netflix catalog by various dimensions such as genre, release year, rating, and country.
* Genre and Content Type Analysis: Visualized the distribution of content types (Movies, TV Shows) and genres to identify popular and trending categories within the Netflix catalog.
* Time Series Analysis: Created time series charts to analyze the release trends over the years, identifying periods of high content addition and trends in content production.
* Geographic Mapping: Used geographic data to map the distribution of Netflix productions by country, highlighting regions with significant content contributions.
* Content Ratings Analysis: Analyzed the distribution of content ratings (e.g., PG, R, TV-MA) to understand the target audience demographics and the variety of content available.
* Filter and Highlight Actions: Enabled filters and highlight actions to allow users to focus on specific genres, ratings, or countries, enhancing the interactivity and usability of the dashboard.

## British Airways Reviews Dashboard
Dashboard : [tableau dashboard](https://public.tableau.com/views/Britishairlinedashboard/Dashboard1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)

Description : The "British Airways Reviews Analysis" project involves creating an interactive Tableau dashboard to visualize and analyze customer reviews of British Airways. Using two datasets, 'ba_reviews' and 'countries,' the project aims to provide insights into customer sentiments, review trends, and geographic distribution of reviews. This visualization helps in identifying key areas for improvement, understanding customer feedback, and enhancing the overall customer experience.

Skills :
* Data Integration: Combined two datasets ('ba_reviews' and 'countries') to enrich the analysis with geographic context and detailed review information.
* Interactive Dashboards: Created interactive dashboards in Tableau that allow users to explore data dynamically, filter by different dimensions, and drill down into specific details.
* Geographic Mapping: Leveraged geographic data from the 'countries' dataset to map review distributions and highlight regional trends and patterns.
* Time Series Analysis: Created time series charts to track review trends over time, identifying peaks and troughs in review counts and sentiments.
* Data Filtering and Highlighting: Implemented filters and highlights to enable users to focus on specific regions, review categories, or time periods for deeper insights.
* Tooltip Customization: Enhanced tooltips to provide additional context and detailed information when users hover over data points, improving the user experience and data comprehension.

# Contacts
* Email: williamsgeorge950@gmail.com
* LinkedIn: [@georgewilliams](linkedin.com/in/george-williams-2709401b4/)