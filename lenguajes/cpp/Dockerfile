# Usa la imagen base de GCC (GNU Compiler Collection)
FROM gcc:latest

# Instala time
RUN apt-get update && apt-get install -y time

# Copia el código fuente al contenedor
COPY main.cpp /main.cpp

# Compila el código
RUN g++ -o /main /main.cpp

# Ejecuta el código y mide el tiempo
CMD ["/bin/sh", "-c", "/usr/bin/time -p /main"]

 
