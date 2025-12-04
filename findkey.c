#include "chiffrement.h"

int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("Usage : %s <fichier propre> <fichier chiffré>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    string plain_file = argv[1];
    string ciphered_file = argv[2];

    findkey(plain_file, ciphered_file);
    base64_cleanup();
}