import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecoverPassword extends StatelessWidget {
  const RecoverPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 195, 193, 193),
            title: const Text("RECOVER PASWORD")),
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
              child: SafeArea(
                child: ListView(children: <Widget>[
                  Container(
                    // ignore: prefer_const_constructors

                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecoverPassword()),
                      );
                    },
                    child: const Text(
                      'Resend code',
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
                              Color.fromARGB(255, 180, 44, 204),
                              Colors.indigo,
                              Colors.cyan
                            ])),
                        child: ElevatedButton(
                          onPressed: () {
                            //signup screen
                            Get.back();
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
                ]),
              )),
        ));
  }
}
