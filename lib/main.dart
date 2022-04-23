import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 76, 97, 190),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Color.fromARGB(255, 76, 97, 190),
        title: Text(''),
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
                Text(
                  "Enter the PIN",
                  style: TextStyle(
                      color: Color.fromARGB(255, 208, 205, 205),
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(),
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
                              ? Color.fromARGB(255, 208, 205, 205)
                              : Color.fromARGB(255, 255, 254, 254),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 2,
                          color: pin.length >= 2
                              ? Color.fromARGB(255, 208, 205, 205)
                              : Color.fromARGB(255, 255, 254, 254),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 2,
                          color: pin.length >= 3
                              ? Color.fromARGB(255, 208, 205, 205)
                              : Color.fromARGB(255, 255, 254, 254),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 35,
                          height: 2,
                          color: pin.length >= 4
                              ? Color.fromARGB(255, 208, 205, 205)
                              : Color.fromARGB(255, 255, 254, 254),
                        )),
                  ],
                ),
                Container(),
                SizedBox(
                  width: 10,
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
                        child: SizedBox(
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
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
                    SizedBox(
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
                        child: SizedBox(
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
                SizedBox(
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
                        child: SizedBox(
                          child: Center(
                              child: Icon(
                            Icons.backspace,
                            color: Colors.white,
                          )),
                          height: 40,
                          width: 20,
                        )),
                    SizedBox(
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
                        child: SizedBox(
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
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: SizedBox(
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
