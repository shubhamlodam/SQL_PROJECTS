
use project;

select * from CIA_World_Factbook;

---------------------------------------------------------------------------------------------------------------
# Which country has the highest population? 
---------------------------------------------------------------------------------------------------------------

select country, population 
from cia_world_factbook 
order by 2 desc 
limit 1;
 
-------------------------------------------------------------------------------------------------------------
# Which country has the least number of people?
-------------------------------------------------------------------------------------------------------------

select country, population
from cia_world_factbook 
where population > 0
order by 2
limit 1;

------------------------------------------------------------------------------------------------------------
# Which country is witnessing the highest population growth?
-------------------------------------------------------------------------------------------------------------

select country, population_growth_rate 
from cia_world_factbook 
order by 2 desc 
limit 1;

-------------------------------------------------------------------------------------------------------------
# Which country has an extraordinary number for the population?
-------------------------------------------------------------------------------------------------------------

select country from cia_world_factbook
where birth_rate > death_rate 
and birth_rate > infant_mortality_rate
and birth_rate > maternal_mortality_rate
order by population_growth_rate desc
limit 1;

-----------------------------------------------------------------------------------------------------------------
# Which is the most densely populated country in the world?
-----------------------------------------------------------------------------------------------------------------

select country, (population/area) as density_of_population 
from cia_world_factbook
order by 2 desc
limit 1;

------------------------------------------------###-------------------------------------------------------------