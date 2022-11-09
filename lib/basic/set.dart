void main(List<String> args) {
  //! Множество - Set // уд. похожие эл.
  var gamer = {'Witcher 3', 'Gwint', 'DMC', 'FF', 'LostArk'};
  // var names = <String>{};
  // Set<String> names = {};
  // var names = {}; Не множество! Это будет словарь
  gamer.add('Test');
  gamer.addAll({'elements', 'Gothic2', 'Gothic2'});
  print(gamer);
//!
  final constGamer = const {'elements', 'Gothic2'};
  // constGamer.add('Test'); //!Error
  print(constGamer);
}
