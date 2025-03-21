# AgroMX - Backend

AgroMX es una plataforma de comercio electrónico enfocada en la venta de productos agroecológicos, facilitando la conexión entre productores locales y consumidores interesados en productos frescos y sostenibles. El backend de AgroMX gestiona la lógica de negocio, la autenticación de usuarios y la comunicación con la base de datos para garantizar un funcionamiento eficiente y seguro.

## Tecnologías utilizadas

El backend de AgroMX ha sido desarrollado con las siguientes tecnologías:

- **Java**: Lenguaje principal para la implementación del backend.
- **MySQL**: Base de datos relacional utilizada para almacenar la información del sistema.

## Instalación y configuración

### Requisitos previos

Antes de comenzar, asegúrate de tener instalado lo siguiente:

- [Gradle](https://gradle.org/)

## Estructura del proyecto

```
/agromx-backend
│── /src
│   │── /main
│   │   │── /java/com/agromx
│   │   │   │── /config       # Configuración de seguridad y CORS
│   │   │   │── /controllers  # Controladores REST
│   │   │   │── /dto          # Objetos de transferencia de datos
│   │   │   │── /models       # Entidades de la base de datos
│   │   │   │── /repositories # Interfaces para acceso a datos
│   │   │   │── /services     # Lógica de negocio
│   │   │── /resources
│   │   │   │── application.properties # Configuración de la aplicación
│── /sql
│   │── AgroMX_DB.sql  # Script de creación de la base de datos
│   │── INSERT_users.sql  # Datos de prueba para usuarios
│   │── INSERT_products.sql  # Datos de prueba para productos
│   │── ... (otros scripts de inserción y configuración)
│── pom.xml  # Configuración de dependencias de Maven
│── README.md  # Documentación del backend
```

## Endpoints principales

### Autenticación
- `POST /auth/login` → Iniciar sesión y obtener un token JWT.
- `POST /auth/register` → Registrar un nuevo usuario.

### Usuarios
- `GET /users` → Obtener la lista de usuarios (admin).
- `GET /users/{id}` → Obtener un usuario por ID.
- `PUT /users/{id}` → Actualizar datos de usuario.
- `DELETE /users/{id}` → Eliminar un usuario.

### Productos
- `GET /products` → Obtener la lista de productos.
- `GET /products/{id}` → Obtener un producto por ID.
- `POST /products` → Crear un nuevo producto.
- `PUT /products/{id}` → Actualizar un producto.
- `DELETE /products/{id}` → Eliminar un producto.

### Órdenes de compra
- `GET /orders` → Obtener todas las órdenes.
- `POST /orders` → Crear una nueva orden de compra.
- `GET /orders/{id}` → Obtener detalles de una orden específica.

## Pruebas con Postman

# Despliegue

Para desplegar la aplicación en un servidor, puedes utilizar:

- [AWS](https://aws.amazon.com/)

Pasos básicos para despliegue en Heroku:

1. Instalar Heroku CLI:
   ```sh
   npm install -g heroku
   ```
2. Autenticarse en Heroku:
   ```sh
   heroku login
   ```
3. Crear una aplicación en Heroku:
   ```sh
   heroku create agromx-backend
   ```
4. Subir el código al repositorio remoto:
   ```sh
   git push heroku main
   ```
5. Configurar las variables de entorno:
   ```sh
   heroku config:set SPRING_DATASOURCE_URL=jdbc:mysql://url_de_tu_base_de_datos
   heroku config:set SPRING_DATASOURCE_USERNAME=usuario
   heroku config:set SPRING_DATASOURCE_PASSWORD=contraseña
   ```

## Contribución

Si deseas contribuir al proyecto:

1. Realiza un fork del repositorio.
2. Crea una rama para tu nueva funcionalidad (`git checkout -b nueva-funcionalidad`).
3. Realiza los cambios y confirma los commits (`git commit -m "Descripción del cambio"`).
4. Sube los cambios a tu fork (`git push origin nueva-funcionalidad`).
5. Abre un Pull Request en el repositorio principal.

## Contacto

Si tienes dudas o sugerencias, puedes contactarnos a:

- **jaelbkz@icloud.com**
- **katherinehinojosamolina@gmail.com**
- **diazdae@gmail.com**
- **liset10nieve@live.com.mx**
- **elizabethania.te@gmail.com**
- **davidavellaneda863@gmail.com**
- **ecjeux24@gmail.com**
- **hilarihernandezislas@gmail.com**

