Future<String> fetchUser() async {
  await Future.delayed(Duration(seconds: 2));

  return 'User fetched';
}

Future<String> fetchOrders() async {
  await Future.delayed(Duration(seconds: 5));

  return 'Orders fetched';
}

Future<void> main() async {
  print('Fetching info');

  String user = await fetchUser();
  print(user);
  String order = await fetchOrders();
  print(order);
}
