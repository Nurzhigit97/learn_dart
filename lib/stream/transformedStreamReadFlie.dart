import 'dart:convert';
import 'dart:io' as io;

void main(List<String> args) {
  readFile();
}

void readFile() async {
  var content = io.File('bin/file.txt').openRead();
  var line = await transformedFileContent(
          content.transform(utf8.decoder).transform(LineSplitter()))
      .toList();
  print(line);
}

Stream transformedFileContent(Stream<String> stream) async* {
  await for (var line in stream) {
    yield '::> $line';
  }
}
