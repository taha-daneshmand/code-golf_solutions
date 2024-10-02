// © Taha Daneshmand - github.com/taha-daneshmand/code-golf_solutions

#include <stdio.h>

int main() {
    int n, m, r;

    for (n = 1; n < 1001; n++) {
        r = 0;
        m = n;
        
        while (m > 1) {
            r++;
            m = (m % 2) ? (m * 3 + 1) : (m / 2);
        }

        printf("%d\n", r);
    }

    return 0;
}
