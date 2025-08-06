// In Dart Lists are equivalent to arrays so they are iterable

// declaring a growable list
List contacts = ['Linda', 'John', 'Vad'];
List fruits = [
  'pineapples',
  'apples',
  'bananas',
  'grapes',
  'lemons',
  'oranges',
  'mangoes',
];

// Declaring List fixed length
// List listOfFilters = List(245);
main() {
  // to Iterate through each we use a for each
  contacts.forEach((contact) {
    print("contact: $contact");
  });
  // trying to add another fruit to the fruits list
  String green = 'pears';
  fruits.add(green);
  print(fruits);

  // iterating using for - in loop
  for (String fruit in fruits) {
    print('fruit: ${fruit}');
  }
}
