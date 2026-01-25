# Informe Entrega 1 - Bases de datos IIC2413

### Datos del Alumno
| **Apellidos**       | **Nombres**          | **Número de Alumno** |
|---------------------|----------------------|----------------------|
| Apellido1 Apellido2 | Nombre 1 Nombre 2    |12345678              |

### 1. Modelo Entidad-Relación (E/R)
<!-- Inserta aquí tu diagrama ER. Usa el formato svg para evitar la perdida de calidad. Reemplaza "diagrama.svg" por la ruta a tu archivo -->

![Diagrama E/R](tu_diagrama.svg)

### 2. Entidades Débiles
<!-- Justifica CADA entidad débil identificada  -->
#### 2.1 Entidad_X
Se identifico **Entidad_X** como entidad débil porque ...

### 3. Llaves Primarias  y Compuestas
<!-- Justifica TODAS las llaves: primaria simple y primaria compuesta -->
#### 3.1 Entidad_A
La llave primaria de __Entidad A__ es  __atributo 2__ porque ...
#### 3.2 Entidad_B
La llave compuesta de  __Entidad_B__ es (__atributo_1__, __atributo_2__) porque ...

### 4. Relaciones
<!-- Justifica TODAS las relaciones de tu modelo -->
#### 4.1 Relacion_A
Relaciona la __Entidad_A__ y la __Entidad_B__, porque ...

### 5. Cardinalidades
<!-- Explica la cardinalidad en CADA relación del modelo -->
#### 5.1 Entidad_A - Entidad_B (1 -- 0 a n)
- Una instancia de **Entidad_A** puede estar asociada con cero o mas instancias de **Entidad_B**.
- Cada instancia de **Entidad_B** se relaciona con exactamente una instancia de **Entidad_A**.

### 6. Jerarquías
<!-- Identifica y justifica TODAS las jerarquías -->
#### 6.1 Entidad_Padre - Entidad_Hija1 - Entidad_Hija2
Se modelo una jerarquía donde **Entidad_Padre** es la entidad padre y **Entidad_Hija1** y **Entidad_Hija2** heredan de ella, porque...

### 7. Esquema Relacional
<!-- Construye el esquema relacional a partir de tu Modelo E/R -->

**Entidad_A**( <u>atributo_1</u>: INT, atributo_2: VARCHAR, ... )  
**Entidad_B**( <u>atributo_1</u>: INT, <u>atributo_2</u>: INT, atributo_3: DATE, … )
...

### 8. Consistencia y Normalización en BCNF
<!-- Justifica la consistencia del esquema y su cumplimiento de BCNF -->

- **Consistencia:** ...
    
- **Normalización en BCNF**: ...