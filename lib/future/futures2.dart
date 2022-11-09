void main(List<String> args) {
  userFuture2();
}

void userFuture2() async {
  print('before Future');
  try {
    var result = await fetchUser(5);
    print(result);
  } catch (e) {
    print(e);
  }
  print('after Future');
}

Future<Map<String, String>> fetchUser(int userId) {
  //! call data user aflter 2 second
  return Future.delayed(
    Duration(seconds: 2),
    () => {'id': userId.toString(), 'name': 'Nur'},
  );
//! show our(own) error
  // return Future.delayed(
  //     Duration(seconds: 2), () => throw Exception('Exception in Future'));
}
