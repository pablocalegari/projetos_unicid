#include <stdio.h>
#include "paciente.h"

void imprimirPacientes(Paciente v[], int tam) {
    int i;
    printf("\n---PACIENTES ORDENADOS---\n");
    for (i = 0; i < tam; i++) {
        printf("%d - %s (%d anos)\n", v[i].id, v[i].nome, v[i].idade);
    }
}

