CREATE SCHEMA IF NOT EXISTS `SistFinanciero` DEFAULT CHARACTER SET utf8 ;
USE `SistFinanciero` ;

/*CREAR TABLA SUCURSAL*/
CREATE TABLE IF NOT EXISTS sucursal (	nombreSucursal VARCHAR (255),
                        direccionSucursal VARCHAR (255),
                        id_cliente INT,
                        id_bancario INT,
                        id_sucursal INT NOT NULL auto_increment, Primary key (id_sucursal)
);

insert into sucursal (nombreSucursal, direccionSucursal, id_cliente, id_bancario, id_sucursal) 
values  ('Photospace', '9695 Laurel Place', '39', 1, '44343664'),
		('Thoughtstorm', '16470 Summerview Street', '87', 2, '22334'),
		('Reallinks', '9674 Miller Road', '6960', 3, '4615'),
		('Devify', '16 Maryland Place', '732', 4, '14234'),
		('Oyonder', '0 Mesta Court', '513', 5, '911'),
		('Ntags', '5 Moose Alley', '97275', 6, '9899'),
		('Brainverse', '22039 Straubel Alley', '9323', 7, '5193'),
		('Thoughtblab', '631 Sundown Plaza', '70', 8, '07402'),
		('Quimm', '4 Veith Way', '63206', 9, '932323'),
		('Aimbo', '365 Express Way', '04615', 10, '21'),
		('Oozz', '4 Lake View Center', '53242', 11, '52'),
		('Minyx', '6848 Lukken Place', '29423', 12, '5'),
		('Flashpoint', '40 Caliangt Trail', '5475', 13, '423'),
		('Wikido', '31278 Michigan Alley', '06747', 14, '00394'),
		('Tagtune', '08293 Kenwood Way', '82407', 15, '61');

/*CREAR TABLA CLIENTE*/
CREATE TABLE IF NOT EXISTS cliente (	nombreCliente VARCHAR (255),
                        direccionCliente VARCHAR (255),
                        id_bancario INT,
                        id_sucursal INT,
                        id_cliente INT NOT NULL auto_increment, Primary key (id_cliente),
                        FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal)
);

insert into cliente (nombreCliente, direccionCliente, id_cliente, id_bancario, id_sucursal) 
values  ('Ninon', '77 Spaight Trail', '39', 1, '44343664'),
        ('Barnabe', '16 Straubel Junction', '87', 2, '22334'),
        ('Timmy', '49 Milwaukee Terrace', '6960', 3, '4615'),
        ('Marcille', '0229 Huxley Place', '732', 4, '14234'),
        ('Che', '359 Warner Road', '513', 5, '911'),
        ('Carleton', '9 4th Road', '97275', 6, '9899'),
        ('Katy', '444 Bluejay Terrace', '9323', 7, '5193'),
        ('Tatiana', '8 Hollow Ridge Hill', '70', 8, '07402'),
        ('Bevin', '78300 Aberg Park', '63206', 9, '932323'),
        ('Rebecka', '57252 Tennessee Plaza', '04615', 10, '21'),
        ('Stefano', '1067 Gale Street', '53242', 11, '52'),
        ('Blair', '491 Blue Bill Park Road', '29423', 12, '5'),
        ('Gabriellia', '671 Ramsey Park', '5475', 13, '423'),
        ('Johanna', '044 Cherokee Court', '06747', 14, '00394'),
        ('Cornell', '09 Northwestern Park', '82407', 15, '61');


/*CREAR TABLA BANCO*/
CREATE TABLE IF NOT EXISTS banco (	  nombreBancario VARCHAR (255),
                        emailBancario VARCHAR (255),
                        id_cliente INT,
                        id_sucursal INT,
                        id_bancario INT NOT NULL auto_increment, Primary key (id_bancario),
                      	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
                        FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal)
);

insert into banco (nombreBancario, emailBancario, id_cliente, id_bancario, id_sucursal) 
values  ('Bailey Group', 'dcawthorn0@reference.com', '39', 1, '44343664'),
		('Ferry Inc', 'asymers1@godaddy.com', '87', 2, '22334'),
		('Cartwright-Effertz', 'paldin2@huffingtonpost.com', '6960', 3, '4615'),
		('Jenkins-Lind', 'cnuton3@yahoo.co.jp', '732', 4, '14234'),
		('Harris LLC', 'nlannon4@wikimedia.org', '513', 5, '911'),
		('Aufderhar-Ankunding', 'klanglois5@walmart.com', '97275', 6, '9899'),
		('Moore, Kautzer and Tromp', 'serwin6@networkadvertising.org', '9323', 7, '5193'),
		('Roob and Sons', 'chaysham7@bbc.co.uk', '70', 8, '07402'),
		('Williamson, Champlin and Kirlin', 'cmacglory8@hc360.com', '63206', 9, '932323'),
		('Yost, Nienow and Mayert', 'lgrinsdale9@adobe.com', '04615', 10, '21'),
		('Runte, Dibbert and Emmerich', 'hwarmana@ask.com', '53242', 11, '52'),
		('Pagac Inc', 'sasheb@usa.gov', '29423', 12, '5'),
		('Grady, Turner and Torp', 'tdaenenc@youtu.be', '5475', 13, '423'),
		('Ritchie Inc', 'gcudd@spotify.com', '06747', 14, '00394'),
		('Fay, Botsford and Watsica', 'akrolle@walmart.com', '82407', 15, '61');

