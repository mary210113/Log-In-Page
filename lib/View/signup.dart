// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/routes.dart';

class MySignUp extends StatelessWidget {
  bool value1 = false;

  MySignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 195, 193, 193),
            title: const Text("SIGN UP")),
        body: Center(
            child: Container(
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.75,
                    focal: Alignment(0.7, -0.5),
                    tileMode: TileMode.clamp,
                    stops: [
                      0.85,
                      0.9,
                      0.95,
                    ],
                    colors: [
                      Color.fromARGB(255, 244, 243, 243),
                      Colors.purple,
                      Colors.white,
                    ],
                  ),
                ),
                child: SafeArea(
                  child: ListView(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/Logo.jpg',
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                            labelText: 'Email',
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
                            labelText: 'Enter Password',
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
                            labelText: 'Confirm Password',
                          ),
                        ),
                      ),
                      StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return Center(
                          child: Row(
                            children: [
                              Checkbox(
                                value: value1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    value1 = value!;
                                  });
                                },
                              ),
                              const Text(
                                "I Agree with the",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Terms & Conditions.',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.pink),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
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
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text('Have account Already?'),
                        ],
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
                                  Color.fromARGB(255, 180, 44, 204),
                                  Colors.indigo,
                                  Colors.cyan
                                ])),
                            child: ElevatedButton(
                              onPressed: () {
                                //signup screen
                                Get.toNamed(Routes.LOGIN);
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent),
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            )),
                      ),
                    ],
                  ),
                ))));
  }

  void setState(Null Function() param0) {}
}
