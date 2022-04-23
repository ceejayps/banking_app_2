import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color typed = Colors.white;
  Color empty = Colors.white38;
  List pin = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 76, 97, 190),
      appBar: AppBar(
        elevation: 0,
        leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: const Color.fromARGB(255, 76, 97, 190),
        title: const Text(''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Enter the PIN",
                  style: TextStyle(
                      color: Color.fromARGB(255, 208, 205, 205),
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 2,
                          color: pin.length >= 1
                              ? const Color.fromARGB(255, 208, 205, 205)
                              : const Color.fromARGB(255, 255, 254, 254),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 2,
                          color: pin.length >= 2
                              ? const Color.fromARGB(255, 208, 205, 205)
                              : const Color.fromARGB(255, 255, 254, 254),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 2,
                          color: pin.length >= 3
                              ? const Color.fromARGB(255, 208, 205, 205)
                              : const Color.fromARGB(255, 255, 254, 254),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 2,
                          color: pin.length >= 4
                              ? const Color.fromARGB(255, 208, 205, 205)
                              : const Color.fromARGB(255, 255, 254, 254),
                        )),
                  ],
                ),
                const SizedBox(
                  width: 10,
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        ))
                  ],
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "4",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "5",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "6",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "7",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "8",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (pin.length < 4) {
                              pin.add("9");
                            }
                          });

                          print(pin);
                        },
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "9",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        ))
                  ],
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (pin.length >= 1) {
                              pin.removeLast();
                            }
                          });

                          print(pin);
                        },
                        child: const SizedBox(
                          child: Center(
                              child: Icon(
                            Icons.backspace,
                            color: Colors.white,
                          )),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (pin.length < 4) {
                              pin.add("0");
                            }
                          });

                          print(pin);
                        },
                        child: const SizedBox(
                          child: Center(
                            child: Text(
                              "0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          height: 40,
                          width: 20,
                        )),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const SizedBox(
                          child: Center(
                              child: Icon(
                            Icons.check,
                            color: Colors.white,
                          )),
                          height: 40,
                          width: 20,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: null,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
