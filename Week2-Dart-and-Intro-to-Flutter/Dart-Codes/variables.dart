import 'dart:core';   // No need to import this package as it is auto imported in every dart program.
import 'dart:io';

main(){

  //Strings
  var greeting = "Greetings";
  String audience = "Folks";

  print(greeting + ' '+ audience + '\n');

  // int, double
  int code = 404;
  var code1 = code;
  double number = 123.456;

  print("Code: $code1" +'\n'+'Number: $number'+ '\n');

  // bool

  bool status1 = true;
  var status2 = false;
  print("Status1: $status1"+'\n'+'Status2: $status2'+ '\n');

  // dynamic
  dynamic str1 = "Hello World";
  print('Dynamic String: $str1');

  str1 = "Welcome to Dart";
  print('Dynamic String: $str1'+ '\n');

  str1 = null;
  print(str1);

  // Input Output
  stdout.writeln('Enter your name');
  String? name = stdin.readLineSync();
  print("Welcome $name"+ '\n');


  //Strings
  var s1 = "Hello World1";
  var s2 = "Hello World2";
  var s3 = "It's fun time";
  var s4 = 'It\'s fun time too';

  print(s1 +'\n'+s2+'\n'+s3+'\n'+s4+'\n');

  // RAW string
  var s = r'Raw string does not give special treatment to \n ';
  print(s);


  // Type conversion

}