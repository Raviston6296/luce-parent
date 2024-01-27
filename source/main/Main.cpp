#include <iostream>

int main() {
  printf("Hello world");
  return 0;
}

extern "C" {
  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }
}