CREATE TABLE dim_cliente (
    cliente_id SERIAL PRIMARY KEY,
    customer_id VARCHAR(50)
);

CREATE TABLE dim_producto (
    producto_id SERIAL PRIMARY KEY,
    stock_code VARCHAR(50),
    descripcion TEXT
);

CREATE TABLE dim_fecha (
    fecha_id SERIAL PRIMARY KEY,
    fecha DATE,
    dia INT,
    mes INT,
    anio INT
);

CREATE TABLE dim_pais (
    pais_id SERIAL PRIMARY KEY,
    country VARCHAR(100)
);

CREATE TABLE fact_ventas (
    venta_id SERIAL PRIMARY KEY,
    invoice_no VARCHAR(50),

    cliente_id INT,
    producto_id INT,
    fecha_id INT,
    pais_id INT,

    cantidad INT,
    precio_unitario NUMERIC(10,2),
    total_venta NUMERIC(10,2),

    FOREIGN KEY (cliente_id) REFERENCES dim_cliente(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES dim_producto(producto_id),
    FOREIGN KEY (fecha_id) REFERENCES dim_fecha(fecha_id),
    FOREIGN KEY (pais_id) REFERENCES dim_pais(pais_id)
);