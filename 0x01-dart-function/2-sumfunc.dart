int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  var message = 'Add $a + $b = ${add(a, b)}\nSub $a - $b = ${sub(a, b)}';
  return message;
}
