-- ----------------------------------------------------------------------------------------------
-- ------------------------------- Created by ING. Fernando Maglia ------------------------------
-- ----------------------------------------------------------------------------------------------
-- --------------------------------------- CREATE SCHEMA ----------------------------------------
-- ----------------------------------------------------------------------------------------------
create schema if not exists	lens
;
-- USE SCHEMA lens
use lens
;
-- ----------------------------------------------------------------------------------------------
-- --------------------------------------- CREATE TABLES ----------------------------------------
-- ----------------------------------------------------------------------------------------------
-- CREATE TABLE accessions
create table if not exists	accessions(
	accession_id	int not null unique auto_increment,
    accession_name	varchar(25),
    user_id	int not null,
    origin_country_id	int,
    species_id	int not null,
	collection_id	int not null,
    storage_material_id	int not null,
    years_storage_duration	int not null,
    regeneration_date	date not null,
	stock	decimal(10, 2) not null,
    stem_pigmentation	boolean,
    growth_habit_id	int,
    tendril	boolean,
    pubescence	boolean,
    flower_color_id	int,
    cotyledon_color_id	int not null,
    seed_coat_color_id	int,
    seed_coat_patern_id	int,
	entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(accession_id)
	)
	engine=InnoDB;
-- CREATE TABLE accessions_log
create table if not exists	accessions_log(
	accessions_log_id int not null unique auto_increment,
	accession_id	int not null,
    accession_name	varchar(25),
    user_id	int not null,
    origin_country_id	int,
    species_id	int not null,
	collection_id	int not null,
    storage_material_id	int not null,
    years_storage_duration	int not null,
    regeneration_date	date not null,
	stock	decimal(10, 2) not null,
    stem_pigmentation	boolean,
    growth_habit_id	int,
    tendril	boolean,
    pubescence	boolean,
    flower_color_id	int,
    cotyledon_color_id	int not null,
    seed_coat_color_id	int,
    seed_coat_patern_id	int,
    dml_id int,
	user varchar(100),
    entry_date	timestamp not null,
	modification_date timestamp not null default current_timestamp on update current_timestamp,
	primary key(accessions_log_id)
	)
	engine=InnoDB;
    -- CREATE TABLE accessions_stock_log
create table if not exists	accessions_stock_log(
	accession_stock_log_id int not null unique auto_increment,
	accession_id	int not null,
    accession_name	varchar(25),
	stock	decimal(10, 2) not null,
	user varchar(100),
    dml_id int,
	entry_date	timestamp not null,
	modification_date timestamp not null default current_timestamp on update current_timestamp,
	primary key(accession_stock_log_id)
	)
	engine=InnoDB;
-- CREATE TABLE users
create table if not exists	users(
	user_id	int not null unique auto_increment,
    institution_id	int not null,
	first_name varchar(15) not null,
	last_name varchar(15) not null,
    date_birth	date,
	email varchar(40) not null,
	phone int,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(user_id)
	)
	engine=InnoDB;
-- CREATE TABLE countries
create table if not exists	countries(
	country_id int not null unique auto_increment,
	country varchar(30) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key	(country_id)
	)
	engine=InnoDB;
-- CREATE TABLE states
create table if not exists	states(
	state_id int not null unique auto_increment,
	state varchar(30) not null,
    country_id int,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(state_id)
	)
	engine=InnoDB;
-- CREATE TABLE species
create table if not exists	species(
	species_id int not null unique auto_increment,
	scientific_name varchar(50) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(species_id)
	)
	engine=InnoDB;
-- CREATE TABLE testings
create table	testings(
	testing_id int not null unique auto_increment,
    accession_id int not null,
	country_id	int not null,
    state_id	int not null,
    soil_order_id	int,
    sowing_date	date not null,
    sowing_density	int,
    plant_height decimal(10, 6),
	weight_100seed	decimal(10, 6),
	seed_diameter	decimal(10, 6),
	days_to_flowering	int,
	days_to_crop	int,
	yield	decimal(10, 6),
	protein	decimal(10, 6),
	phytic_acid	decimal(10, 6),
	phenols	decimal(10, 6),
	tanins	decimal(10, 6),
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
    primary key(testing_id)
	)
	engine=InnoDB;
    -- CREATE TABLE testings_log
create table	testings_log(
	testings_log_id int not null unique auto_increment,
    testing_id int not null,
    accession_id int not null,
	country_id	int not null,
    state_id	int not null,
    soil_order_id	int,
    sowing_date	date not null,
    sowing_density	int,
    plant_height decimal(10, 6),
	weight_100seed	decimal(10, 6),
	seed_diameter	decimal(10, 6),
	days_to_flowering	int,
	days_to_crop	int,
	yield	decimal(10, 6),
	protein	decimal(10, 6),
	phytic_acid	decimal(10, 6),
	phenols	decimal(10, 6),
	tanins	decimal(10, 6),
    user varchar(100),
    dml_id int,
	entry_date	timestamp not null default current_timestamp on update current_timestamp,
    modification_date timestamp not null default current_timestamp on update current_timestamp,
    primary key(testings_log_id)
	)
	engine=InnoDB;
