#!/bin/bash

# Clona el repositorio con los benchmarks
git clone https://github.com/Andrs08/actividad2.git /benchmark

# Entra al directorio clonado
cd /benchmark/lenguajes

# Recorre cada carpeta de lenguaje
for lang in */ ; do
    echo "Ejecutando benchmark en $lang"
    
    # Construye la imagen del lenguaje
    docker build -t benchmark-$lang $lang
    
    # Ejecuta el contenedor y mide el tiempo
    tiempo=$(docker run --rm benchmark-$lang)
    
    # Guarda el resultado en la carpeta de resultados
    echo "$lang,$tiempo" >> /benchmark/resultados/tiempos.csv
done

# Muestra los resultados
cat /benchmark/resultados/tiempos.csv


