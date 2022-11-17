CREATE SCHEMA IF NOT EXISTS `SistFinanciero` DEFAULT CHARACTER SET utf8 ;
USE `SistFinanciero` ;

/*CREAR TABLA SUCURSAL*/
CREATE TABLE sucursal (	nombreSucursal VARCHAR (255),
                        direccionSucursal VARCHAR (255),
                        id_cliente INT,
                        id_banco INT,
                        id_sucursal INT NOT NULL auto_increment, Primary key (id_sucursal)
);

/*CREAR TABLA CLIENTE*/
CREATE TABLE cliente (	nombreCliente VARCHAR (255),
                        direccionCliente VARCHAR (255),
                        id_bancario INT,
                        id_sucursal INT,
                        id_cliente INT NOT NULL auto_increment, Primary key (id_cliente),
                        FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal)
);

/*CREAR TABLA BANCO*/
CREATE TABLE banco (	  nombreBancario VARCHAR (255),
                        emailBancario VARCHAR (255),
                        id_cliente INT,
                        id_sucursal INT,
                        id_bancario INT NOT NULL auto_increment, Primary key (id_bancario),
                      	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
                        FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal)
);

/*CREAR TABLE PRÉSTAMOS*/
CREATE TABLE prestamos (cantidad DECIMAL,
                        balance DECIMAL,
                        fechaHora DATETIME,
                        id_cliente INT,
                        nombrePrestamo VARCHAR (255), Primary key (nombrePrestamo),
                        FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);


/*CREAR TABLE TARJETA DE CRÉDITO*/
CREATE TABLE tarjetaCredito (   fechaCaducidad VARCHAR (255),
                                limite VARCHAR (255),
                                id_cliente INT,
                                numeroTarjeta INT NOT NULL, Primary key (numeroTarjeta),
                                FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);


/*CREAR TABLE CANTIDAD*/
CREATE TABLE cantidad ( categoria VARCHAR (255),
                        balance VARCHAR (255),
                        fechaHota DATETIME,
                        id_cliente INT,
                        numeroCuenta INT NOT NULL, Primary key (numeroCuenta),
                        FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);