-- ----------------------------------------------------------------------------------------------
-- ------------------------------- Created by ING. Fernando Maglia ------------------------------
-- ----------------------------------------------------------------------------------------------
-- USE SCHEMA lens
use lens;
-- ----------------------------------------------------------------------------------------------
-- ---------------------------------------- INSERT DATA -----------------------------------------
-- ----------------------------------------------------------------------------------------------
-- INSERT DATA countries TABLE
insert into countries (country)
	values	('argentina'), ('canadá'), ('chile'), ('grecia'), ('méxico'), ('siria'), ('turquía') 		
;
-- INSERT DATA states TABLE
insert into states	(state, country_id)
	values	('buenos aires', 1), ('catamarca', 1), ('chaco', 1), ('chubut', 1), ('córdoba', 1),
            ('corrientes', 1), ('entre ríos', 1), ('formosa', 1), ('jujuy', 1), ('la pampa', 1),
            ('la rioja', 1),('mendoza', 1), ('misiones', 1), ('neuquén', 1), ('río negro', 1), 
            ('salta', 1), ('san juan', 1), ('san luis', 1), ('santa cruz', 1), ('santa fe', 1),           
            ('santiago del estero', 1), ('tierra del fuego', 1), ('tucumán', 1)
;
-- INSERT DATA species TABLE
insert into species (scientific_name)
	values	('lens culinaris ssp culinaris'), ('lens culinaris ssp orientalis'),
			('lens odomensis'), ('lens ervoides'), ('lens lamottei'),
			('lens nigricans'), ('lens tomentosus')
;
-- INSERT DATA soil_taxonomy_orders TABLE
insert into soil_taxonomy_orders (name_order)
	values	('alfisol'), ('andisol'), ('aridisol'), ('entisol'), ('gelisol'),
			('histosol'),  ('inceptisol'), ('molisol'), ('oxisol'), ('espodosol'),
            ('ultisol'), ('vertisol') 
;
-- INSERT DATA collections TABLE
insert into collections (collection_name)
	values	('active'), ('base'), ('breeder'), ('core') 		
;
-- INSERT DATA storage_materials TABLE
insert into storage_materials (material_name)
	values	('dna'), ('leaf'), ('seed')			
;
-- INSERT DATA growth_habits TABLE
insert into growth_habits (growth_habit_name)
	values	('repent'), ('semi erect'), ('erect')			
;
-- INSERT DATA flower_colors TABLE
insert into flower_colors (flower_color_name)
	values	('white'), ('white and violet'), ('violet')			
;
-- INSERT DATA cotyledon_colors TABLE
insert into cotyledon_colors (cotyledon_color_name)
	values	('yellow'), ('orange'), ('green')			
;
-- INSERT DATA seed_coat_colors TABLE
insert into seed_coat_colors (seed_coat_color_name)
	values	('brown dark'), ('brown light'), ('gray'), ('green')					
;
-- INSERT DATA seed_coat_paterns TABLE
insert into seed_coat_paterns (seed_coat_patern_name)
	values	('no patern'), ('dotted'), ('spoted'), ('complex')			
;
-- INSERT DATA institutions TABLE
insert into institutions (country_id, state_id, institution_name)
	values	(1, 20, 'iicar')			
;
-- INSERT DATA users TABLE
insert into users (institution_id, first_name, last_name, date_birth, email, phone)
	values	(1, 'fernando', 'maglia', '1990-08-31', 'maglia@iicar-conicet.gob.ar', null),
			(1, 'tatiana', 'palacios', null, 'palacios@iicar-conicet.gob.ar', null),
            (1, 'carolina', 'bermejo', null, 'bermejo@iicar-conicet.gob.ar', null),
            (1, 'ileana', 'gatti', null, 'gatti@iicar-conicet.gob.ar', null),
            (1, 'andrea', 'esposito', null, 'esposito@iicar-conicet.gob.ar', null),
            (1, 'enrique', 'cointry', null, 'cointry@iicar-conicet.gob.ar', null)
;
-- INSERT DATA dmls TABLE
insert into dmls (dml_name)
	values	('insert'), ('update'), ('delete')	
