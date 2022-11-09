void main(List<String> args) {
  final twicePlusFive = twice((x) => x + 5);
  final plus = twicePlusFive(10);

  print(plus);
}

typedef IntTransformer = int Function(int);

IntTransformer twice(IntTransformer f) {
  return (int x) {
    return f(f(x));
  };
}
