import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/routes.dart';

class MyLogIn extends StatelessWidget {
  const MyLogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 195, 193, 193),
            title: const Text("LOG IN")),
        body: Center(
            child: Container(
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.75,
                    focal: Alignment(0.7, -0.5),
                    tileMode: TileMode.clamp,
                    stops: [
                      0.95,
                      1.0,
                      1.05,
                    ],
                    colors: [
                      Color.fromARGB(255, 244, 243, 243),
                      Colors.purple,
                      Colors.white,
                    ],
                  ),
                ),
                child: ListView(children: <Widget>[
                  Image.asset(
                    'assets/images/Logo.jpg',
                  ),
                  // Image.asset('assets/images/_ArtMe Galleries-1.jpg'),

                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Welcome Back!',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "UserName",
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    // ignore: prefer_const_constructors

                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //signup screen
                      Get.toNamed(Routes.PASSWORD);
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Colors.purple,
                              Colors.indigo,
                              Colors.cyan
                            ])),
                        child: ElevatedButton(
                          onPressed: () {
                            //signup screen
                            Get.toNamed(Routes.LIST);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: const Text(
                            'Log In',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Not Registered Yet?',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 180, 44, 204),
                              Colors.indigo,
                              Colors.cyan
                            ])),
                        child: ElevatedButton(
                          onPressed: () {
                            //signup screen
                            Get.toNamed(Routes.SIGNUP);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        )),
                  ),
                ]))));
  }
}