-- CREATE TABLE soil_taxonomy_orders
create table if not exists	soil_taxonomy_orders(
	soil_order_id int not null unique auto_increment,
    name_order	varchar(25),
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(soil_order_id)
	)
	engine=InnoDB;
-- CREATE TABLE collections
create table if not exists	collections(
	collection_id int not null unique auto_increment,
	collection_name varchar(20) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(collection_id)
	)
	engine=InnoDB;
-- CREATE TABLE storage_materials
create table if not exists	storage_materials(
	storage_material_id int not null unique auto_increment,
	material_name varchar(20) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(storage_material_id)
	)
	engine=InnoDB;
-- CREATE TABLE growth_habits
create table if not exists	growth_habits(
	growth_habit_id	int not null unique auto_increment,
	growth_habit_name varchar(20) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(growth_habit_id)
	)
	engine=InnoDB;
-- CREATE TABLE flower_colors
create table if not exists	flower_colors(
	flower_color_id int not null unique auto_increment,
	flower_color_name varchar(25) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(flower_color_id)
	)
	engine=InnoDB;
-- CREATE TABLE cotyledon_colors
create table if not exists	cotyledon_colors(
	cotyledon_color_id int not null unique auto_increment,
	cotyledon_color_name varchar(25) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(cotyledon_color_id)
	)
	engine=InnoDB;
-- CREATE TABLE seed_coat_colors
create table if not exists	seed_coat_colors(
	seed_coat_color_id int not null unique auto_increment,
	seed_coat_color_name	varchar(25) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(seed_coat_color_id)
	)
	engine=InnoDB;
-- CREATE TABLE seed_coat_paterns
create table if not exists	seed_coat_paterns(
	seed_coat_patern_id	int not null unique auto_increment,
	seed_coat_patern_name varchar(20) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(seed_coat_patern_id)
	)
	engine=InnoDB;
-- CREATE TABLE institutions
create table if not exists	institutions(
	institution_id int not null unique auto_increment,
    country_id	int,
    state_id	int,
	institution_name varchar(50) not null,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(institution_id)
	)
	engine=InnoDB;
-- CREATE TABLE orders
create table if not exists	orders(
	order_id int not null unique auto_increment,
	user_id	int,
    order_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(order_id)
	)
	engine=InnoDB;
-- CREATE TABLE order_details
create table if not exists	order_details(
	order_id	int,
    accession_id	int,
    quantity	int,
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(accession_id, order_id)
	)
	engine=InnoDB;
    -- CREATE TABLE dmls
create table if not exists	dmls(
	dml_id int not null unique auto_increment,
	dml_name varchar (25),
    entry_date	timestamp not null default current_timestamp on update current_timestamp,
	primary key(dml_id)
	)
	engine=InnoDB;
-- ----------------------------------------------------------------------------------------------
-- ------------------------ ALTER TABLES, ADD FOREIGN KEYS AND INDEXES --------------------------
-- ----------------------------------------------------------------------------------------------
-- accessions TABLE
alter table accessions
	add foreign key(user_id) references users(user_id),
    add foreign key(origin_country_id) references countries(country_id),
    add foreign key(species_id) references species(species_id),
    add foreign key(collection_id) references collections(collection_id),
    add foreign key(storage_material_id) references storage_materials(storage_material_id),
    add foreign key(growth_habit_id) references growth_habits(growth_habit_id),
    add foreign key(flower_color_id) references flower_colors(flower_color_id),
    add foreign key(cotyledon_color_id) references cotyledon_colors(cotyledon_color_id),
    add foreign key(seed_coat_color_id) references seed_coat_colors(seed_coat_color_id),
    add foreign key(seed_coat_patern_id) references seed_coat_paterns(seed_coat_patern_id)
;
-- accessions_log TABLE
alter table accessions_log
	add foreign key(dml_id) references dmls(dml_id);
-- accessions_.stock_log TABLE
alter table accessions_stock_log
	add foreign key(dml_id) references dmls(dml_id);
-- users TABLE
alter table users
	add foreign key(institution_id) references institutions(institution_id),
    add index	i_last_name(last_name)
;
-- testings TABLE
alter table testings
	add foreign key(accession_id)	references	accessions(accession_id),
	add foreign key(country_id)	references	countries(country_id),
    add foreign key(state_id) references states(state_id),
    add foreign key(soil_order_id) references soil_taxonomy_orders(soil_order_id),
    add index	i_weight_100seed(weight_100seed),
    add index	i_yield(yield)
;  
-- testings_log TABLE
alter table testings_log
	add foreign key(dml_id) references dmls(dml_id);
-- institutions TABLE
alter table institutions
	add foreign key(country_id) references countries(country_id),
    add foreign key(state_id) references states(state_id),
    add index	i_institution_name(institution_name)
;
-- states TABLE
alter table states
	add foreign key(country_id) references countries(country_id)
