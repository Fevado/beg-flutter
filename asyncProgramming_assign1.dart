Future<String> fetchWeather() async {
  await Future.delayed(Duration(seconds: 2));

  return 'Sunny, 25°C';
}

Future<void> main() async {
  print('Fetching weather');

  String result = await fetchWeather();

  print(result);
}
