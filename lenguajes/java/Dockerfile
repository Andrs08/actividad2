# Usa la imagen oficial de OpenJDK
FROM openjdk:11

# Instala time
RUN apt-get update && apt-get install -y time

# Copia el archivo Java al contenedor
COPY Main.java /Main.java

# Compila el código
RUN javac /Main.java

# Ejecuta el código y mide el tiempo
CMD ["/bin/sh", "-c", "time java -cp / Main"]
 
