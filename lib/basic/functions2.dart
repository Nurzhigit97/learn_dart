//! значения внутри void function не достуен снаружи блока
void functions(List<String> arguments) {
  String returnStrNested() {
    return 'inMain';
  }

  print(returnStrNested());
  print(returnInOutside());
}

String returnInOutside() => 'inOutSide';

//! our parameters

void postionalParams(int x, double y, String greeting) {
  postionalParams(30, 33.3, 'greeting');
}

//! here we cant write thirteens parameter
void postionalParams2(int x, double y, [String? greeting = 'hi']) {
  postionalParams(30, 33.3, 'there');
  postionalParams2(30, 33.3);
}

//! named parameters
void namedOptionalParams({int? x, double? y, String greeting = 'hi'}) {
  namedOptionalParams(
    x: 12,
    y: 12,
  );
  print(greeting);
}

//! named Requeared Parameters
void namedRequaredParams(int positiona,
    {int? x, double? y, String greeting = 'default'}) {
  namedRequaredParams(10, //POsitional
      x: 12,
      y: 12,
      greeting: 'Hello');

  namedRequaredParams(10, //POsitional
      x: 12,
      greeting: 'Hello');
  print(greeting);
}