;
-- INSERT DATA accessions TABLE
insert into accessions (accession_name, user_id, origin_country_id, species_id, collection_id, storage_material_id,
						years_storage_duration, regeneration_date, stock, stem_pigmentation,
                        growth_habit_id, tendril, pubescence, flower_color_id, cotyledon_color_id,
                        seed_coat_color_id, seed_coat_patern_id)
	values	('10r',1,6,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,2,1),
			('13r',1,6,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,2,2),
			('144a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,2,1),
			('15r',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,4,1),
			('16a',1,6,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,2,1),
			('16r',1,6,1,1,3,4,'2021-11-01',10,1,2,1,1,2,2,4,1),
			('18a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,2,1),
			('19r',1,6,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,4,1),
			('1r',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,2,1),
			('20r',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,2,1),
			('22r',1,6,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,4,1),
			('23a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,4,1),
			('24r',1,6,1,1,3,4,'2021-11-01',10,1,2,1,1,2,2,2,1),
			('25a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,4,1),
			('26a',1,6,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,2,1),
			('26r',1,6,1,1,3,4,'2021-11-01',10,1,2,1,1,2,2,2,1),
			('27r',1,6,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,4,1),
			('30a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,2,1),
			('30r',1,6,1,1,3,4,'2021-11-01',10,1,3,1,1,2,2,2,2),
			('31r',1,6,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,2,4),
			('32a',1,6,1,1,3,4,'2021-11-01',10,0,3,0,1,2,1,2,1),
			('32r',1,6,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,2,4),
			('33a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,4,1),
			('34a',1,6,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,2,3),
			('39a',1,1,1,1,3,4,'2021-11-01',10,1,2,1,1,2,1,2,1),
			('42a',1,1,1,1,3,4,'2021-11-01',10,1,2,1,1,2,1,2,1),
			('42r',1,1,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,3,3),
			('43a',1,1,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,2,1),
			('44a',1,7,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,2,1),
			('45a',1,4,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,4,1),
			('46a',1,4,1,1,3,4,'2021-11-01',10,0,3,0,1,2,1,2,1),
			('47a',1,5,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,4,1),
			('48a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,2,1),
			('51a',1,3,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,2,1),
			('52a',1,3,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,2,1),
			('54a',1,1,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,2,1),
			('55a',1,1,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,4,1),
			('56-2',1,1,1,1,3,4,'2021-11-01',10,1,2,1,1,2,1,2,1),
			('56a',1,1,1,1,3,4,'2021-11-01',10,0,2,1,1,2,1,2,2),
			('56-2',1,1,1,1,3,4,'2021-11-01',10,0,3,2,1,3,1,2,1),
			('57a',1,1,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,2,1),
			('58-13',1,1,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,2,2),
			('58-19/3',1,1,1,1,3,4,'2021-11-01',10,0,2,1,1,2,2,2,1),
			('58-22/2',1,1,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,2,1),
			('58-25/16',1,1,1,1,3,4,'2021-11-01',10,1,2,1,1,2,2,2,1),
			('58-7/9',1,1,1,1,3,4,'2021-11-01',10,0,3,1,1,2,2,2,1),
			('58a',1,1,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,2,1),
			('59a',1,1,1,1,3,4,'2021-11-01',10,1,2,1,1,2,1,2,1),
			('63a',1,1,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,4,1),
			('88a',1,6,1,1,3,4,'2021-11-01',10,1,3,1,1,2,1,2,1),
			('8a',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,2,1,4,1),
			('8r',1,6,1,1,3,4,'2021-11-01',10,0,3,1,1,3,2,3,3),
            ('100a',1,6,1,1,3,4,'2021-11-01',2,0,3,1,1,3,1,3,3) -- test for insufficent stock in sp_addOrder 
;
-- INSERT DATA testings TABLE
insert into testings	(accession_id, country_id, state_id, soil_order_id, sowing_date, sowing_density,
						 plant_height, weight_100seed, seed_diameter, days_to_flowering, days_to_crop,
                         yield, protein, phytic_acid, phenols, tanins)
	values	(1,1,20,8,'2020-07-02',200,24,2.3,2.55,99,130,236,14.5,1.14,0.7,0.46),
			(1,1,20,8,'2021-07-12',200,24.5,2.35,2.55,87,117,290,25.6,1.11,0.41,0.28),
			(2,1,20,8,'2020-07-02',200,17,3.25,3.45,102,133,170,13.5,1.1,0.49,0.4),
			(2,1,20,8,'2021-07-12',200,18.5,3.25,3.45,77,122,646,29.6,1.08,0.54,0.17),
			(3,1,20,8,'2020-07-02',200,21.5,2.35,3.25,106,141,172,17.5,1.04,0.56,0.46),
			(3,1,20,8,'2021-07-12',200,22.5,2.3,3.3,94,126,292,22.0,1.35,0.37,0.22),
			(4,1,20,8,'2020-07-02',200,29.5,4.15,4.9,86,134,120,17.0,1.1,0.62,0.63),
			(4,1,20,8,'2021-07-12',200,34,4.15,4.95,78,121,456,30.7,0.97,0.42,0.22),
			(5,1,20,8,'2020-07-02',200,27,2.7,5.85,93,135,226,16.1,1.39,0.55,0.61),
			(5,1,20,8,'2021-07-12',200,27.5,2.75,5.85,80,123,240,23.9,1.38,0.35,0.32),
			(6,1,20,8,'2020-07-02',200,25.5,4.15,5.85,84,124,848,19.3,0.9,0.59,0.46),
			(6,1,20,8,'2021-07-12',200,28.5,4.25,5.85,72,116,1202,25.1,0.98,0.28,0.27),
			(7,1,20,8,'2020-07-02',200,28.5,2.2,5.8,95,133,84,15.3,1.14,0.68,0.21),
			(7,1,20,8,'2021-07-12',200,32,2.25,5.75,87,122,166,22.0,0.98,0.28,0.2),
			(8,1,20,8,'2020-07-02',200,25.5,4.05,5.35,97,119,292,17.3,1.52,0.69,0.57),
			(8,1,20,8,'2021-07-12',200,27.5,4.25,5.3,85,113,376,31.4,0.82,0.26,0.33),
			(9,1,20,8,'2020-07-02',200,25.5,1.65,4.1,101,140,74,15.3,1.26,0.61,0.6),
			(9,1,20,8,'2021-07-12',200,27,1.75,4.3,92,127,164,21.7,1.17,0.28,0.26),
			(10,1,20,8,'2020-07-02',200,29,2.15,4.25,113,138,120,15.4,1.2,0.68,0.59),
			(10,1,20,8,'2021-07-12',200,31,2.25,4.3,91,127,232,33.8,0.77,0.45,0.28),
			(11,1,20,8,'2020-07-02',200,25,2.4,4,102,136,152,15.2,1.12,0.94,0.85),
			(11,1,20,8,'2021-07-12',200,27.5,2.45,3.95,89,123,178,29.2,0.62,0.32,0.22),
			(12,1,20,8,'2020-07-02',200,28.5,3.7,5.35,94,128,168,15.2,1.03,0.61,0.32),
			(12,1,20,8,'2021-07-12',200,30,4.05,5.45,83,122,486,32.7,0.6,0.36,0.24),
			(13,1,20,8,'2020-07-02',200,25.5,2.05,4.15,103,136,128,14.6,1.05,0.82,0.65),
			(13,1,20,8,'2021-07-12',200,27,2.15,4.15,90,125,210,32.0,0.72,0.41,0.24),
			(14,1,20,8,'2020-07-02',200,27,3.3,5.6,94,124,44,14.7,1.07,0.57,0.72),
			(14,1,20,8,'2021-07-12',200,27,3.25,5.55,86,119,258,29.8,0.77,0.33,0.22),
			(15,1,20,8,'2020-07-02',200,25,3.15,4.1,88,123,190,21.9,1.45,0.43,0.67),
			(15,1,20,8,'2021-07-12',200,27.5,3.2,4.2,77,118,266,26.5,1.23,0.32,0.26),
			(16,1,20,8,'2020-07-02',200,26.5,2.15,4.17,93,129,142,12.0,1.17,0.73,0.67),
			(16,1,20,8,'2021-07-12',200,29.5,2.8,4.25,78,118,998,22.0,0.94,0.27,0.17),
			(17,1,20,8,'2020-07-02',200,30.5,2.65,5.55,95,128,114,13.5,0.95,0.65,0.57),
			(17,1,20,8,'2021-07-12',200,33,2.65,5.45,83,122,138,29.7,0.92,0.26,0.26),
			(18,1,20,8,'2020-07-02',200,29,4.3,5.45,87,126,316,14.7,1.17,0.68,0.4),
			(18,1,20,8,'2021-07-12',200,28.5,4.55,5.45,80,118,598,27.1,1.06,0.33,0.23),
			(19,1,20,8,'2020-07-02',200,27.5,3.3,4.75,93,129,326,19.2,0.97,1.05,1.05),
			(19,1,20,8,'2021-07-12',200,27.5,3.3,4.45,78,121,356,26.0,0.6,0.32,0.18),
			(20,1,20,8,'2020-07-02',200,27.5,3.55,5.55,93,122,166,15.1,0.97,0.91,0.97),
			(20,1,20,8,'2021-07-12',200,27,3.8,5.55,80,114,1492,28.4,1.22,0.3,0.25),
			(21,1,20,8,'2020-07-02',200,28,4.1,4.6,89,123,234,22.1,1.1,0.56,0.62),
			(21,1,20,8,'2021-07-12',200,30.5,4.25,4.55,82,119,240,22.8,1.24,0.32,0.23),
			(22,1,20,8,'2020-07-02',200,26.5,2.55,4.1,96,140,36,12.4,1.17,0.71,0.52),
			(22,1,20,8,'2021-07-12',200,27.5,2.75,4.1,87,126,156,28.8,1.26,0.34,0.2),
			(23,1,20,8,'2020-07-02',200,27.5,3.4,5.35,97,126,146,8.4,0.92,0.64,1.03),
			(23,1,20,8,'2021-07-12',200,29.5,3.45,5.35,79,112,168,29.6,0.97,0.31,0.18),
			(24,1,20,8,'2020-07-02',200,30,2.15,4,100,133,110,15.4,1,0.47,0.57),
			(24,1,20,8,'2021-07-12',200,32,2.05,4,87,122,518,28.6,1.4,0.33,0.18),
			(25,1,20,8,'2020-07-02',200,29,3.85,5.9,88,119,230,13.4,1.19,0.88,0.18),
			(25,1,20,8,'2021-07-12',200,28,3.85,5.05,76,110,904,25.9,1.08,0.4,0.19),
			(26,1,20,8,'2020-07-02',200,23.5,3.9,5.85,86,117,370,21.6,0.65,0.64,0.22),
			(26,1,20,8,'2021-07-12',200,26.5,4.05,5.75,75,107,1574,29.3,0.62,0.35,0.2),
			(27,1,20,8,'2020-07-02',200,30.5,2.6,3.9,89,126,276,19.6,1.13,0.48,1.37),
			(27,1,20,8,'2021-07-12',200,33,2.6,3.95,84,117,1506,28.6,1.13,0.35,0.19),
			(28,1,20,8,'2020-07-02',200,30,4.3,5.35,84,118,498,18.2,1.76,0.58,0.84),
			(28,1,20,8,'2021-07-12',200,31.5,4.85,5.7,75,109,1232,27.0,1.51,0.25,0.2),
			(29,1,20,8,'2020-07-02',200,28,3.85,5,105,128,166,17.2,0.7,0.97,0.38),
			(29,1,20,8,'2021-07-12',200,31.5,4.85,5.05,84,115,1750,18.6,1.07,0.36,0.26),
			(30,1,20,8,'2020-07-02',200,30.5,3.75,4.25,99,124,152,17.2,1.19,0.49,0.93),
			(30,1,20,8,'2021-07-12',200,32.5,3.65,4.25,88,115,230,23.6,1.66,0.26,0.18),
			(31,1,20,8,'2020-07-02',200,29.5,3.95,6.05,99,125,304,15.2,0.83,0.74,0.67),
			(31,1,20,8,'2021-07-12',200,32.5,4.05,6.15,83,114,1076,31.6,1.19,0.35,0.23),
			(32,1,20,8,'2020-07-02',200,28.5,3.4,4.5,84,122,386,16.0,0.22,0.77,0.13),
			(32,1,20,8,'2021-07-12',200,28.5,3,3.95,86,113,978,27.2,0.63,0.3,0.2),
			(33,1,20,8,'2020-07-02',200,25.5,4.75,3.95,97,131,422,14.8,1.46,0.58,0.58),
			(33,1,20,8,'2021-07-12',200,28,4.95,4.05,86,119,594,19.1,1.67,0.39,0.25),
			(34,1,20,8,'2020-07-02',200,25,3.95,5.15,80,125,234,15.0,0.89,0.65,0.46),
			(34,1,20,8,'2021-07-12',200,27.5,5.55,5.15,75,109,962,28.8,0.94,0.26,0.23),
			(35,1,20,8,'2020-07-02',200,25.5,4.55,4,91,123,220,14.1,1.12,0.51,0.74),
			(35,1,20,8,'2021-07-12',200,28.5,5.05,4.25,79,115,438,26.3,1.51,0.28,0.21),
			(36,1,20,8,'2020-07-02',200,25.5,4.15,6.5,79,131,258,13.1,0.2,1.18,0.12),
			(36,1,20,8,'2021-07-12',200,27.5,4.15,6.4,71,123,976,25.6,0.65,0.29,0.24),
			(37,1,20,8,'2020-07-02',200,26,4.15,5.75,84,137,320,15.9,1.14,0.97,0.43),
			(37,1,20,8,'2021-07-12',200,28.5,4.25,5.35,73,114,638,27.4,1.55,0.31,0.2),
			(38,1,20,8,'2020-07-02',200,25.5,4.2,6.05,104,130,328,14.4,0.69,0.85,0.42),
			(38,1,20,8,'2021-07-12',200,28.5,4.85,5.85,74,109,742,22.2,1.06,0.29,0.2),
			(39,1,20,8,'2020-07-02',200,26.5,2.7,5.05,89,118,164,12.9,0.27,1.16,0.47),
			(39,1,20,8,'2021-07-12',200,28,3.2,5.25,77,113,1422,27.1,1.55,0.33,0.19),
			(40,1,20,8,'2020-07-02',200,25.5,3.85,5.45,86,115,264,12.6,0.96,1.24,0.65),
			(40,1,20,8,'2021-07-12',200,27.5,4.25,5.45,76,113,1878,29.4,1.64,0.31,0.19),
			(41,1,20,8,'2020-07-02',200,27.5,3.95,5.6,90,132,180,14.2,1.19,0.53,0.68),
			(41,1,20,8,'2021-07-12',200,29.5,3.8,5.3,85,118,1190,23.6,1.04,0.29,0.18),
			(42,1,20,8,'2020-07-02',200,23,2.15,3.15,89,120,204,16.2,1.11,0.51,0.46),
			(42,1,20,8,'2021-07-12',200,24.5,2.35,3.35,76,114,462,31.0,1.45,0.26,0.22),
			(43,1,20,8,'2020-07-02',200,28,3.75,4.3,86,117,356,14.2,1.13,0.44,0.5),
			(43,1,20,8,'2021-07-12',200,30.5,3.65,4.15,77,112,316,25.2,1.49,0.43,0.27),
			(44,1,20,8,'2020-07-02',200,30.5,3.6,4.95,85,117,278,14.2,1.29,0.7,0.83),
			(44,1,20,8,'2021-07-12',200,31,3.6,4.95,70,112,354,29.1,1.61,0.27,0.23),
			(45,1,20,8,'2020-07-02',200,24.5,3.6,5.6,80,116,322,14.7,1.27,0.16,0.46),
			(45,1,20,8,'2021-07-12',200,28,3.75,5.6,73,112,1002,21.6,0.91,0.35,0.21),
			(46,1,20,8,'2020-07-02',200,26.5,3.2,4.1,84,124,318,13.7,1.34,0.43,0.54),
			(46,1,20,8,'2021-07-12',200,28.5,3.35,4.15,77,114,952,26.7,1.7,0.23,0.19),
			(47,1,20,8,'2020-07-02',200,29,4.1,5.95,86,117,320,16.8,1.05,0.47,0.29),
			(47,1,20,8,'2021-07-12',200,29,4.15,6.05,73,112,2150,19.9,1.57,0.31,0.2),
			(48,1,20,8,'2020-07-02',200,23,4.15,5.15,80,118,326,14.8,1.12,0.47,0.56),
			(48,1,20,8,'2021-07-12',200,25.5,4.3,5.25,73,109,1936,22.9,1.46,0.32,0.23),
			(49,1,20,8,'2020-07-02',200,28.5,4.05,5.6,84,118,504,12.8,1.03,0.41,0.44),
			(49,1,20,8,'2021-07-12',200,31.5,4.25,5.15,74,107,792,31.5,1.32,0.3,0.18),
			(50,1,20,8,'2020-07-02',200,24,3.85,4.05,98,119,224,14.9,1.19,0.71,0.83),
			(50,1,20,8,'2021-07-12',200,27.5,4.05,4.25,84,112,1998,25.5,1.56,0.34,0.19),
			(51,1,20,8,'2020-07-02',200,30,4.1,5.65,100,128,322,11.7,1.11,0.63,0.67),
			(51,1,20,8,'2021-07-12',200,30.5,4.25,5.7,86,116,1052,23.8,1.09,0.27,0.21),
			(52,1,20,8,'2020-07-02',200,29.5,2.75,4.25,94,127,494,16.8,1.18,0.6,0.83),
			(52,1,20,8,'2021-07-12',200,32.5,2.7,4.5,79,116,502,29.2,1.21,0.28,0.22)
;
-- 