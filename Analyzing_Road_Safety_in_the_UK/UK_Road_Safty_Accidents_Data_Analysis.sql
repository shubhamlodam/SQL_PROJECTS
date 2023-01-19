

use project;

select * from accidents_2015;
select * from vehicles_2015;
select * from vehicles_types_2015;
-------------------------------------------------------------------------------------------------------------------
# The median severity value of accidents caused by various Motorcycles.
-------------------------------------------------------------------------------------------------------------------
select vt.label as Motorcycles_types, avg(a.Accident_Severity) as median_severity
from accidents_2015 a
inner join vehicles_2015 v on a.Accident_Index = v.Accident_Index
inner join vehicles_types_2015 vt on v.Vehicle_Type = vt.code
group by 1 having lower(Motorcycles_types) like '%motorcycle%' order by 1,2 ;
 
 -----------------------------------------------------------------------------------------------------------------
 # Accident Severity and Total Accidents per Vehicle Type
------------------------------------------------------------------------------------------------------------------
select vt.label as vehicles_type, a.Accident_Severity, count(vt.label) as Total_Number_of_Accidents
from accidents_2015 a
inner join vehicles_2015 v on a.Accident_Index = v.Accident_Index
inner join vehicles_types_2015 vt on v.Vehicle_Type = vt.code
group by vehicles_type
ORDER BY 1,2,3;

--------------------------------------------------------------------------------------------------------------
# Calculate the Average Severity by vehicle type.
---------------------------------------------------------------------------------------------------------------
select vt.label as vehicles_type, avg(a.Accident_Severity) as Average_severity
from accidents_2015 a
inner join vehicles_2015 v on a.Accident_Index = v.Accident_Index
inner join vehicles_types_2015 vt on v.Vehicle_Type = vt.code
group by vehicles_type
ORDER BY 2;

---------------------------------------------------------------------------------------------------------------
# Average Severity and Total Accidents by Motorcycle.
---------------------------------------------------------------------------------------------------------------
select vt.label as Motorcycles_types, avg(a.Accident_Severity) as Average_severity, count(vt.label) as Total_number_of_Accidents
from accidents_2015 a
inner join vehicles_2015 v on a.Accident_Index = v.Accident_Index
inner join vehicles_types_2015 vt on v.Vehicle_Type = vt.code
group by 1 having lower(Motorcycles_types) like '%motorcycle%' order by 1,2;

----------------------------------------------------###-----------------------------------------------------------