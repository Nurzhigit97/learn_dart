import 'dart:convert';

void main(List<String> args) {
  //------------------------allMatches Example---------------------------------
  // print('Example 1');

  // //!get all numbers
  // String str1 = 'Sara is 26 years old. Maria is 18 while Masood is 8.';

  // //Declaring a RegExp object with a pattern that matches sequences of digits
  // RegExp reg1 = new RegExp(r'(\d+)');
  // print(reg1);

  //--------------------------hasMatch Example---------------------------------
  // print('\nExample 2');

  // //We want to check whether a following strings have white space or not
  // String str3 = 'Achoo!';
  // String str4 = 'Bless you.';

  // //Declaring a RegExp object with a pattern that matches whitespaces
  // RegExp reg3 = new RegExp(r'(\s)');

  // //Using the hasMatch method to check strings for whitespaces
  // print(
  //     'The string "' + str3 + '" contains whitespaces: ${reg3.hasMatch(str3)}');
  // print(
  //     'The string "' + str4 + '" contains whitespaces: ${reg3.hasMatch(str4)}');

  // //--------------------------stringMatch Example-------------------------------
  // print('\nExample 3');

  // //We want to print the first non-digit sequence in the following strings;
  // String str5 = '121413dog299toy01food';
  // String str6 = '00Tom1231frog';

  // //Declaring a RegExp object with a pattern that matches sequence of non-digit
  // //characters
  // RegExp reg4 = new RegExp(r'(\D+)');

  // // Using the stringMatch method to find the first non-digit match:first word
  // var str5Match = reg4.stringMatch(str5);
  // var str6Match = reg4.stringMatch(str6);
  // print('First match for "' + str5 + '": $str5Match');
  // print('First match for "' + str6 + '": $str6Match');

//! with what place splace word or find
  // var string = 'Dash is a bird';
  // var regExp = RegExp(r'(humming)?bird');
  // var match = regExp.stringMatch(string); // Match
  // print(match); //! here find

  // regExp = RegExp(r'(humming)dog');
  // match = regExp.stringMatch(string); // No match
  // print(match); //! here dont find

  //! words who start with world(T)

  ///todo
  var line = '[00:10.84]Amazing Grace, How sweet the sound';
  var regex = RegExp(r'^\[([0-9]+):([0-9]+)\.([0-9]+)\](.*)$');
  var reg = regex.firstMatch(line);
  print(reg?.groupCount);
  print(reg?.group(0));
  print(reg?.group(1));
  print(reg?.group(2));
  print(reg?.group(3));
  print(reg?.group(4));
}
