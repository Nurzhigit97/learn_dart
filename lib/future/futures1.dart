//! Stream может давать одну данную
void main(List<String> args) {
  userFuture();
}

//!Наша программа будет продолжить загрузку своих данных и не будет ждат данных из сервера в async await будеть ждат данные из сервера потом будеть продолаться остальной код
void userFuture() {
  print('before Future');
  //! add new property vith value
  fetchUser(5)
      .then((value) {
        value['proccessed'] = 'true';
        return value;
      })
      .then((value) => print(value))
      //! Show error if we have
      .catchError((onError) {
        print(onError);
      });
  //! add new property vith value
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
