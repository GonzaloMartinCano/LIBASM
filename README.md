# LIBASM

Para compilar:

    make test

Ejecutamos:

    ./test


Tenemos 3 test (tests.c, testshard.c, testshard2.c). Solo tenemos que cambiar el Makefile y poner cual queremos utilizar.


El Makefile ya viene preparado para utilizar en la compilación:

   nasm -f macho64
   ar rcs
