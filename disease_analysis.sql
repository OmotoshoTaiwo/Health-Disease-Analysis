## 7. Meningitis demographics: What age group and gender are most affected by meningitis?

SELECT age, gender, disease, COUNT(*) AS Disease_count
FROM diseases
WHERE disease = 'Meningitis'
GROUP BY age, gender
ORDER BY Disease_count desc;

## 8. Ebola trend and progress: What is the current trend of Ebola across states in Nigeria, and have we been successful in tackling it?
SELECT state, disease, report_date, health_status, report_outcome, settlement
from diseasess
WHERE disease = 'Ebola'
group by disease, state;

SELECT state, disease, report_year, health_status, report_outcome, COUNT(*) AS state_count
FROM diseases
WHERE disease = 'Ebola'
GROUP BY report_year, state
ORDER BY state_count DESC;

## 9. Cholera outbreaks and causes: In which states are major cholera outbreaks occurring, and what are the underlying causes?
SELECT disease, state, COUNT(*) AS cholera_count
FROM diseases
WHERE disease = 'cholera'
GROUP BY disease
ORDER BY chole;

SELECT state, COUNT(*) AS cholera_cases
FROM diseases
WHERE disease = 'Cholera'
GROUP BY state
ORDER BY cholera_cases DESC;



## 2. Diseases ranked by reported cases: Which diseases are ranked highest by the number of reported cases?
SELECT disease, COUNT(*) AS cases_count
FROM diseases
GROUP BY disease
ORDER BY cases_count DESC;

# number 3
SELECT state, report_outcome, COUNT(*) AS death_count
FROM diseases
WHERE disease = 'Malaria' AND health_status = 'Dead'
GROUP BY state
ORDER BY death_count DESC;


# 6 what disease did children die more of
SELECT disease, COUNT(*) AS death_count
FROM diseases
WHERE child_group = 1 AND health_status = 'Dead' AND report_outcome = 'confirmed'
GROUP BY disease
ORDER BY death_count DESC;


# 7 what disease did adult die more of
SELECT disease, COUNT(*) AS Adult_death_count
FROM diseases
WHERE child_group = 0 AND health_status = 'Dead' AND report_outcome = 'confirmed'
GROUP BY disease
ORDER BY Adult_death_count DESC;

# 8 what disease that a man is likely to die more of
SELECT disease, COUNT(*) AS Man_death_count
FROM diseases
WHERE gender = 'Male' AND settlement = 'Urban' AND health_status = 'Dead'
GROUP BY disease
ORDER BY Man_death_count DESC;


# question 9 what age and gender suffer the most from meningitis
SELECT age, gender, COUNT(*) AS Disease_count
FROM diseases
WHERE disease = 'Meningitis'
GROUP BY age, gender
ORDER BY Disease_count DESC;
