## Seção 04 Debugar código Shell Script

3 formas:

* bash -xv: -x mostra as atribuições linha a linha. -v mostra o trecho do codigo

```bash
bash -x nome_script 

bash -xv nome_script -h
```
* set -x set +x: habilita do debug é um lugar especifico

```bash

# habilita o modo debug
set -x 

# um trecho de codigo qualquer

# desabilita o modo debug
set +x
```
* usando funcoes
