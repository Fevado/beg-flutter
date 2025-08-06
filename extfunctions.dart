// fuction with no parameter no return type
void printName() {
  print('Her name is Auntyyy');
}

// function with parameter and no retun type
void printJina(String name) {
  print('Vads besties name is $name');
}

// function with no parameter and has a return type
String bestie() {
  return 'Auntyyy';
}

// function with parameter and has return type
int compute(int a, int b) {
  return (a * b) + (a + b);
}

void main() {
  printName();
  printJina('Auntyyy');
  String name = bestie();
  print('$name is Vads best friend');
  int result = compute(4, 3);
  print('The product of 3 and 4 when added to the sum of 3 and 4 is: $result');
}


// in conclusion vad has understood the fuctions in dart and how they appear differently 
// moving on functions should be an easyy sail through for him with continued practice.