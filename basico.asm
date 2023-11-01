; Aula 01 - Introdução
; hello.asm
; Meu primeiro assembly!
; montar: nasm -f elf64 hello.asm 
; lingar: ld hello.o -o hello.x
; sugestão: nasm -f elf64 nome.asm && ld nome.o -o nome.x

section .data
   strOla :  db "Eric Klaus", 10 ; 10 = quebra de linha
   strOlaL:  equ $ - strOla ; strOlaL = strOlaLength

section .text
	global _start 

_start:
   mov rax, 1 ; chamada do sistema para escrita
   mov rdi, 1 ; colocando em modo para printar
   lea rsi, [strOla]
   mov edx, strOlaL
   syscall

   mov rax, 60 ; chamada do sistema para encerrar o programa
   mov rdi, 0 ; ID de encerramento do programa (0 = sucesso)
   syscall
