USE EmpresaDB;
GO

-- 1. Poblar tabla Inventario (Reto Avanzado)
INSERT INTO Inventario (Producto, Stock) VALUES
('Laptop', 20),
('Monitor', 30),
('Teclado Mecánico', 50),
('Mouse Gamer', 40);
GO

-- 2. Inserciones individuales de prueba (del documento)
INSERT INTO Ventas (Producto, Cantidad)
VALUES ('Laptop', 3);

INSERT INTO Ventas (Producto, Cantidad)
VALUES ('Monitor', 5);
GO

-- 3. Inserción múltiple en una sola sentencia (Reto Principal)
INSERT INTO Ventas (Producto, Cantidad)
VALUES 
('Teclado Mecánico', 4),
('Mouse Gamer', 6);
GO

-- 4. Consultas de verificación para los logs de GitHub Actions
PRINT '=== TABLA VENTAS ===';
SELECT * FROM Ventas;

PRINT '=== TABLA AUDITORIA VENTAS ===';
SELECT * FROM AuditoriaVentas;

PRINT '=== TABLA INVENTARIO ACTUALIZADO ===';
SELECT * FROM Inventario;
GO
