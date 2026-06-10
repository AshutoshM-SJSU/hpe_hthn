#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void win(void) {
    printf("Arbitrary access achieved!\n");
}

static int invalid(void) {
    printf("invalid\n");
    return 255;
}

int main(int argc, char **argv) {
    (void)argc;
    (void)argv;

    return invalid();
}