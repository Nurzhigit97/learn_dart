void main(List<String> args) {
  // final list1 = ['Hello', 'World'];
  // final list2 = ['what', 'up'];
  // final spread = <String>[...list1, ...list2];
  // print(spread);

  final Map<String, dynamic> obj1 = {'Hello': 'Hello1', 'World': 'world1'};
  final Map<String, dynamic> obj2 = {'what': 'what1', 'up': 'up'};
  final Map<String, dynamic> spreadObj = <String, dynamic>{...obj1, ...obj2};
  print(spreadObj.entries.first);
}
