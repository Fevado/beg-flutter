Future<String> fetchPosts() async {
  await Future.delayed(Duration(seconds: 3));

  return 'Posts fetched';
}

Future<String> fetchComments() async {
  await Future.delayed(Duration(seconds: 2));

  return 'Comments fetched';
}

Future<void> main() async {
  print('Retrieving content');

  var result = await Future.wait([fetchPosts(),fetchComments()]);
  print(result);
}


