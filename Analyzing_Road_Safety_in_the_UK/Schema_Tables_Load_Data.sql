
create database project;
use project;
-------------------------------------------------------------------------------------------------------------
CREATE TABLE Accidents_2015 (
	Accident_Index VARCHAR(13) NOT NULL, 
	Location_Easting_OSGR DECIMAL(38, 0), 
	Location_Northing_OSGR DECIMAL(38, 0), 
	Longitude DECIMAL(38, 6), 
	Latitude DECIMAL(38, 6), 
	Police_Force DECIMAL(38, 0) NOT NULL, 
	Accident_Severity DECIMAL(38, 0) NOT NULL, 
	Number_of_Vehicles DECIMAL(38, 0) NOT NULL, 
	Number_of_Casualties DECIMAL(38, 0) NOT NULL, 
	`Date` VARCHAR(10) NOT NULL, 
	Day_of_Week DECIMAL(38, 0) NOT NULL, 
	`Time` DATETIME, 
	Local_Authority_District DECIMAL(38, 0) NOT NULL, 
	Local_Authority_Highway VARCHAR(9) NOT NULL, 
	1st_Road_Class DECIMAL(38, 0) NOT NULL, 
	1st_Road_Number DECIMAL(38, 0) NOT NULL, 
	Road_Type DECIMAL(38, 0) NOT NULL, 
	Speed_limit DECIMAL(38, 0) NOT NULL, 
	Junction_Detail DECIMAL(38, 0) NOT NULL, 
	Junction_Control DECIMAL(38, 0) NOT NULL, 
	2nd_Road_Class DECIMAL(38, 0) NOT NULL, 
	2nd_Road_Number DECIMAL(38, 0) NOT NULL, 
	Pedestrian_Crossing_Human_Control DECIMAL(38, 0) NOT NULL, 
	Pedestrian_Crossing_Physical_Facilities DECIMAL(38, 0) NOT NULL, 
	Light_Conditions DECIMAL(38, 0) NOT NULL, 
	Weather_Conditions DECIMAL(38, 0) NOT NULL, 
	Road_Surface_Conditions DECIMAL(38, 0) NOT NULL, 
	Special_Conditions_at_Site DECIMAL(38, 0) NOT NULL, 
	Carriageway_Hazards DECIMAL(38, 0) NOT NULL, 
	Urban_or_Rural_Area DECIMAL(38, 0) NOT NULL, 
	Did_Police_Officer_Attend_Scene_of_Accident DECIMAL(38, 0) NOT NULL, 
	LSOA_of_Accident_Location VARCHAR(9)
);

DROP TABLE ACCIDENTS_2015;
LOAD DATA LOCAL INFILE 'D:\Accidents_2015.csv'
INTO TABLE ACCIDENTS_2015
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

SELECT * FROM ACCIDENTS_2015;
-----------------------------------------------------------------------------------------------------
CREATE TABLE Vehicles_2015 (
	Accident_Index VARCHAR(13) NOT NULL, 
	Vehicle_Reference DECIMAL(38, 0) NOT NULL, 
	Vehicle_Type DECIMAL(38, 0) NOT NULL, 
	Towing_and_Articulation DECIMAL(38, 0) NOT NULL, 
	Vehicle_Manoeuvre DECIMAL(38, 0) NOT NULL, 
	Vehicle_Location_Restricted_Lane DECIMAL(38, 0) NOT NULL, 
	Junction_Location DECIMAL(38, 0) NOT NULL, 
	Skidding_and_Overturning DECIMAL(38, 0) NOT NULL, 
	Hit_Object_in_Carriageway DECIMAL(38, 0) NOT NULL, 
	Vehicle_Leaving_Carriageway DECIMAL(38, 0) NOT NULL, 
	Hit_Object_off_Carriageway DECIMAL(38, 0) NOT NULL, 
	1st_Point_of_Impact DECIMAL(38, 0) NOT NULL, 
	Was_Vehicle_Left_Hand_Drive DECIMAL(38, 0) NOT NULL, 
	Journey_Purpose_of_Driver DECIMAL(38, 0) NOT NULL, 
	Sex_of_Driver DECIMAL(38, 0) NOT NULL, 
	Age_of_Driver DECIMAL(38, 0) NOT NULL, 
	Age_Band_of_Driver DECIMAL(38, 0) NOT NULL, 
	Engine_Capacity_CC DECIMAL(38, 0) NOT NULL, 
	Propulsion_Code DECIMAL(38, 0) NOT NULL, 
	Age_of_Vehicle DECIMAL(38, 0) NOT NULL, 
	Driver_IMD_Decile DECIMAL(38, 0) NOT NULL, 
	Driver_Home_Area_Type DECIMAL(38, 0) NOT NULL, 
	Vehicle_IMD_Decile DECIMAL(38, 0) NOT NULL
);

LOAD DATA LOCAL INFILE 'D:\Vehicles_2015.csv'
INTO TABLE vehicles_2015
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

select * from vehicles_2015;
-----------------------------------------------------------------------------------------------------------
CREATE TABLE vehicles_types_2015 (
	code DECIMAL(38, 0) NOT NULL, 
	label VARCHAR(37) NOT NULL
);

LOAD DATA LOCAL INFILE 'D:\vehicles_types_2015.csv'
INTO TABLE VEHICLES_TYPES_2015
FIELDS TERMINATED BY ','
ENCLOSED BY'"'
LINES TERMINATED BY '\n' IGNORE 1 ROWS;

select * from vehicles_types_2015;

-----------------------------------------------###---------------------------------------------------------