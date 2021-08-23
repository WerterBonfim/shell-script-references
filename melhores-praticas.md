### começar com
```bash
#!/usr/bin/env bash
```

### stric mode
```bash
set -euo pipefail
```

## Verificações


``` bash
# Verifica se um app esta disponivel
[[ $(type -P dialog) ]] || {
    echo "Necessido do dialog, para continuar"
    exit 1
}

[[ -x "$arquivo" ]] &&
    echo "Tem permissão de execução" ||
    echo "Não tem permissão de execução"


# Verifica se é um digito
[[ ! "$opcao" =~ ^[[:digit]]+$ ]] && {
    echo "Opção inválida"    
    exit 1
}

```
