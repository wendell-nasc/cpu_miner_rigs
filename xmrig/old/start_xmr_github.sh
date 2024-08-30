#!/bin/bash

# Armazenando argumentos em variáveis
read oldrev newrev ref

# Armazenando caminho do código fonte em variável
worktree=/home/wendell/hook
# Atualizando código fonte
git --work-tree="$worktree" checkout -f

# Exibindo valores das variáveis
echo "Old revision: $oldrev"
echo "New revision: $newrev"
echo "Reference name: $ref"
