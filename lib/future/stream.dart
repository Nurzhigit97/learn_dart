Future<void> main(List<String> args) async {
//   final myPeriodicStream = Stream.periodic(const Duration(seconds: 1));
//   final subscription = myPeriodicStream.listen((event) {
//     print('A second has passed');
//   });
// //!Stop timer after 3 seconds
//   await Future.delayed(const Duration(seconds: 3));
//   subscription.cancel();

//!generator Stream call
  // createMessageStream().listen((event) {
  //   print(event);
  // });
  //! with map
  // createMessageStream().map((msg) => msg.toUpperCase()).listen((event) {
  //   print(event);
  // });
  //! with where
  createMessageStream().where((msg) => msg.length > 7).listen((event) {
    print(event);
  });
}

//!generator Stream
//? генератор будет соблюдать свою очередь
Stream<String> createMessageStream() async* {
  yield 'Hello';
  await Future.delayed(const Duration(seconds: 1));
  yield 'Have been a perfect day...';
  await Future.delayed(const Duration(seconds: 1));
  yield 'Flutter???';
}
