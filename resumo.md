

## Comparação de Strings


* [Str1 = Str2]: Retorna true se as Strings são iguais
* [Str1 != Str2]: Retorna true se as Strings não são iguais
* [-n Str1]: Retorna true se a String não é null
* [-z Str1]: Retorna true se a String é null

## Comparação Numérica


* [expr1 -eq expr2]: Retorna true se os valores são iguais
* [expr1 -ne expr2]: Retorna true se os valores não são iguais
* [expr1 -gt expr2]: Retorna true se o expr1 é maior que o expr2
* [expr1 -ge expr2]: Retorna true se o expr1 é maior ou igual ao expr2
* [expr1 -lt expr2]: Retorna true se o expr1 é menor que o expr2
* [expr1 -le expr2]: Retorna trues se o expr1 é menor ou igual ao expr2
* [! expr1]: Nega o resultado da expressão (se for true vira false e vice-versa)


## Condicionais de arquivos

* [-d file]: Retorna se for um diretório
* [-e file]: Retorna true se o arquivo existir
* [-f file]: Retorna true se o arquivo existir (-f é mais usado porque é mais portável)
* [-g file]: Retorna true se o GID estiver habilitado no arquivo
* [-r file]: Retorna true se o arquivo tiver permissão de leitura
* [-s file]: Retorna true se o arquivo tiver um tamanho diferente de zero
* [-u]: Retorna true se o UID estiver habilitado no arquivo
* [-w]: Retorna true se o arquivo tiver permissão de escrita
* [-x]: Reteorna true se o arquivo tiver permissão de execução



## Parametros Posicionais

```bash
nome_programa params1 params2
backup-utils origem destino
```

$0 - Sempre indica o nome do programas: 
 - nome_programa
 - backup-utils  

$1 - primeiro parametro/argumento
 - params1
 - origem

$1 - segundo parametro/argumento
 - params2
 - destino


### Segundo grupo


$# - Número todal de parâmetros passados

$* - Todos os parâmetros com uma string única

$@ - Todos parametros com váriaveis string protegidas.
 - egrep utiliza essa abordagem: exec grep -E "$@"

Diferenças:

$* a saida é: "a b c d"

$@ a saida é: "a" "b" "c" "d" -> cada parametro isolado/protegida

parametros_posicionais.sh:
```bash 
IFS=:
echo "Qtd de parametros: $#"
echo "Todos os parametros com \$*: $* \n"

#echo "Todos os parametros com \$@: $@"


echo "O nome do programa é: $0"
echo "O primeiro parametro é: $1"
echo "O segundo parametro é: $2"
echo "O terceiro parametro é: $3"


❯ bash parametros_posicionais.sh a b c d e f h
#Qtd de parametros: 7
#Todos os parametros com $*: a:b:c:d:e:f:h
#O nome do programa é: parametros_posicionais.sh
#O primeiro parametro é: a
#O segundo parametro é: b
#O terceiro parametro é: c

```




IFS Internal field separator

O separador padrão do bash é espaco, desta forma podemos alterar esse comportamento:

app.sh
```bash
IFS=:
echo "$*"

bash app.sh a b c
#output
# a:b:c

```


### Terceiro grupo dos parametros opcionais:


$$ Número do PID do processo atual (Do próprio Script)

$! Número do PID do útilmo JOB em segundo plano

$_ Último argumetno do útilmo comando executado

$? Mostra código de retonro do útilmo comando executado


# Modulo 2

## Funções

```bash
# Padrão POSIX

nome_da_funcao() {
    #comandos
}


# Padrao bash
function imprimindoOIS () {
    echo "Olha só"
    echo "Esa é minha primeira funcao"
    echo "Com padrão BASH. :D"
}

# diferente de outras linguagem, não precisa abrir e fechar 
imprimindoOIS  # Chamando a função


```

Definindo uma variavel local, com escopo somente dentro da função
```bash
function exemplo() {

    # Essa é a boa pratica para inicializar uma variavel
    # em shell script
    local umaVariavel
    umaVariavel = "$1" # O conteudo é o primeiro parametro da funcao

}

exemplo "$1" # passando parametros

```

### Carregando arquivos externos


parametros.conf:
```bash
usuario="werter"
diretorioPadrao="/home/werter"
```

app.sh
```bash
#!/usr/bin/env bash
source "parametros.conf"

echo "$usuario"
```
