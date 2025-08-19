// asynchronous programming allows us to execute non-blocking operations
// this ensures the program does not freeze or wait while a long task is running

// Simulating a network request or a long running operation
Future<String> fetchUserData() async {
  // simulate a delay
  await Future.delayed(Duration(seconds: 2));
  // Returnn user data after delay
  return 'User data retrieved successfully';
}

// main function marked as async to use await inside it
Future<void> main() async {
  print('Fetching user data...');

  // call fetchUserData() and wait for its completion
  String result = await fetchUserData();

  // print fetch user data once fetchUserData() completes
  print(result);
}
