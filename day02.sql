-- Day 2 SQL Practice

-- 1. Show Maxx height patients
select first_name, last_name, height
from patients
where height= (select max(height)from patients);

-- 2. Show All give columns 
select *
from patients
where patient_id in (1,45,534,879,1000);

-- 3. Show all the columns from admissions where the patient was admitted and discharged on the same day.
select *
from admissions
WHERE admission_date = discharge_date;


-- 4. Show the patient id and the total number of admissions for patient_id 579.
select 
patient_id,
count (*) as tota_admissions
from admissions
where patient_id= 579;


-- 5. Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.
select distinct city
from patients
where province_id='NS';


-- 6. Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70
select 
first_name, 
last_name, 
birth_date
from patients
where height>160 
and weight>70;

-- 6. Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'
select 
first_name,
last_name,
allergies
from patients
where
allergies is not null 
and
city='Hamilton';


-- 7. Show unique birth years from patients and order them by ascending.
SELECT DISTINCT YEAR (birth_date) AS birth_year
FROM patients
ORDER BY birth_year;

--8. Show unique first names from the patients table which only occurs once in the list.

select distinct first_name
from patients
group by first_name
having count (*)=1;