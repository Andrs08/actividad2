#!/bin/bash

# Clona el repositorio con los benchmarks
git clone https://github.com/Andrs08/actividad2.git /benchmark

# Entra al directorio clonado
cd /benchmark/lenguajes

# Archivo donde se guardarán los resultados
mkdir -p /benchmark/resultados
RESULTS_FILE="/benchmark/resultados/tiempos.csv"
echo "Lenguaje,Tiempo (ms)" > $RESULTS_FILE

# Recorre cada carpeta de lenguaje
for lang in */ ; do
    lang_clean=${lang%/}  # Elimina la barra al final del nombre
    echo "Ejecutando benchmark en $lang_clean"
    
    # Construye la imagen del lenguaje
    docker build -t benchmark-$lang_clean $lang_clean
    
    # Ejecuta el contenedor y guarda el tiempo
    tiempo=$(docker run --rm benchmark-$lang_clean)
    
    # Guarda el resultado en el archivo
    echo "$lang_clean,$tiempo" >> $RESULTS_FILE
done

# Mostrar los resultados
cat $RESULTS_FILE
