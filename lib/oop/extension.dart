void main(List<String> args) {
  final a = 5;
  final b = '5';

  a.toDouble();
  b.toDouble();
  final c = b.toDouble();
  print(c);
}

//! создали расширения для строки который имеет double
extension StringToDouble on String {
  double? toDouble() {
    return double.tryParse(this);
  }
}
