# Curso de Fortran - Átila Saraiva Quintela Soares

Esse é um curso que ministrei de Fortran que aborda vários tópicos.

O pdf dos slides é o arquivo pres.pdf, e os códigos estão dentro da pasta codigos.

Para reproduzir o ambiente de desenvolvimento rode:

```
cd codigos
sh prep.sh
```

ou caso já tenha o gerenciador de pacotes [Nix](nixos.org) instalado:
```
cd codigos
nix-shell
```

cada subpasta tem um exercício associado a uma estapa da aula, e podem ser compilados com make no
caso de se ter uma Makefile na pasta, ou com fpm no caso de se ter fpm.toml.
