# SASM Template

## Description
    Template project for coding nasm program and building it with SASM features without using SASM
## Reasons
    SASM is IDE for writing, building programs in nasm. Besides that it also brings few things with it, like for example builtin library called "io.inc" (and "io64.inc" for x86_64 architectures). But I am neovim guy, I don't want to use IDE to write nasm. Unfortunately features that comes with SASM, are highly used within lectures in my university to abstract away dome features of nasm and I'm now forced to use SASM on these lectures... Or do I?)  
    Fortunately I found a way to use SASM's syntax features outside SASM, and this template provides easy way to compile your small nasm program and understand building process without repeating my path
## Requirements
        make
        gcc (also tested with cc and clang)
        nasm

## Code, Build and Run
    This template has main file called "main.asm"  
    To build project adjust settings in Makefile
    (CC, ARCH_SIZE, OUTPUT_TYPE)
    and then simply do
    ```sh
        make build
    ```  
    You can also run at the same time with 
    ```sh
        make run
    ```
