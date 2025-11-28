cipher: cipher_main.o chiffrement.o
	gcc cipher_main.o chiffrement.o -o cipher

decipher: decipher_main.o chiffrement.o
	gcc decipher_main.o chiffrement.o -o decipher

findkey: findkey_main.o chiffrement.o
	gcc findkey_main.o chiffrement.o -o findkey

cipher_main.o: cipher_main.c chiffrement.h
	gcc -c cipher_main.c

decipher_main.o: decipher_main.c chiffrement.h
	gcc -c decipher_main.c

findkey_main.o: findkey_main.c chiffrement.h
	gcc -c findkey_main.c

chiffrement.o: chiffrement.c chiffrement.h
	gcc -c chiffrement.c

all: cipher decipher findkey

clean:
	rm -f *.o cipher decipher findkey
