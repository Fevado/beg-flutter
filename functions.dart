// fuction pass value
void orderEspresso(int howManyCups) {
  print('Cups: ${howManyCups}');
}

void ageOfMan(int age) {
  print('You are ${age} years old');
}

// function pass value and return value
bool orderCapucino(int howMany) {
  print('Cups: $howMany');
  return true;
}

// For the function below the type is very important 
// If the function begins with void then the return type will not work for this fuction 
// The types that I have experimented with and work are String, int, double
int multiplyTwoDigits(int val1, int val2) {
  int value = val1 * val2;
  return value;
}

// function pass optional value nd return value
// optional value is enclosed in square brackets
bool orderEspressol([howManyy]) {
  print('Cups #: ${howManyy}');
  bool ordered = false;
  if (howManyy != null) {
    ordered = true;
  }
  return ordered;
}

// function with no parameter, no return type
void printName() {
  print('Vad is a mobile Developer');
}

// function with parameter and no return type
void printJina(String name) {
  print('My name is $name');
}

// function with no parameter but has a return type
String devName() {
  return 'Vad';
}

// fuction with parameter and return type
int add(int val1, int val2) {
  return val1 + val2;
}

void main() {
  orderEspresso(7);
  ageOfMan(89);
  bool isOrderDone = orderCapucino(19);
  print('Order done: $isOrderDone');

  bool isOrderDone1 = orderEspressol();
  print('Order Done: $isOrderDone1');

  printName();
  printJina('Vad');
  String name = devName();
  print('The mobile developers name is $name');
  int result = add(4, 3);
  print('The sum of 4 and 3 is: $result');
}
