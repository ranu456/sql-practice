-- Day 1 SQL Practice

-- 1. Show male patients
SELECT first_name, last_name, gender
FROM patients
WHERE gender = 'M';

-- 2. Patients with no allergies
SELECT first_name, last_name
FROM patients
WHERE allergies IS NULL;

-- 3. Names starting with C
SELECT first_name
FROM patients
WHERE first_name LIKE 'C%';

-- 4. Weight between 100 and 120
SELECT first_name, last_name
FROM patients
WHERE weight BETWEEN 100 AND 120;

-- 5. Patients born in 2010
SELECT COUNT(*)
FROM patients
WHERE strftime('%Y', birth_date) = '2010';