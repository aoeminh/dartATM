import 'dart:io';

import 'ATMModel.dart';
import 'atmMachine.dart';

const USERNAME = "admin";
const PASSWORD = "123456";
main(List<String> args) {
  login();
}

login() {
  stdout.write("Insert username: ");
  var username = stdin.readLineSync();
  stdout.write("Insert password: ");
  var pwd = stdin.readLineSync();
  if (!(username.endsWith(USERNAME))) {
    stdout.write("Username invalid!\n");
    stdout.write("Do you want try again? Y/N\n ");
   var conditon =stdin.readLineSync();
    showExitOrRelogin(conditon);

  } else if (!(pwd.endsWith(PASSWORD))) {
    stdout.write("Password invalid!\n");
    stdout.write("Do you want try again? Y/N\n ");
    var conditon =stdin.readLineSync();
    showExitOrRelogin(conditon);

  } else {
    stdout.write("Login success!");
  }
}

 showExitOrRelogin(String condition) {
    if (condition == "Y") {
      login();
    } else if (condition == "N") {
      exit(0);
    } else {
      stdout.write("Please insert correct!");
      var conditionTry = stdin.readLineSync();
      showExitOrRelogin(conditionTry);
    }
  }