/*CREAR TABLE PRÉSTAMOS*/
CREATE TABLE IF NOT EXISTS prestamos (cantidad DECIMAL,
                        balance DECIMAL,
                        fecha DATE,
                        id_cliente INT,
                        nombrePrestamo VARCHAR (255), Primary key (nombrePrestamo),
                        FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

insert into prestamos (cantidad, balance, fecha, id_cliente, nombrePrestamo)
values  (80.01, 75.329413717, '2019-01-14', '39', 'Acetaminophen, Dextromethorphan Hydrobromide, Phenylephrine Hydrochloride'),
		(69.5, 55.366173668, '2021-12-13', '87', 'Glycerin'),
		(58.71, 23.052543616, '2022-02-19', '6960', 'Metoprolol Succinate'),
		(3.27, 7.827582266, '2022-05-11', '732', 'ANAS BARBARIAE HEPATIS ET CORDIS EXTRACTUM,CHAMOMILLA,COFFEA CRUDA'),
		(89.07, 51.009991262, '2022-04-29', '513', 'isosorbide mononitrate'),
		(30.21, 9.095490645, '2022-04-03', '97275', 'Grass Smut Mixture'),
		(44.3, 31.218369962, '2021-11-27',  '9323','Lansoprazole'),
		(97.81, 59.749756653, '2019-01-09', '70', 'OCTINOXATE, OCTISALATE'),
		(78.28, 72.091186944, '2021-11-15', '63206', 'LIDOCAINE VISCOUS'),
		(73.66, 53.494134484, '2022-10-02', '04615', 'PSEUDOGNAPHALIUM OBTUSIFOLIUM'),
		(97.18, 92.000713483, '2022-05-29', '53242','Esmolol'),
		(74.59, 26.655719245, '2022-10-16', '29423', 'Lidocaine Hydrochloride and Benzalkonium Chloride'),
		(45.13, 5.053489443, '2022-10-18', '5475', 'Dextromethorphan Hydrobromide, Guaifenesin, and Phenylephrine Hydrochloride'),
		(5.92, 44.25303278, '2021-12-21', '06747', 'moxifloxacin hydrochloride'),
		(9.53, 70.80673176, '2022-08-19', '82407', 'Theophylline');

/*CREAR TABLE TARJETA DE CRÉDITO*/
CREATE TABLE IF NOT EXISTS tarjetaCredito (   fechaCaducidad DATETIME,
                                limite VARCHAR (255),
                                id_cliente INT,
                                numeroTarjeta INT NOT NULL, Primary key (numeroTarjeta),
                                FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

insert into tarjetaCredito (fechaCaducidad, limite, id_cliente, numeroTarjeta) 
values  ('2022-09-24', '$4.08', '39',  '64'),
('2021-12-18', '$0.42', '87', '24'),
('2022-03-25', '$1.70', '6960', '65'),
('2022-04-03', '$9.41', '732', '54'),
('2022-03-30', '$4.63', '513','10'),
('2022-04-08', '$5.57', '97275', '9'),
('2022-03-05', '$6.04',  '9323', '3'),
('2021-12-28', '$1.62', '70', '62'),
('2022-10-05', '$2.01', '63206', '134'),
('2021-12-28', '$1.62', '70', '69'),
('2022-04-14', '$9.25', '5475', '5'),
('2022-04-12', '$8.95', '06747', '41'),
('2021-12-20', '$9.22', '82407', '136'),
('2022-03-05', '$6.04',  '9323', '39'),
('2021-12-28', '$1.62', '70', '42');

/*CREAR TABLE CANTIDAD*/
CREATE TABLE IF NOT EXISTS cantidad ( categoria VARCHAR (255),
                        balance VARCHAR (255),
                        fecha DATETIME,
                        id_cliente INT,
                        numeroCuenta INT NOT NULL, Primary key (numeroCuenta),
                        FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

insert into cantidad (categoria, balance, fecha, numeroCuenta) 
values 
('Mansory Shafts', '$2.76', '2022-04-23', 1),
('Exterior Signage', '$3.66', '2021-11-23', 2),
('Granite Surfaces', '$9.68', '2022-09-26', 3),
('Electrical and Fire Alarm', '$0.84', '2022-04-14', 4),
('HVAC', '$4.31', '2022-06-25', 5),
('Structural & Misc Steel Erection', '$9.79', '2022-10-18', 6),
('Sitework & Site Utilities', '$1.55', '2022-09-01', 7),
('Structural & Misc Steel Erection', '$4.49', '2022-04-12', 8),
('Masonry & Precast', '$5.97', '2022-02-14', 9),
('Framing (Wood)', '$0.47', '2022-06-21', 10),
('Rebar & Wire Mesh Install', '$5.22', '2022-01-26', 11),
('Epoxy Flooring', '$1.93', '2022-08-20', 12),
('EIFS', '$6.52', '2022-03-05', 13),
('Retaining Wall and Brick Pavers', '$0.27', '2022-01-18', 14),
('Marlite Panels (FED)', '$0.80', '2022-08-20', 15);

CREATE OR REPLACE VIEW SitemaFinanciero AS

Select * FROM sucursal WHERE id_bancario BETWEEN 1 AND 10;
Select * FROM cliente WHERE nombreCliente like 'C%';
Select * from prestamos where fecha between '2019-01-09' and '2022-10-18';
Select * from cantidad where balance > '$2' and '$5';
Select * FROM cantidad WHERE numeroCuenta =1;
