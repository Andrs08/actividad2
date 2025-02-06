#include <iostream>
#include <cmath>
#include <ctime>

using namespace std;

bool esPrimo(int n) {
    if (n < 2) return false;
    for (int i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int sumaPrimos(int limite) {
    int suma = 0, contador = 0, numero = 2;
    while (contador < limite) {
        if (esPrimo(numero)) {
            suma += numero;
            contador++;
        }
        numero++;
    }
    return suma;
}

int main() {
    clock_t inicio = clock();
    int resultado = sumaPrimos(10000);
    clock_t fin = clock();

    // Imprime solo el tiempo en milisegundos
    cout << ((double)(fin - inicio) / CLOCKS_PER_SEC) * 1000 << endl;
    return 0;
}
 