;
-- orders TABLE
alter table	orders
	add foreign key(user_id) references users(user_id)
;
-- order_details TABLE
alter table order_details
	add foreign key(order_id) references orders(order_id),
	add foreign key(accession_id) references accessions(accession_id)
;
-- ----------------------------------------------------------------------------------------------
-- ------------------------------------ CREATE VIEWS --------------------------------------------
-- ----------------------------------------------------------------------------------------------
-- accessions_description VIEW
create or replace view	accessions_description	as
		select	accessions.accession_name, species.scientific_name, countries.country as origin_country,
				collections.collection_name, storage_materials.material_name as storage_material,
				accessions.stem_pigmentation, tendril, growth_habits.growth_habit_name, pubescence,
				flower_colors.flower_color_name, cotyledon_colors.cotyledon_color_name,
				seed_coat_colors.seed_coat_color_name, seed_coat_paterns.seed_coat_patern_name
		from	accessions
		inner join	species
			on	accessions.species_id = species.species_id
		inner join	countries
			on	accessions.origin_country_id = countries.country_id
		inner join	collections
			on	accessions.collection_id = collections.collection_id
		inner join	storage_materials
			on	accessions.storage_material_id = storage_materials.storage_material_id
		inner join	growth_habits
			on	accessions.growth_habit_id = growth_habits.growth_habit_id
		inner join	flower_colors
			on	accessions.flower_color_id = flower_colors.flower_color_id
		inner join	cotyledon_colors
			on	accessions.cotyledon_color_id = cotyledon_colors.cotyledon_color_id
		inner join	seed_coat_colors
			on	accessions.seed_coat_color_id = seed_coat_colors.seed_coat_color_id
		inner join	seed_coat_paterns
			on	accessions.seed_coat_patern_id = seed_coat_paterns.seed_coat_patern_id
		order by	accessions.accession_name asc
;
-- months_since_regeneration VIEW
create or replace view	months_since_regeneration	as
		select	accessions.accession_name, storage_materials.material_name, accessions.years_storage_duration, 
				timestampdiff(month, accessions.regeneration_date, current_date()) as months_since_regeneration
		from accessions
		inner join	storage_materials
			on	accessions.storage_material_id = storage_materials.storage_material_id
		order by	months_since_regeneration desc
;
-- need_to_regeneration VIEW
create or replace view	need_to_regeneration	as
		select	accessions.accession_name, storage_materials.material_name, accessions.years_storage_duration, 
				timestampdiff(year, accessions.regeneration_date, current_date()) as years_since_regeneration
		from accessions
		inner join	storage_materials
			on	accessions.storage_material_id = storage_materials.storage_material_id
		where	timestampdiff(year, accessions.regeneration_date, now()) >= accessions.years_storage_duration
		order by	years_since_regeneration desc
;
-- 	accessions_testings VIEW
create or replace view	accessions_testings	as
		select	accessions.accession_name, countries.country, states.state, soil_taxonomy_orders.name_order as soil_order,
				testings.sowing_date, testings.sowing_density, testings.plant_height, testings.weight_100seed,
				testings.seed_diameter, testings.days_to_flowering, testings.days_to_crop, testings.yield,
				testings.protein, testings.phytic_acid, testings.phenols, testings.tanins
		from	testings
		inner join	accessions
			on	testings.accession_id = accessions.accession_id
		inner join	countries
			on	testings.country_id = countries.country_id
		inner join	states
			on	testings.state_id = states.state_id
		inner join	soil_taxonomy_orders
			on testings.soil_order_id = soil_taxonomy_orders.soil_order_id
;
-- accessions_yield_higher_than_mean VIEW
create or replace view	accessions_yield_higher_than_mean as
		select	accessions.accession_name, testings.yield
		from	accessions
		inner join	testings
			on accessions.accession_id = testings.accession_id
		where	testings.yield > (select avg(testings.yield)
									from testings)
		order by testings.yield desc
;
-- accessions_protein_higher_than_mean VIEW
create or replace view	accessions_protein_higher_than_mean as
		select	accessions.accession_name, testings.protein
		from	accessions
		inner join	testings
			on accessions.accession_id = testings.accession_id
		where	testings.protein > (select avg(testings.protein)
									from testings)
		order by testings.protein desc
