// ignore_for_file: constant_identifier_names

import 'package:arts/screens/home.dart';
import 'package:arts/screens/loadingpage.dart';
import 'package:arts/screens/login.dart';

import 'package:arts/screens/password.dart';

import 'package:arts/screens/signup.dart';
import 'package:arts/main.dart';
import 'package:arts/screens/splash.dart';
import 'package:get/get.dart';

class Routes {
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const PASSWORD = '/password';
  static const LIST = '/galleries';
  static const SPLASH = '/splash';
  static const LOAD = '/loadingpage';
  static const PAGES = '/pages';
  static const HOME = '/home';

  static final routes = [
    GetPage(name: LOGIN, page: () => MyLogIn()),
    GetPage(name: SIGNUP, page: () => MySignUp()),
    GetPage(name: PASSWORD, page: () => const RecoverPassword()),
    GetPage(name: LIST, page: () => const MyAPI()),
    GetPage(name: SPLASH, page: () => SplashScreen()),
    GetPage(name: LOAD, page: () => LoadingPage()),
    GetPage(name: HOME, page: () => const myhomepage()),
  ];
}
