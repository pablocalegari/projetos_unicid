#include <stdio.h>

int soma(int n) {

    if (n == 1) {
        return 1;
    }
    
    return n + soma(n - 1);
}

int main() {
    int resultado = soma(100);
    printf("A soma de 1 a 100 e: %d\n", resultado);
    
    return 0;
}