;
-- ----------------------------------------------------------------------------------------------
-- ------------------------------- CREATE STORED FUNCTIONS --------------------------------------
-- ----------------------------------------------------------------------------------------------
-- CREATE FUNCTION fn_minMaxStandarization
/*
The fn_minMaxStandarization function is useful to calculate a min max standarization in the
	features yield, protein, phytic_acid, phenols and tanins in testings table.
IN parameters: 
	- p_feature (dtype=decimal(10, 6)): name of the feature to standarize.
    - p_columnName (varchar(15)): name of the feature to standariaze in varchar.
Return the min max standarization.
*/
delimiter $$
create function fn_minMaxStandarization(p_feature decimal(10, 6), p_columnName varchar(15))
	returns decimal(5, 4)
    reads sql data
    begin
		declare minn decimal(10, 6);
        declare maxx decimal(10, 6);
        declare minMaxStandarization decimal(5, 4);

		if p_columnName = 'yield' then
			set minn = (select min(testings.yield) from testings);
			set maxx = (select max(testings.yield) from testings);
			set minMaxStandarization = (p_feature - minn)/(maxx - minn);
		elseif p_columnName = 'protein' then
			set minn = (select min(testings.protein) from testings);
			set maxx = (select max(testings.protein) from testings);
			set minMaxStandarization = (p_feature - minn)/(maxx - minn);
		elseif p_columnName = 'phytic_acid' then
			set minn = (select min(testings.phytic_acid) from testings);
			set maxx = (select max(testings.phytic_acid) from testings);
			set minMaxStandarization = (p_feature - minn)/(maxx - minn);
		elseif p_columnName = 'phenols' then
			set minn = (select min(testings.phenols) from testings);
			set maxx = (select max(testings.phenols) from testings);
			set minMaxStandarization = (p_feature - minn)/(maxx - minn);
		elseif p_columnName = 'tanins' then
			set minn = (select min(testings.tanins) from testings);
			set maxx = (select max(testings.tanins) from testings);
			set minMaxStandarization = (p_feature - minn)/(maxx - minn);
		end if;
        return minMaxStandarization;
    end$$
delimiter ;
/*
-- example fn_minMaxStandarization 
select	accession_name, yield, fn_minMaxStandarization(yield, 'yield')
from	testings
inner join	accessions
	on	testings.accession_id = accessions.accession_id
;
*/
-- CREATE FUNCTION normalization
/*
The fn_normalization function is useful to calculate the standard punctuation normalization in the
	features yield, protein, phytic_acid, phenols and tanins in testings table.
IN parameters: 
	- p_feature (dtype=decimal(10, 6)): name of the feature to standarize.
    - p_columnName (varchar(15)): name of the feature to standariaze in varchar.
Return the standard punctuation normalization.
*/
delimiter $$
create function fn_normalization(p_feature decimal(10, 6), p_columnName varchar(15))
	returns decimal(5, 4)
    reads sql data
    begin
		declare meann decimal(10, 8);
        declare stdd decimal(10, 8);
        declare normalization decimal(5, 4);

		if p_columnName = 'yield' then
			set meann = (select round(avg(yield), 8) from testings);
			set stdd = (select round(std(yield), 8) from testings);
			set normalization = round((p_feature - meann) / stdd, 4);
		elseif p_columnName = 'protein' then
			set meann = (select round(avg(protein), 8) from testings);
			set stdd = (select round(std(protein), 8) from testings);
			set normalization = round((p_feature - meann) / stdd, 4);
		elseif p_columnName = 'phytic_acid' then
			set meann = (select round(avg(phytic_acid), 8) from testings);
			set stdd = (select round(std(phytic_acid), 8) from testings);
			set normalization = round((p_feature - meann) / stdd, 4);
		elseif p_columnName = 'phenols' then
			set meann = (select round(avg(phenols), 8) from testings);
			set stdd = (select round(std(phenols), 8) from testings);
			set normalization = round((p_feature - meann) / stdd, 4);
		elseif p_columnName = 'tanins' then
			set meann = (select round(avg(tanins), 8) from testings);
			set stdd = (select round(std(tanins), 8) from testings);
			set normalization = round((p_feature - meann) / stdd, 4);
		end if;
        return normalization;
    end$$
delimiter ;
/*
-- example fn_normalization 
select	accession_name, phenols, fn_normalization(phenols, 'phenols')
from	testings
inner join	accessions
	on	testings.accession_id = accessions.accession_id
;
*/
-- CREATE FUNCTION fn_sowingDensity
/*
The fn_sowingDensity function is useful to calculate the kg of seed per hectare of accessions.
IN parameters: 
	- weight_100seed (dtype=decimal(10, 6)): weight_100seed feature of testings table.
    - plm2 (dtype=int): the target plant seeding density per square meter.
    - porcentajeCL (dtype=int): the successfull coefficient (a number between 0 and 100).
Return the kg of seed per hectare.
*/
delimiter $$
create function fn_sowingDensity(weight_100seed decimal(10, 6), plm2 int, porcentajeCL int) 
	returns decimal(6, 3)
    reads sql data
    begin
        declare kgha decimal(6,3);

        set kgha = round(((plm2 * weight_100seed * 10)/porcentajeCL), 3);

        return kgha;
    end$$
