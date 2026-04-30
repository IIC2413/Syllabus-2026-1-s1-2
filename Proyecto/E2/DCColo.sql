
-- Esquema DDL  - Proyecto DCColo

CREATE TABLE region (
  codigo_region INTEGER PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE comuna (
  codigo_comuna INTEGER PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  codigo_region INTEGER NOT NULL REFERENCES region(codigo_region)
);

CREATE TABLE persona (
  run VARCHAR(12) PRIMARY KEY,
  nombre_completo VARCHAR(150) NOT NULL,
  email VARCHAR(150),
  telefono_celular VARCHAR(20),
  telefono_alternativo VARCHAR(20),
  direccion_calle VARCHAR(150),
  codigo_comuna INTEGER REFERENCES comuna(codigo_comuna)
);

CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  run_persona VARCHAR(12) REFERENCES persona(run),
  email_login VARCHAR(150) NOT NULL,
  clave_encriptada VARCHAR(255) NOT NULL,
  tipo_usuario VARCHAR(30) NOT NULL
);

CREATE TABLE sucursal (
  codigo_sucursal VARCHAR(10) PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(150) NOT NULL,
  codigo_comuna INTEGER REFERENCES comuna(codigo_comuna)
);

CREATE TABLE cargo (
  id_cargo SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE persona_cargo (
  id_persona_cargo SERIAL PRIMARY KEY,
  run_persona VARCHAR(12) REFERENCES persona(run),
  id_cargo INTEGER REFERENCES cargo(id_cargo),
  codigo_sucursal VARCHAR(10) REFERENCES sucursal(codigo_sucursal),
  fecha_inicio DATE NOT NULL,
  fecha_termino DATE
);

CREATE TABLE socio (
  id_socio SERIAL PRIMARY KEY,
  run_persona VARCHAR(12) REFERENCES persona(run),
  tipo_socio VARCHAR(30) NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE,
  codigo_sucursal_base VARCHAR(10) REFERENCES sucursal(codigo_sucursal)
);

CREATE TABLE relacion_socio (
  id_relacion SERIAL PRIMARY KEY,
  id_socio_titular INTEGER REFERENCES socio(id_socio),
  id_socio_dependiente INTEGER REFERENCES socio(id_socio),
  parentesco VARCHAR(30) NOT NULL
);

CREATE TABLE membresia (
  id_membresia SERIAL PRIMARY KEY,
  id_socio_titular INTEGER REFERENCES socio(id_socio),
  anio INTEGER NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL,
  monto_base INTEGER NOT NULL
);

CREATE TABLE cuota (
  id_cuota SERIAL PRIMARY KEY,
  id_membresia INTEGER REFERENCES membresia(id_membresia),
  mes INTEGER NOT NULL,
  fecha_vencimiento DATE NOT NULL,
  monto_total INTEGER NOT NULL,
  estado VARCHAR(20) NOT NULL
);

CREATE TABLE pago_cuota (
  id_pago_cuota SERIAL PRIMARY KEY,
  id_cuota INTEGER REFERENCES cuota(id_cuota),
  fecha_pago DATE NOT NULL,
  monto_pagado INTEGER NOT NULL,
  medio_pago VARCHAR(30)
);

CREATE TABLE tipo_lugar (
  id_tipo_lugar SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE lugar (
  codigo_lugar VARCHAR(15) PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  capacidad INTEGER NOT NULL,
  codigo_sucursal VARCHAR(10) REFERENCES sucursal(codigo_sucursal),
  id_tipo_lugar INTEGER REFERENCES tipo_lugar(id_tipo_lugar)
);

CREATE TABLE precio_lugar (
  id_precio SERIAL PRIMARY KEY,
  codigo_lugar VARCHAR(15) REFERENCES lugar(codigo_lugar),
  tipo_precio VARCHAR(10) NOT NULL,
  dia_semana VARCHAR(15),
  hora_inicio TIME,
  hora_termino TIME,
  fecha_inicio DATE,
  fecha_fin DATE,
  monto INTEGER NOT NULL
);

CREATE TABLE reserva (
  codigo_reserva VARCHAR(20) PRIMARY KEY,
  codigo_lugar VARCHAR(15) REFERENCES lugar(codigo_lugar),
  run_reservante VARCHAR(12) REFERENCES persona(run),
  fecha_inicio TIMESTAMP NOT NULL,
  fecha_fin TIMESTAMP NOT NULL,
  estado VARCHAR(20) NOT NULL
);

CREATE TABLE pago_reserva (
  id_pago_reserva SERIAL PRIMARY KEY,
  codigo_reserva VARCHAR(20) REFERENCES reserva(codigo_reserva),
  fecha_pago DATE NOT NULL,
  monto INTEGER NOT NULL,
  medio_pago VARCHAR(30)
);

CREATE TABLE empresa (
  rut_empresa VARCHAR(15) PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL
);

CREATE TABLE evento (
  codigo_evento VARCHAR(20) PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  fecha_evento DATE NOT NULL,
  codigo_lugar VARCHAR(15) REFERENCES lugar(codigo_lugar),
  codigo_sucursal VARCHAR(10) REFERENCES sucursal(codigo_sucursal),
  tipo_cliente VARCHAR(20) NOT NULL,
  identificador_cliente VARCHAR(20) NOT NULL
);

CREATE TABLE contacto_empresa (
  id_contacto SERIAL PRIMARY KEY,
  rut_empresa VARCHAR(15) REFERENCES empresa(rut_empresa),
  run_persona VARCHAR(12) REFERENCES persona(run),
  cargo VARCHAR(50)
);

CREATE TABLE asistente_evento (
  id_asistente SERIAL PRIMARY KEY,
  codigo_evento VARCHAR(20) REFERENCES evento(codigo_evento),
  run_asistente VARCHAR(12),
  nombre_asistente VARCHAR(150)
);

CREATE TABLE pago_evento (
  id_pago_evento SERIAL PRIMARY KEY,
  codigo_evento VARCHAR(20) REFERENCES evento(codigo_evento),
  fecha_pago DATE NOT NULL,
  monto INTEGER NOT NULL,
  tipo_pago VARCHAR(20) NOT NULL
);
