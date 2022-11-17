CREATE OR REPLACE VIEW SitemaFinanciero AS

Select * FROM sucursal WHERE id_bancario BETWEEN 1 AND 10;
Select * FROM cliente WHERE nombreCliente like 'C%';
Select * from prestamos where fecha between '2019-01-09' and '2022-10-18';
Select * from cantidad where balance > '$2' and '$5';
Select * FROM cantidad WHERE numeroCuenta =1;