delimiter ;
/*
-- example fn_sowingDensity
select	accessions.accession_name, fn_sowingDensity(weight_100seed, 200, 75) as kgsemilla_hectarea
from	testings
inner join	accessions
	on	testings.accession_id = accessions.accession_id
;
*/
-- ----------------------------------------------------------------------------------------------
-- ---------------------------------- CREATE STORED PROCEDURES ----------------------------------
-- ----------------------------------------------------------------------------------------------
-- CREATE PROCEDURE sp_addAccession
/*
The sp_addAccession procedure is useful for adding an accession to accessions table without using the insert into statement.
If the accession exist in accessions table, a warning message will be generated and the accession will not be added.
IN parameters: all in parameters must be consistent with accessions table features, The accession_id is not an in parameter because it is auto-incremental.
*/
delimiter $$
create procedure sp_addAccession(	p_accession_name varchar(25), p_user_id int, p_origin_country_id int, p_species int, p_collection_id int,
									p_storage_material_id int, p_years_storage_duration int, p_regeneration_date date, p_stock decimal(10, 2),
                                    p_stem_pigmentation boolean, p_growth_habit_id int, p_tendril boolean, p_pubescence boolean,
                                    p_flower_color_id int, p_cotyledon_color_id int, p_seed_coat_color_id int, p_seed_coat_patern_id int
								) 
    begin
		declare presencia int;
		set presencia = (select count(*) 
						 from accessions 
                         where p_accession_name = accessions.accession_name);
        if presencia > 0 then
			select concat('The accession ', p_accession_name, ' already exist') as WarningMessage;
		else
			insert into	accessions(	accession_name, user_id, origin_country_id, species_id, collection_id, 
									storage_material_id, years_storage_duration, regeneration_date, stock,
									stem_pigmentation, growth_habit_id, tendril, pubescence,
									flower_color_id, cotyledon_color_id, seed_coat_color_id, seed_coat_patern_id
								   )
			values(	p_accession_name, p_user_id, p_origin_country_id, p_species, p_collection_id,
					p_storage_material_id, p_years_storage_duration, p_regeneration_date, p_stock,
					p_stem_pigmentation, p_growth_habit_id, p_tendril, p_pubescence,
					p_flower_color_id, p_cotyledon_color_id, p_seed_coat_color_id, p_seed_coat_patern_id
				   );
			select 'The accession was added :)' as Message;
			end if;
    end$$
delimiter ;
/*
-- example sp_addAccession
call lens.sp_addAccession('10r', 1, 1, 1, 1, 1, 1, '2022-08-10', 10, 1, 1, 1, 1, 1, 1, 1, 1); -- with an existent accession_name in accessions table
call lens.sp_addAccession('100r', 1, 1, 1, 1, 1, 1, '2022-08-10', 10, 1, 1, 1, 1, 1, 1, 1, 1); -- ok
select * from accessions; 
*/
-- CREATE PROCEDURE sp_addTesting
/*
The sp_addTesting procedure is useful for adding an accession testing to testings table without using the insert into statement.
If the accession_id does not exist in accessions table, a warning message will be generated and the testings will not be added.
IN parameters: all in parameters must be consistent with testings table features
*/
delimiter $$
create procedure sp_addTesting(	p_accession_id int, p_country_id int, p_state_id  int, p_soil_order_id  int, p_sowing_date date, p_sowing_density int,
								p_plant_height decimal(10, 6), p_weight_100seed decimal(10, 6), p_seed_diameter decimal(10, 6), p_days_to_flowering  int, p_days_to_crop  int,
								p_yield decimal(10, 6), protein decimal(10, 6), p_phytic_acid decimal(10, 6), p_phenols decimal(10, 6), p_tanins decimal(10, 6)
								)
    begin
		if p_accession_id not in (select accessions.accession_id from accessions) then
			select concat('The accession_id ', p_accession_id, ' does not exist') as WarningMessage;
        else  
			insert into	testings(	accession_id, country_id, state_id, soil_order_id, sowing_date, sowing_density,
									plant_height, weight_100seed, seed_diameter, days_to_flowering, days_to_crop,
									yield, protein, phytic_acid, phenols, tanins
								)
			values(	p_accession_id, p_country_id, p_state_id, p_soil_order_id, p_sowing_date, p_sowing_density,
					p_plant_height, p_weight_100seed, p_seed_diameter, p_days_to_flowering, p_days_to_crop,
					p_yield, protein, p_phytic_acid, p_phenols, p_tanins
				   );
			select 'The accession testing was added :)' as Message;
		end if;  
    end$$
