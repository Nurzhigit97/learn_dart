//! for work with files
import 'dart:convert';
import 'dart:io' as io;

void main(List<String> args) {
  readFile();
}

void readFile() async {
//! Stream
  // var content = io.File('bin/file.txt').openRead();
  // var stream = content.transform(utf8.decoder).transform(LineSplitter());

  // await for (var line in stream) {
  //   print(line);
  // }
//! Future
  var content = io.File('bin/file.txt').openRead();
  var lines =
      await content.transform(utf8.decoder).transform(LineSplitter()).toList();
  print(lines.where((element) => element.length > 5));
}
