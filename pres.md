---
title:
- Curso de Fortran
subtitle:
- básico ao intermediário
author:
- Átila Saraiva Quintela Soares
---

# Historia do Fortran

Desenvolvido pela IBM em 1950 para aplicações para a ciência e engenharia.

![Primeiro livro de referência de FORTRAN](figs/fortranref.png){width=5cm}

# Historia do Fortran

A galera naquela época escrevia o código de máquina na mão. O FORTRAN revolucionou propondo uma linguagem de alto nível.

![Cartão de furar que contém um pedaço de código FORTRAN](figs/cartao.jpg)

# Historia do Fortran

![Mainframe IBM 704](figs/mainframe.png)

# Historia do Fortran

O Fortran teve algumas revisões:

## Revisões não padronizadas

+ FORTRAN
+ FORTRAN II (1958)
+ FORTRAN III (1958, não liberada)
+ IBM 1401 FORTRAN (1959)
+ FORTRAN IV (1962)

# Historia do Fortran

O Fortran teve algumas revisões:

## Revisões padronizadas (ANSI)

+ FORTRAN 66
+ FORTRAN 77
+ Fortran 90
+ Fortran 95
+ Fortran 2003
+ Fortran 2008
+ Fortran 2018

# Historia do Fortran

Hoje Fortran é utilizado sorrateiramente em diversas aplicações ainda hoje:

+ Predição numérica de clima, oceano, e surfe
+ Predição e ciência do clima
+ Software de dinâmica de fluido, usado em engenharia mecânica e civil
+ Solucionadores de aerodinâmica para projetar carros, aviões, e espaçonaves
+ Bibliotecas de algebra linear rápidas usadas por bibliotecas de aprendizado de máquina
+ Fazer benchmark dos supercomputadores mais rápidos do mundo

Milan Curcic; Modern Fortran - Building Efficient Parallel Applications

# Características do Fortran

+ Compilada
+ Tipagem estática
+ Multiparadigma
+ Paralel
+ Madura
+ Fácil de aprender

# Porque aprender Fortran?

## Orientada para arrays

```fortran
do j = 1, jm
    do i = 1, im
        c(i,j) = a(i,j) * b(i,j)
    end do
end do
```
pode ser expresso como:

```
c = a * b
```

# Porque aprender Fortran?

+ A única linguagem paralela desenvolvida por um comitê normativo (ISO)
+ Bibliotecas maduras para ciência, engenharia e matemática
+ Ecosistema para programação "general-purpuse" em crescimento
+ Performance imbatível

# Vantagens e desvantagens

Muitas das características do Fortran são tanto uma vantagem quanto uma desvantagem, por exemplo:

+ É uma linguagem específica de domínio (DSL)
+ Linguagem nichada
+ Linguagem fortemente e estaticamente tipada

# Comparação com Python

![](figs/pythonxfortran.png)

# Comparação com Python

![](figs/pythonxfortran2.png)

# Comparação com Python

