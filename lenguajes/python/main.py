import time

def es_primo(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def suma_primos(limite):
    suma, contador, numero = 0, 0, 2
    while contador < limite:
        if es_primo(numero):
            suma += numero
            contador += 1
        numero += 1
    return suma

inicio = time.time()
resultado = suma_primos(10000)
fin = time.time()

# Imprime solo el tiempo en milisegundos
print(int((fin - inicio) * 1000))
