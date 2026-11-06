USE EmpresaDB;
GO

CREATE PROCEDURE sp_RegistrarAuditoria
    @VentaID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Registrar la auditoría de la venta
    INSERT INTO AuditoriaVentas (VentaID, Mensaje)
    VALUES (@VentaID, 'Venta registrada automáticamente e inventario actualizado');

    -- 2. Reto Avanzado: Descontar existencias en Inventario según la venta registrada
    UPDATE i
    SET i.Stock = i.Stock - v.Cantidad
    FROM Inventario i
    INNER JOIN Ventas v ON i.Producto = v.Producto
    WHERE v.VentaID = @VentaID;
END;
GO