[Python x Octave x Fortran](https://www.youtube.com/watch?v=pJIxVS-wlHc)

# Fortran em paralelo, exemplo

![Padrões de programação em paralelo: dividir o problema, trocar dado, computar, gravar resultados no disco](figs/paralelo.png){height=8cm}


# Preparando ambiente de desenvolvimento

Para garantir que vamos trabalhar com a mesma versão dos programas, preparei um ambiente para a gente, siga os comandos abaixo
```shell
git clone https://github.com/AtilaSaraiva/Curso-fortran-2022
cd Curso-fortran-2022/codigos
sh prep.sh
```

# Hello world

Agora vamos escrever um código de hello world

## Abrindo arquivo
```
cd 1-helloworld
notepadqq oi.f90 &
```

## Código

```fortran
program hellou
    implicit none

    print*, "E ai galera"
end program hellou
```

## Compilar e executar

```
gfortran oi.f90 -o oi
./oi
```

# Estrutura básica de um programa

```fortran08
program main
    implicit none
    integer :: a

    a = increment(34)
    write (*,*) a

contains

    function increment(input) result (output)
        integer :: output
        integer :: input

        output = input + 1
    end function increment

end program main
```

# Comentário

```fortran
a = b ! Isso é um comentario

c = d ! Isso!! também é um comentário
```

# Variáveis

```fortran
real             :: numeroDecimal = 3.141592
integer          :: numeroInteiro = 3
character        :: caractere     = "a"
character(len=5) :: nome          = "atila"
logical          :: boleano       = .true.

print*, "Número real: ", numeroDecimal
print*, "Número inteiro: ", numeroInteiro
print*, "Caractere único: ", caractere
print*, "String: ", nome
print*, "Boleano: ", boleano
```

# Números complexos

```fortran
program numerosComplexos
    implicit none
    complex, parameter :: i = (0, 1)   ! sqrt(-1)
    complex :: x, y, z
    x = (7, 8)
    y = (5, -7)
    write(*,*) i * x * y
    z = x + y
    print *, "z = x + y = ", z
    z = x - y
    print *, "z = x - y = ", z
    z = x * y
    print *, "z = x * y = ", z
    z = x / y
    print *, "z = x / y = ", z
end program numerosComplexos
```

# Funções instrísecas

```fortran
x = sin(3.14159)
y = exp(0)
z = log(1)
w = acos(-1)
```

# I/O Básico

## Para ler variável do terminal

```fortran
read(*,*) variavel
```

## Para imprimir o valor de uma variável na tela

```fortran
print*, variavel
```

ou

```fortran
write(*,*) variavel
```

## Exercício

Escrever código que lê dois números reais do terminal e imprime o resultado da soma deles

# Loops

Dois tipos básicos

```fortran
print*, "do simples"
do i=1,3
    do j=1,3
        print*, i,j
    end do
end do

print*, "do while"
i=1
do while(i<=3)
    j = 1
    do while(j<=3)
        print*, i,j
        j = j + 1
    end do
    i = i + 1
end do
```

# Loops

## Do concurrent

```fortran
print*, "do concurrent"
do concurrent(i=1:3, j=1:3)
    print*, i,j
end do
```

## Exercício

Escreva o código dos últimos dois slides e veja o resultado

# Condicionais

```fortran
if (logical_expression1) then
   ! Block of code
else if (logical_expression2) then
   ! Block of code
else
   ! Block of code
end if
```

# Condicionais

![Operadores Relacionais](figs/relational-operators.png){height=7cm}

# Condicionais

## Para checar mais de uma expressão faça

```
if ((a .gt. b) .and. .not. (a .lt. c)) then
```

# Condicionais

```fortran
program xif
    implicit none
    real :: x
    real, parameter :: x1 = 0.3, x2 = 0.6

    call random_seed()
    call random_number(x)
    if (x < x1) then
        print *, x, "<",x1
    else if (x < x2) then
        print *, x, "<", x2
    else
        print *, x, ">=", x2
    end if
end program xif
```

# Case

Nós podemos representar o seguinte código

```fortran
if (month=="January" .or. month=="December") then
    num_days = 31
else if (month=="February") then
    num_days = 28
else if (month=="March") then
    num_days = 31
else
    num_days = 30
end if
```

# Case

De forma simplificada por

```fortran
select case (month)
    case ("January", "December")
        num_days = 31
    case ("February")
        num_days = 28
    case ("March")
        num_days = 31
    case default
        num_days = 30
end select
```

## Exercício

Escreva um programa que pegue um inteiro do terminal e para os casos 1 até 4 imprima "Isso é um", "Isso é dois"... para cada caso, e pro caso default imprima "Não está entre 1 e 4"

# Funções e Subrotinas

::: columns

:::: {.column width=60%}
```fortran
function sum(a, b)
    integer, intent(in) :: a, b
    integer             :: sum

    sum = a + b

end function sum

subroutine add(a, b)
    integer, intent(in out) :: a
    integer, intent(in)     :: b

    a = a + b
    print*, 'a = ',a
end subroutine add
```
::::


:::: {.column width=40%}
```
total = 2 * sum(3,5)

call add(a,3)
```
::::

:::

# O que devo usar

![Decidindo quando usar subrotina ao invés de subrotina](figs/funcao.pdf){height=8cm}

# Exercício

Abra o código da pasta 7-funcao e passe todas as operações destacadas para dentro de funções ou subrotinas de acordo

# Modules

```fortran
module biblioteca
    implicit none
contains
    pure integer function add (a,b)
        integer, intent(in):: a, b
    end function add
end module biblioteca

program main
    use biblioteca
    implicit none
    integer:: a=1, b=2

    print*, add(a,b)

end program main
```

# Exercício

Copie a pasta 7-funcao para 8-module e mude as funções e subrotinas escritas para dentro de um módulo.

# Array

## Como declarar um array 1D, 2D, ... ND?
```fortran
real :: array(2)     ! array 2
real :: array(2,2)   ! array 2x2
real :: array(2,2,2) ! array 2x2x2
```

## Como inserir um valor num array
```fortran
array(1,1) = 1
```

## Como inserir um valor para todos os items do array
```fortran
array = 1
```

## Como inicializar vários valores
```fortran
array = [ 1, 2, 3, 4 ]
```

# Array

## Como passar array para função

```fortran
subroutine foo (a, b, c, d, n)
    integer :: n
    real    :: a(n)    ! declaração explicita
    real    :: b(:)    ! forma assumida
    real    :: c(:,:)  ! forma assumida 2D
    real    :: d(..)   ! dimensão assumida

    ...
end subroutine foo
```

# Array

## Como descobrir as dimensões de um array

```fortran
tamanho = size(a)
```
ou
```fortran
integer :: m, n
real    :: array(:,:)

m = size(array, 1)
n = size(array, 2)
```

# Exercício

Vá na pasta 9-array e escreva o loop do dot product no espaço comentado

# Funções intrísecas para array

```
matmul()
dot_product()
transpose()
```

# Arrays alocáveis

```fortran
program foo
    implicit none
    real,allocatable :: a(:)

    allocate( a(10) )

    a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
end program foo
```

# Arrays alocáveis

```fortran
program foo
    implicit none
    real,allocatable :: a(:)

    a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
end program foo
```
