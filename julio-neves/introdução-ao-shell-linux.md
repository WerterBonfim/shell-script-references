# Introdução ao Shell Linux

## Encerrando sessão linux - exit, logout

- logout: encerra de uma vez a sessão do usuario:
```bash
$ logout
# pode se usar ctrl+d
$ ^d
```
- exit: encerra somente o shell corrente
```bash
$ exit
```
É aconselhavel utilizar exit

## passwd - Alterando a senha

- passwd: Permite a um usuário mudar sua própria senha, ou ao superusuário mudar a senha de qualquer usuário

```bash
passwd
```

## Comandos e atribuições

Existem 3 formas de "esconder" algo do shell:
- aspas
- apóstrofos
- contrabarra \
```bash
Nome="Eva dias"
Nome='Alice Ada'
Nome=Juca\ Gouveia
```

## Obtendo ajuda

- help: informações gerais dos built-ins do shell
- info: mostra a documentaão no formato info
- man: manual
- apropos: Mostra informações sobre um tópico
- whatis: Obtém uma breve descricao de um comando do sistema





## main pages - Manual de referência

Manual dere referência do Unix é dividido em oito seções:

1. Comandos de usuários - Comandos que podem ser executados a partir de um Shell
2. Chamadas de sistema - Funções que têm que ser executados pelo kernel.
3. Bibliotecas de funções- A maioria das funções da biblioteca libc
4. Formatos de arquivos especiais - Drivers e Hardware
5. Arquivo de configuração - Formatodos de arquivos e convençções
6. Jogos e demostrações
7. Pacotes de macro e convenções
8. Comandos de administração do sistema

```bash

# mostra a sessão 1(comandos de usuário) do manual para este comando 
man 1 ls

# mostra a sessão 6(jogos e demostrações) do manual para este comando 
man 6 intro

```


## apropos - Informações sobre um tópico

```bash
apropos compiler
apropos game
apropos wine

man -k compiler
man -k game
man -k wine
```

Este comando consulta um banco de dados consistido da descrião do comando. Este banco de dados não é criado automaticamente.

O banco de dados é construido através do comando catman


## whatis - Descrição do comando

O comando whatis obtém uma breve descrição de um comando do sistema.

```bash
whatis chmod
whatis ifconfig
```

## Caracteres especiais

