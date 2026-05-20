# practica1Brandon
La actividad consiste en analizar, comprender e identificar cuáles son los problemas de calidad e integridad que existen dentro del dataset de Data Warehouse.

Se utilizó el dataset de ecommerce proporcionado, este contiene lo siguiente:

1. InvoiceNo
2. StockCode
3. Description
4. Quantity
5. InvoiceDate
6. UnitPrice
7. CustomerID
8. Country


Mientras se analizaba se encontraron los siguientes errores críticos dentro del dataset:

1. Valores nulos en la columna CustomerID
2. Registros duplicados en algunas ventas
3. Productos sin descripción en la columna Description
4. Ventas con valores negativos en Quantity
5. Valores inconsistentes en UnitPrice


Estos problemas pueden afectar el análisis de datos de diferentes maneras:

1. Los valores nulos dificultan identificar clientes.
2. Los registros duplicados alteran los resultados de ventas.
3. Las cantidades negativas generan resultados incorrectos.
4. Los productos sin descripción dificultan identificar productos.
5. Los precios inconsistentes afectan reportes financieros.


Para corregir esos errores se recomienda:

1. eliminar registros duplicados
2. eliminar o corregir valores nulos
3. filtrar cantidades negativas
4. validar precios unitarios
5. estandarizar formatos de datos
