  
CC=gcc
CFLAGS=-I.

# include ../block.c

dynamic: dynamic_block.o program.o block.o
     $(CC) -o dynamic_block.o program.o block.o
static: static_block.o program.o block.o
     $(CC) -o static_block.o program.o block.o