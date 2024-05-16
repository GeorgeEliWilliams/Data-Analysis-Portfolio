USE covid;

-- Query to calculate the likelihood of death for infected individuals in each location
SELECT 
    location, 
    SUM(dead) AS TotalDeaths, 
    SUM(infected) AS TotalInfected, 
    (SUM(dead)/SUM(infected) * 100) AS dead_infected_likelihood
FROM 
    info
GROUP BY 
    location
ORDER BY 
    dead_infected_likelihood DESC;

-- Query to calculate the likelihood of death for vaccinated individuals in each location
SELECT 
    location, 
    SUM(dead) AS TotalDeaths, 
    SUM(vaccinated) AS TotalVaccinated, 
    (SUM(dead)/SUM(vaccinated) * 100) AS dead_vaccinated_likelihood
FROM 
    info
GROUP BY 
    location
ORDER BY 
    dead_vaccinated_likelihood DESC;

-- Query to calculate the likelihood of infection for vaccinated individuals in each location
SELECT 
    location, 
    SUM(infected) AS TotalInfected, 
    SUM(vaccinated) AS TotalVaccinated, 
    (SUM(infected)/SUM(vaccinated) * 100) AS infected_vaccinated_likelihood
FROM 
    info
GROUP BY 
    location
ORDER BY 
    infected_vaccinated_likelihood DESC;

-- Query to determine which country has the highest death rate compared to its population
SELECT 
    location, 
    population, 
    SUM(dead) AS TotalDeaths, 
    (SUM(dead)/population * 100) AS DeathRateVsPopulation
FROM 
    info
GROUP BY 
    location, 
    population
ORDER BY 
    DeathRateVsPopulation DESC;
