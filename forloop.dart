List listOfFilters = ['company', 'city', 'state'];
List numbers = [10, 20, 30, 40, 50];
main() {
  print('filters length ${listOfFilters.length}');
  print('numbers length:  ${numbers.length}');
  // Standard for loop
  for (int i = 0; i < listOfFilters.length; i++) {
    print('listOfFilters: ${listOfFilters[i]}');
  }

  for (int number in numbers) {
    print('number: ${number}');
  }

  for (String filter in listOfFilters) {
    print('filter: ${filter}');
  }
}
