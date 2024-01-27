#include <iostream>

int main() {
    return 0;
}

extern "C" {
  // Wrapper for our JavaScript function
  extern void consoleLog(int sum);

  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }
}