import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './Controller/routes.dart';
import 'Controller/mylist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Scaffold(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LOGIN,
      getPages: Routes.routes,
    );
  }
}

class MyAPI extends StatelessWidget {
  const MyAPI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 195, 193, 193),
            title: const Text("GALLERIES")),
        body: const MyListView(),
      )),
    );
  }
}