delimiter ;
/*
-- example sp_addTesting
call lens.sp_addTesting(104, 1, 1, 1, '2022-06-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1); -- with an non-existent accession_id in accessions table
call lens.sp_addTesting(1, 1, 1, 1, '2022-06-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1); -- ok
select * from testings;
*/
"""
-- CREATE PROCEDURE sp_addOrder BEFORE TRANSACTIONS
/*
The sp_addOrder procedure is useful for adding an order with the order_details.
Each order consists of 1 gram of the accession material stock.
IN Parameters:
	- p_user_id (dtype=int): petitioner user_id.
    - p_accessions (dtype=varchar(500)): accession_id seprated by ','. Example: '1, 2, 3, 14'   
			If some accession does not exits in accessions table, a WarningMessage will be generated 
				('accession_id [accession_id] does not exist in accessions table') and the order will not be recorded.
            If some accession have a stock lower than 2.5 grams, a WarningMessage will be generated 
				('accession_id [accession_id] does not have sufficient stock') and the order will not be recorded.
*/
delimiter $$
create procedure sp_addOrder(p_user_id int, p_accessions varchar(500))
    begin
            declare nAccessions int; -- variable used to calculate the accession number in p_accessions and used in a while condition
            declare c_p_accessions varchar(500); -- variable used to to check if all the p_accessions exist
            declare c_nAccessions int; -- variable used to to check if all the p_accessions exist
            declare	c_accession_id int; -- variable used to to check if all the p_accessions exist
            declare c_not_accession int; -- variable used to to check if all the p_accessions exist
            declare c_stock_accession int; -- variable used to to check if all the accessions has sufficient stock.
			declare toWhile_order_id int; -- variable to use inside the while to insert the order_id in the order_detail table
            declare toWhile_accessions_id int; -- variable to use inside the while to insert the accession_id in the order_detail table
            
            -- adding a ',' at p_accessions end to calculate correctly nAccessions
            set p_accessions = concat(p_accessions, ',');
            -- calculating accessions number in p_accessions
			set nAccessions =	(select char_length(p_accessions) - char_length(replace(p_accessions, ',', '')));
			
			-- checking if all te accession_id in p_accessions exist in accessions table
			set c_p_accessions = p_accessions;
            set c_nAccessions = nAccessions;
            set c_not_accession = 0;
            set c_stock_accession = 0;
			while c_nAccessions > 0 do
            
                -- select the first accession in c_p_accessions
                set c_accession_id	=	(select	cast(trim(substring(c_p_accessions, 
																	1,
																	locate(',', c_p_accessions)-1
																	)
															) as unsigned
														)
											);
				-- checking if c_accession exist in accessions table
				if c_accession_id not in (select accessions.accession_id from accessions where accessions.accession_id = c_accession_id) then
					set c_not_accession = c_accession_id;
				end if;
				-- checking if the stock is sufficient
				if (select accessions.stock from accessions where accessions.accession_id = c_accession_id) < 2.5 then
					set c_stock_accession = c_accession_id; 
				end if;
				-- remove first accession in c_p_accessions
				set c_p_accessions = (select trim(substr(c_p_accessions, 
														locate(',', c_p_accessions)+1,
														length(c_p_accessions)
                                                        )
													)
										);
				set c_nAccessions = c_nAccessions - 1;
            end while;

			-- Corroboring all conditions
            if c_not_accession then
				select concat('accession_id ', c_not_accession, ' does not exist in accessions table') as WarningMessage;
			elseif c_stock_accession then
				select concat('accession_id ', c_stock_accession, ' does not have sufficient stock') as WarningMessage;
			else
				-- order record
				insert into	orders(user_id)
				values(p_user_id);
				
				-- the order_id in order_detail mus be the same in all records
				set toWhile_order_id = (select max(order_id) from orders);
				
				while nAccessions > 0 do
					-- select the first accession in p_accessions
					set toWhile_accessions_id =	(select cast(trim(substring(p_accessions, 
																			1,
																			locate(',', p_accessions)-1
																			)
																	) as unsigned
															)
												);
					-- remove first accession in p_accessions
					set p_accessions =	(select trim(substr(p_accessions, 
															locate(',', p_accessions)+1,
															length(p_accessions)
															)
														)
											);
					-- modify accessions.stock
					update accessions set accessions.stock = accessions.stock - 1	where accessions.accession_id = toWhile_accessions_id;
					
					-- order_detail record
					insert into order_details(order_id, accession_id, quantity)
					values(toWhile_order_id, toWhile_accessions_id, 1);
					
					set nAccessions = nAccessions - 1;
				end while;
                select 'The order and order_detail was added :)' as Message;
			end if;
    end$$
delimiter ;
"""
--
-- CREATE PROCEDURE sp_addOrder WITH TRANSACTIONS
/*
The sp_addOrder procedure is useful for adding an order with the order_details.
Each order consists of 1 gram of the accession material stock.
IN Parameters:
	- p_user_id (dtype=int): petitioner user_id.
    - p_accessions (dtype=varchar(500)): accession_id seprated by ','. Example: '1, 2, 3, 14'
			If some accession does not exits in accessions table, a WarningMessage will be generated
				('accession_id [accession_id] does not exist in accessions table') and the order will not be recorded.
            If some accession have a stock lower than 2.5 grams, a WarningMessage will be generated
				('accession_id [accession_id] does not have enough stock') and the order will not be recorded.
			If some accession is repetead, a WarningMessage will be generated
				('accession_id [accession_id] is repetead') and the order will not be recorded.
*/
delimiter $$
create procedure sp_addOrder(p_user_id int, p_accessions varchar(500))
    begin
			declare nAccessions int; -- variable used to calculate the accession number in p_accessions and used in a while condition
            declare toWhile_order_id int; -- variable to use inside the while to insert the order_id in the order_detail table
            declare	p_accession_id int; -- variable used to extract accession_id from p_accessions

	start transaction;
            -- adding a ',' at p_accessions end to calculate correctly nAccessions
            set p_accessions = concat(p_accessions, ',');
            
            -- calculating accessions number in p_accessions
			set nAccessions =	(select char_length(p_accessions) - char_length(replace(p_accessions, ',', '')));
            
			-- order record
			insert into	orders(user_id)
			values(p_user_id);

			-- the order_id in order_detail must be the same in all records
			set toWhile_order_id = (select max(order_id) from orders);
            
			sp_addOrder_while1: while nAccessions > 0 do
                -- select the first accession_id in p_accessions
                set p_accession_id	=	(select	cast(trim(substring(p_accessions, 
																	1,
																	locate(',', p_accessions)-1
																	)
															) as unsigned
														)
											);
				-- remove first accession in p_accessions
				set p_accessions = (select trim(substr(p_accessions, 
														locate(',', p_accessions)+1,
														length(p_accessions)
													   )
												)
									);
				-- checking if p_accession_id exist in accessions
				if p_accession_id not in (select accessions.accession_id from accessions where accessions.accession_id = p_accession_id) then
                    rollback;
                    select concat('accession_id ', p_accession_id, ' does not exist in accessions table') as WarningMessage;
                    leave sp_addOrder_while1;

				-- checking if p_accession_id has enough stock
				elseif (select accessions.stock from accessions where accessions.accession_id = p_accession_id) < 2.5 then
                    rollback;
                    select concat('accession_id ', p_accession_id, ' does not have enough stock') as WarningMessage;
                    leave sp_addOrder_while1;
                    
				-- checking if accession_id is not repited in p_accessions
				elseif p_accession_id in (select order_details.accession_id from order_details where order_details.order_id = toWhile_order_id) then
					rollback;
					select concat('accession_id ', p_accession_id, ' is repetead') as WarningMessage;
                    leave sp_addOrder_while1;
				
                -- if all the conditions are ok, modify accessions.stock and record order_detail
                else
					-- modify accessions.stock
					update accessions set accessions.stock = accessions.stock - 1	where accessions.accession_id = p_accession_id;

                    -- order_detail record
                    insert into order_details(order_id, accession_id, quantity)
						values(toWhile_order_id, p_accession_id, 1);
				end if;
                set nAccessions = nAccessions - 1;
			end while sp_addOrder_while1;
	commit;
    end$$
