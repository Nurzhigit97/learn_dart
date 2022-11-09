/* -------------------------------------------------------------------------- */
/*                              //! Списки / List                             */
/* -------------------------------------------------------------------------- */
void main(List<String> args) {
  List<String> games = ['gta5', 'gta6', 'gta7'];
  List<String>? movies;
  List<String?> lang = ['kg', 'kgz', 'Kotlin', null];

  // ! Проверка на null при обращении к индексу
  // print(movies?.first);
  // print(movies?[0]);
  // print(movies![0]); //error
//! Прсивоим если зн. посл. эл. null
  lang.last ??= 'TypeScript';
  print(games);
  print(movies);
  print(lang);

  /* -------------------------------------------------------------------------- */
  /*                              //! Словари /Map                              */
  /* -------------------------------------------------------------------------- */
  var character = <String, int>{
    'level': 80,
    'hp': 200,
    'mp': 300,
  };
  // var characte2 = <String?, int>{
  //   'level0': 80,
  //   'hp': 200,
  //   'mp': 300,
  // };
  // var characte3 = <String, int?>{
  //   'level0': 80,
  //   'hp': 200,
  //   'mp': 300,
  // };
  //? null Map(Object)
  Map<String, int>? characterNull;

  //! Присваиваем новый объект
  character['defense'] ??= 999;
  print(character);
  int? level = character['level'];
}
