use etlc;
select *from health_care;
###Q1 Retrieve the names of all patients in the database.
SELECT name from health_care;
### 2. List the unique medical conditions present in the dataset.
select medical_condition from health_care;
###3. Find the total number of doctors in the healthcare system.
select count(*) doctor from health_care;
###4. Retrieve the details of all female patients. 
select * from health_care where gender='female';
###5. what is the average age of patients in the database.
select avg(age)  from health_care;
###6. Identify the patients who have more than one medical condition. 
select name from health_care group by medical_condition having count(medical_condition)>1;
###7. List the names of all doctors.
select doctor from health_care;
###8.Identify the most common medical condition among patients.
select medical_condition , count(*) from health_care group by medical_condition order by medical_condition desc limit 1;
###9.Find the patients who are older than 60 years and have diabetes. 
select name , age , medical_condition from health_care where age>60 and medical_condition='diabetes';
###10.Calculate the total revenue generated by the healthcare system.
select sum(billing_amount) from health_care;
###11.Find the doctor with the oldest patient
select doctor,name from health_care join name on doctor group by doctor order by max(age)desc limit 1;
###12.Calculate the average duration of medical visits.
select avg(duration) from health_care;
###13.Give the names of patients whose name starts with A. 
select name from health_care where name like 'a%';
###14.How many male and female patients are there in dataset. 
select gender ,count(*) from health_care group by gender ;
###15.how many patients are normal. 
select count(test_results)  from health_care where test_results='normal';
###16.how many patients are abnormal or Inconclusive.
select count(test_results) from health_care where test_results ='Inconclusive' & 'abnormal';
select test_results , count(*) from health_care where test_result in('abnormal','inconclusive') group by test_results;
###17.how many patients of blood group AB+ are there of age above 52. ;
select blood_type , age from health_care where blood_type ='AB+' and age>52;
###18. how many patients have paid the bill above 24890.
select count(billing_amount) from health_care where billing_amount>24890;
###19. what are the names of patients having Asthma.
select name,medical_condition from health_care where medical_condition ='asthma' ;
###20. how many patients have cancer. 
select count(*) from health_care where medical_condition='cancer';
###21. what are the names and blood groups of patients admitted to room no. 292. 
select name , blood_type ,room_number from health_care where room_number='292';
###22. how many males have Arthritis.
select count(*),gender, medical_condition from health_care where gender ='male' and medical_condition='arthritis';
###23. How many patients were admitted to Harris and Sons hospital.
select count(*) from health_care where hospital='harris and sons hospital ';
###24. what are the names of patients whose Insurance Provider are Cigna.
select name, insurance_provider from health_care where insurance_provider='cigna';
###25. Name the Medical Condition having patients whose ages is greater than average ag2.
select medical_condition , age from health_care where age>(select avg(age)from health_care);