delimiter ;
/*
-- example sp_addOrder
call sp_addOrder(1, '1, 99999, 3'); -- with a non-existent accession in p_accession
call lens.sp_addOrder(1, '10, 53, 1'); -- with an insufficient stock
call lens.sp_addOrder(1, '1, 10, 10, 11'); -- with accessions repetead
call sp_addOrder(1, '1, 2, 3'); -- ok
select accessions.accession_id, accessions.stock from accessions;
select * from orders;
select * from order_details;
*/
-- ----------------------------------------------------------------------------------------------
-- ------------------------------------ CREATE TRIGGERS -----------------------------------------
-- ----------------------------------------------------------------------------------------------
-- CREATE TRIGGER accessions_update_log
/*
When a record is updated from the accessions table, its previous
	status will be stored in the accessions_log table.
*/
delimiter $$
create trigger accessions_update_log
before update on accessions
for each row
begin
	insert into accessions_log(	accession_id, accession_name, user_id, origin_country_id, species_id, collection_id, storage_material_id,
								years_storage_duration, regeneration_date, stock, stem_pigmentation,
								growth_habit_id, tendril, pubescence, flower_color_id, cotyledon_color_id,
								seed_coat_color_id, seed_coat_patern_id, dml_id, user, entry_date)

	values(	old.accession_id, old.accession_name, old.user_id, old.origin_country_id, old.species_id, old.collection_id, old.storage_material_id,
			old.years_storage_duration, old.regeneration_date, old.stock, old.stem_pigmentation,
			old.growth_habit_id, old.tendril, old.pubescence, old.flower_color_id, old.cotyledon_color_id,
			old.seed_coat_color_id, old.seed_coat_patern_id, 2, user(), old.entry_date);
end$$
delimiter ;
-- CREATE TRIGGER accessions_delete_log
/*
When a record is deleted from the accessions table, its previous
	status will be stored in the accessions_log table.
*/
*/
delimiter $$
create trigger accessions_delete_log
before delete on accessions
for each row
begin
	insert into accessions_log(	accession_id, accession_name, user_id, origin_country_id, species_id, collection_id, storage_material_id,
								years_storage_duration, regeneration_date, stock, stem_pigmentation,
								growth_habit_id, tendril, pubescence, flower_color_id, cotyledon_color_id,
								seed_coat_color_id, seed_coat_patern_id, dml_id, user, entry_date)

	values(	old.accession_id, old.accession_name, old.user_id, old.origin_country_id, old.species_id, old.collection_id, old.storage_material_id,
			old.years_storage_duration, old.regeneration_date, old.stock, old.stem_pigmentation,
			old.growth_habit_id, old.tendril, old.pubescence, old.flower_color_id, old.cotyledon_color_id,
			old.seed_coat_color_id, old.seed_coat_patern_id, 3, user(), old.entry_date);
