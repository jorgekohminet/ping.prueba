# Definimos el SO Linux Alpine con jdk17 incluido
FROM amazoncorretto:17-alpine

# Creamos nuestro directorio de trabajo en el contenedor
WORKDIR /app

# copiamos la aplicación que se encuentra en la capeta del target, y la pegamos en la carpera raiz del contenedsor
# Agregamos una variable o ARGUMENTO ARG que va a tener el siguiente valor JAR_FILE is a build argument you pass when running 'docker build'
ARG JAR_FILE=./target/ping.prueba-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app/app.jar

# Definimos el puerto por el cual se expondra la aplicación dentro del contenedor
EXPOSE 30300

# Define the command to run your application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]


## 1. Ejecutamos el siguiente programa para construir ewl contenedor
## docker build --build-arg JAR_FILE=target/ping.prueba-0.0.1-SNAPSHOT.jar -t ping-prueba-short .
##