- Aspas ("): Nada do que está dentro de um par de aspas será interpretado pelo shell, exceto o cifrão ($), as crases (`) e a contra barra (\).

- Apóstrofo ('): Nada que estaja dentro de um par de apóstrofos erá interprestado pelo Shell;

- Contrabarra (\): O caractere seguinte à contrabarra, seja ela qual for, não será interpretado pelo Shell.

## Caracteres que casam com nome de arquivos

- Asterisco (*): Expande para qualquer cadeia, ou nenhuma para casar com nome(s) de arquivo(s).

- Interroga (?): Expande para qualquer caractere para casar com nome(s) de arquivos(s) (mas para somente 1)

- Lista([...]): Expande para qualquer um dos caracteres que estejam no interior dos colchetes para casar com nome(s) de arquivo(s).

# Caractres para redirecionamento de E/S

- Maior (>): Redireciona a saída primária (stdout) para um arquivo;

- Menor (<>): Redireciona a entrada primária (stdin) para um arquivo;

- Pipe (|): Redirecionam a saída primária de um comando para a entrada primária de outro.

# Outros caracteres especiais

- crase(`): Serve para priorizar a execução de comandos;

- parênteses (): Serve para agrupar comando e rodá-los sob um subshell;

- ponto e virgula(;): Equivale ao <Enter>, assim sendo, permite o uso de mais de um comando por linha, desde que esteja separados por ponto e vírgula (;).

## Formatando saída e escrevendo

### Comandos para escrever e formatar saída

- eco: Que vai te resolver 90% dos problemas de listar dados

- printf: Para gerar listagem formatadas

- pr: Converte textos para imprimir

- column: Colunando a tela


## Comando echo

- -n: Nãosalta para a linha segunte

- -e: Interpreta os caracteres precedidos por uma contrabarra, como caracteres de controle (não existe no UNIX). Veja todos eles no comando printf que vem a seguir.

- -c: Não salta para a linha seguinte (não existe no Linux)


```bash

$ Var=Você

$ echo $Var
Você

$ echo $Var é uma pessoa legal
Você é uma pessoa legal

$ echo -e "$Var é legal,\nmas seu irmão é um saco"
Você é legal,
mas seu irmão é um saco

$ echo Você é legal,; echo mas seu irmão é um saco
Você é legal,
mas seu irmão é um saco

$ echo -n Você é legal,; echo mas seu irmão é um saco
Você é legal,mas seu irmão é um saco
```


## Comando printf

```bash
printf FMT [ARGS...]
```

FMT: é uma cadeia de caracteres qu contem 3 tipos de objeto:

- 1: caractres simples;
- 2: caracteres para especificaão de formato e
- 3: sequência de escape no padrão da linguagem C.

ARGS: é a cadeia a ser impressa sob o controle do formato.

- c: Simples caractere
- d: Número no sistema decimal
- e: Notação científica exponencial
- f: Número com ponto decimal
- g: O menor entre os formatos %e e %f com supressão dos zeros não significativos
- o: Número no sistema octal
- s: Cadeia de caracteres
- x: Número no sistema hexadecimal
- %: Imprime um %. Não existe nenhuma conversão.


As sequências de escape padrão da linguagem C são sempre precedidas por um contrabarra (\) e as reconhecidas pelo comando printf são:

- a: Soa o beep
- b: Volta uma posição (backspace)
- f: Salta para a próxima página lógica (form feed)
- n: Salta para o início da linha seguinte (line feed)
- r: Volta para o início da linha corrente (carriage return)
- t: Avança para a próxima marca de tabulação

```bash
$ printf "%c" "1 caracter"	
1$              # Errado! Só listou 1 char e não saltou linha ao final

$ printf "%c\n" "1 caracter"
1               # Saltou linha mas ainda não listou a cadeia inteira

$ printf "%c caractere\n" 1
1 caractere     # Esta é a forma correta o %c recebeu o 1

$ a=2
$ printf "%c caracteres\n" $a
2 caracteres    # O %c recebeu o valor da variável $a

$ printf "%10c caracteres\n" $a
         2 caracteres

$ printf "%10c\n" $a caracteres
         2
         c

```


Repare que nos dois últimos exemplos, em virtude do %c, só foi listado um caracter de cada cadeia. O 10 à frente do "c" não significa 10 caracteres. Um número seguindo o sinal de percentagem (%) significa o tamanho que a cadeia terá após a execução do comando.


```bash

$ printf "%d\n" 32
32
$ printf "%10d\n" 32
         32             # Preenche com brancos à esquerda e não com zeros
$ printf "%04d\n" 32
0032                    # 04 após % significa 4 digitos com zeros à esquerda

$ printf "%f\n" 32,3
32.300000               # O default do %f é 6 decimais
$ printf "%.2f\n" 32,3
32,30                   # O .2 especificou duas decimais
$ printf "%o\n" 10
12                      # Converteu o 10 para octal
$ printf "%03o\n" 27
033                     # Assim a conversão fica com mais jeito de octal, né?
$ printf "%s\n" Peteleca
Peteleca
$ printf "%15s\n" Peteleca
               Peteleca # Peteleca com 15 caracteres enchidos com brancos
$ printf "%-15sNeves\n" Peteleca
Peteleca       Neves    # O menos (-) encheu à direita com brancos
$ printf "%.3s\n" Peteleca
Pet                     # .3  trunca as 3 primeiras
$ printf "%10.3sa\n" Peteleca
          Peta          # Pet com 10 caracteres concatenado com a (após o s)
$ printf "EXEMPLO %x\n" 45232
EXEMPLO b0b0            # Transformou para hexa mas os zeros não combinam
$ printf "EXEMPLO %X\n" 45232
EXEMPLO B0B0            # Assim disfarçou  melhor (repare o X  maiúsculo)
$ printf "%X %XL%X\n" 49354 192 10
C0CA C0LA


```


## pr - converter texto para imprimir 

O comando pr permite que você formate dados para impressão ou pra listá-lo na tela.

- -NUM: Tabelar a saída em NUM colunas
- -w NUM: A saída será formatada para ter largura NUM
- -T: Omite a paginação. Sempre uso essa opção para formatar a saída na tela.


```bash
# Sem paginação, 80 de largura em 3 colunas
pr -T -w80 -3 praias
```


## column - criando colunas na tela

sua finalidade é tabular os dados que vão para a tela.

- -t: Formatar uma tabela para impressão, na forma que considera ser o ideal.

- -c NUM: Monta a saída para uma tela, cuja largura disponibiliza para fazer a tabulação seja NUM.

- -s: Quando usado junto à -t, explicita qual o separador entre campos da entrada. Muito útil quando usando com arquivos com campos separados por vírgulas (.csv)

Observação: A opção -s aceita múltiplos separadores.

```bash

$ (echo PERMISSOES LNK DONO GRUPO TAM MES DIA \
HH:MM NOME-PROG; ls -l | tail -n +2) | column -t

PERMISSOES LNK DONO  GRUPO  TAM  MES DIA HH:MM NOME-PROG
drwxr-xr-x 2   julio julio  4096 Mar 7   09:51 dir
drwxr-xr-x 2   julio julio  4096 Mar 11  09:00 dir1
-rw-r--r-- 1   julio julio  10   Mar 8   15:24 impar
-rw-r--r-- 1   julio julio  11   Mar 8   15:24 pars.txt


```