end$$
delimiter ;
-- CREATE TRIGGER testings_update_log
/*
When a record is updated from the testings table, its previous
	status will be stored in the testings_log table.
*/
delimiter $$
create trigger testings_update_log
before update on testings
for each row
begin
	insert into testings_log (testing_id, accession_id, country_id, state_id, soil_order_id, sowing_date, sowing_density,
								plant_height, weight_100seed, seed_diameter, days_to_flowering, days_to_crop,
								yield, protein, phytic_acid, phenols, tanins, dml_id, user, entry_date)

	values( old.testing_id, old.accession_id, old.country_id, old.state_id, old.soil_order_id, old.sowing_date, old.sowing_density,
			old.plant_height, old.weight_100seed, old.seed_diameter, old.days_to_flowering, old.days_to_crop,
			old.yield, old.protein, old.phytic_acid, old.phenols, old.tanins, 2, user(), old.entry_date);
end$$
delimiter ;
-- 
-- CREATE TRIGGER testings_delete_log
/*
When a record is deleted from the testings table, its previous
	status will be stored in the testings_log table.
*/
delimiter $$
create trigger testings_delete_log
before delete on testings
for each row
begin
	insert into testings_log (testing_id, accession_id, country_id, state_id, soil_order_id, sowing_date, sowing_density,
								plant_height, weight_100seed, seed_diameter, days_to_flowering, days_to_crop,
								yield, protein, phytic_acid, phenols, tanins, dml_id, user, entry_date)

	values( old.testing_id, old.accession_id, old.country_id, old.state_id, old.soil_order_id, old.sowing_date, old.sowing_density,
			old.plant_height, old.weight_100seed, old.seed_diameter, old.days_to_flowering, old.days_to_crop,
			old.yield, old.protein, old.phytic_acid, old.phenols, old.tanins, 3, user(), old.entry_date);
end$$
delimiter ;
-- CREATE TRIGGER accessions_stock_log
/*
When a record is updated from the accessions table and his stock is less than 2.5, 
	its subsequent status will be stored in the accessions_stock_log table.
*/
delimiter $$
create trigger accessions_stock_log
after update on accessions
for each row
begin
	insert into accessions_stock_log(	accession_id, accession_name, stock, dml_id, user, entry_date)
	values(	new.accession_id, new.accession_name, new.stock, 2, user(), new.entry_date);
end$$
delimiter ;
--
-- ----------------------------------------------------------------------------------------------
-- ------------------------------------- CREATE USERS -------------------------------------------
-- ----------------------------------------------------------------------------------------------
/*
create user 'fmaglia1'@'%'
	identified by 'fpassm'
;
grant all on *.* to 'fmaglia1'@'%';
-- user tpalacios2
create user 'tpalacios2'@'localhost'
	identified by 'tpassp'
;
grant select, insert, update, delete on lens.* to 'tpalacios2'@'localhost';
-- user cbermejo3
create user 'cbermejo3'@'localhost'
	identified by 'cpassb'
;
grant select, insert, update, delete on lens.* to 'cbermejo3'@'localhost';
-- user igatti4
create user 'igatti4'@'localhost'
	identified by 'ipassg'
;
grant select, insert, update, delete on lens.* to 'igatti4'@'localhost';
-- user aesposito5
create user 'aesposito5'@'localhost'
	identified by 'apasse'
;
grant select, insert, update, delete on lens.* to 'aesposito5'@'localhost';
-- user ecointry6
create user 'ecointry6'@'localhost'
	identified by 'epassc'
;
grant select, insert, update, delete on lens.* to 'ecointry6'@'localhost';
-- create generic user to view basic data
create user 'select00'@'%'
	identified by 'select00'
;
grant select on lens.accessions 			to 'select00'@'%';
grant select on lens.collections 			to 'select00'@'%';
grant select on lens.cotyledon_colors 		to 'select00'@'%';
grant select on lens.countries 				to 'select00'@'%';
grant select on lens.states 				to 'select00'@'%';
grant select on lens.flower_colors 			to 'select00'@'%';
grant select on lens.growth_habits 			to 'select00'@'%';
grant select on lens.seed_coat_colors 		to 'select00'@'%';
grant select on lens.seed_coat_paterns 		to 'select00'@'%';
grant select on lens.species 				to 'select00'@'%';
grant select on lens.storage_materials 		to 'select00'@'%';
grant select on lens.testings 				to 'select00'@'%';
grant select on lens.accessions_description	to 'select00'@'%';
grant select on lens.accessions_testings	to 'select00'@'%';
-- 
/*
use mysql;
select * from user;
-- 
drop user 'fmaglia1'@'%';
drop user 'tpalacios2'@'localhost';
drop user 'cbermejo3'@'localhost';
drop user 'igatti4'@'localhost';
drop user 'aesposito5'@'localhost';
drop user 'ecointry6'@'localhost';
drop user 'select00'@'%';
-- 
use mysql;
select * from user;
*/