enum AccaountType { free, premium, vip }

void main(List<String> args) {
  const userAccauntType = AccaountType.vip;
  // print(userAccauntType.index);
  // AccaountType.values[1];

  switch (userAccauntType) {
    case AccaountType.free:
      print('0 USD');
      break;
    case AccaountType.premium:
      print('20 USD');
      break;
    case AccaountType.vip:
      print('40 USD');
      break;
    default:
      print('Error user');
      break;
  }
}
