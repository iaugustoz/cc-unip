#!/bin/bash

# Define o tamanho máximo permitido
MAX_SIZE=99000000  # 99MB em bytes

# Encontra arquivos maiores que o tamanho permitido
oversized_files=$(find . -type f -size +"${MAX_SIZE}c")

# Verifica se há arquivos com tamanho maior que o permitido
if [ -z "$oversized_files" ]; then
    echo "Tudo OK. Nenhum arquivo maior que 99MB foi encontrado."
else
    echo "Atenção! Os seguintes arquivos são maiores que 99MB:"
    echo "$oversized_files"
fi
