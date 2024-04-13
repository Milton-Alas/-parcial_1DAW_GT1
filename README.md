#Parcial 1: parcial_1DAW_GT1

Este documento presenta las instrucciones actualizadas para ejecutar el proyecto "Parcial 1DAW_GT1". Se han realizado mejoras para mayor claridad, concisión y facilidad de uso.

##Requisitos previos:

- Tener Docker instalado y configurado correctamente en su sistema.
- Tener acceso al código del proyecto.

###Paso 1: Limpiar el entorno de Docker (Opcional)

**Objetivo**: Eliminar imágenes, contenedores y volúmenes de Docker previos relacionados con el proyecto.

**Ejecucion:**

Eliminar contenedores detenidos:
    **docker rm $(docker ps -a -q)**

**Explicacion:**

- docker ps -a -q enumera los ID de todos los contenedores detenidos.
- $(docker ps -a -q) captura la salida como argumento.
- docker rm elimina los contenedores especificados por sus ID.

###1.2 Eliminar imágenes:

Ejecuta el siguiente comando para eliminar todas las imágenes:

**docker rmi $(docker images -q)**

 **Explicación**:

- docker images -q enumera los ID de todas las imágenes.
- $(docker images -q) captura la salida como argumento.
- docker rmi elimina las imágenes especificadas por sus ID.

###1.3 Eliminar volúmenes:
Ejecuta el siguiente comando para eliminar todos los volúmenes:

**docker volume rm $(docker volume ls -q)**

**Explicación**:

- docker volume ls -q enumera los nombres de todos los volúmenes.
- $(docker volume ls -q) captura la salida como argumento.
- docker volume rm elimina los volúmenes especificados por sus nombres.

###1.4 Limpiar el proyecto Maven:

Ejecuta el siguiente comando para eliminar archivos compilados y la caché de Maven:
    **mvn clean package -DskipTests**

**Explicación**:

**mvn clean package limpia el proyecto y compila las fuentes.
-DskipTests omite la ejecución de pruebas durante la compilación.
Pas**o 2: Ejecutar el proyecto con Docker Compose

**Objetivo**: Iniciar el proyecto utilizando Docker Compose para una configuración simplificada.

###2.1 Iniciar el proyecto:

Ejecuta el siguiente comando para iniciar el proyecto con Docker Compose:

**docker-compose up -d**

**Explicación**:

- docker-compose up inicia los contenedores definidos en el archivo docker-compose.yml.
- -d ejecuta los contenedores en segundo plano.

###3.1 Acceder a la aplicación:
La aplicación debería estar accesible en el puerto especificado en el archivo docker-compose.yml.
Puedes utilizar un navegador web para acceder a la aplicación en la dirección **http://localhost:8090/users **


##Integrantes del equipo:

###### Milton Obed Alas Hernandez - AH09062
###### Lilian Sofia Tejada Villatoro - TV22008
######  David Alfredo Parada Mendoza - PM13119
