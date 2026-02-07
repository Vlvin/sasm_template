include config.mk

ASMC=nasm
BIN_DIR=build
BIN=main
NASM_FLAGS=-f$(OUTPUT_TYPE) -I./include
CFLAGS=-m$(ARCH_SIZE) -no-pie
LIB=NASM
SRC=main.asm


build_o: $(LIB) $(SRC)
	mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -xc $(LIB)/macro.c -c -g -o $(BIN_DIR)/macro.o
	$(ASMC) $(NASM_FLAGS) $(SRC) -o $(BIN_DIR)/main.o

build: build_o
	$(CC) $(CFLAGS) $(BIN_DIR)/main.o $(BIN_DIR)/macro.o -o $(BIN_DIR)/main

run: build
	$(BIN_DIR)/main
