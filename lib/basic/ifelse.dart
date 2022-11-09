void main(List<String> args) {
  int age = 19;

  if (age > 18) {
    print('Welcome');
  } else {
    print('Close');
  }
}

dynamic statement() {
  final isEqual = 5;

  if (isEqual == 10) {
    print('$isEqual');
  } else if (isEqual > 20 || isEqual < 20) {
    print(isEqual > 20 ? 'less' : 'more');
  } else {
    print('$isEqual error');
  }

  switch (isEqual) {
    case 20:
      print('its $isEqual');
      break;
    case 10:
      print('its $isEqual');
      break;
    case 5:
      print('its $isEqual');
      break;
    default:
      print('Oh err in Switch');
  }
  print('if $isEqual');
}
