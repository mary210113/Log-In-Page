// ignore_for_file: constant_identifier_names

import 'package:arts/View/login.dart';
import 'package:arts/View/password.dart';
import 'package:arts/View/signup.dart';
import 'package:arts/main.dart';
import 'package:get/get.dart';

class Routes {
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const PASSWORD = '/password';
  static const LIST = '/galleries';
  static const SPLASH = '/splash';

  static final routes = [
    GetPage(name: LOGIN, page: () => const MyLogIn()),
    GetPage(name: SIGNUP, page: () => MySignUp()),
    GetPage(name: PASSWORD, page: () => const RecoverPassword()),
    GetPage(name: LIST, page: () => const MyAPI()),
  ];
}
