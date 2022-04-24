import 'package:banking_app_2/container/auth-state.dart';
import 'package:flutter/material.dart';

class pin extends StatefulWidget {
  const pin({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<pin> createState() => _pin();
}

class _pin extends State<pin> {
  Color typed = Colors.white;
  Color empty = Colors.white38;
  bool isWrong = false;
  String userPin = "1234";
  List inputPin = [];

  @override
  Widget build(BuildContext context) {
    BoxDecoration dotborder = BoxDecoration(
      borderRadius: BorderRadius.circular(60),
      color: isWrong == true
          ? Color.fromARGB(255, 255, 0, 0)
          : inputPin.length >= 1
              ? Color.fromARGB(255, 255, 255, 255)
              : Color.fromARGB(0, 255, 254, 254),
    );

    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 106, 90, 217),
              Color.fromARGB(255, 68, 48, 179)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            leading: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            backgroundColor: Colors.transparent,
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
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.length >= 1
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(0, 255, 254, 254),
                                ))),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.length >= 2
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(0, 255, 254, 254),
                                ))),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.length >= 3
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(0, 255, 254, 254),
                                ))),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: isWrong == true
                                      ? Color.fromARGB(255, 255, 0, 0)
                                      : inputPin.length >= 4
                                          ? Color.fromARGB(255, 255, 255, 255)
                                          : Color.fromARGB(0, 255, 254, 254),
                                ))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.length == 0
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.length == 1
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.length == 2
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                width: 35,
                                height: 2,
                                color: isWrong == true
                                    ? Color.fromARGB(255, 255, 0, 0)
                                    : inputPin.length == 3
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(
                                            255, 208, 205, 205))),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("1");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length < 4) {
                                  inputPin.add("2");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length < 4) {
                                  inputPin.add("3");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length < 4) {
                                  inputPin.add("4");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length < 4) {
                                  inputPin.add("5");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length < 4) {
                                  inputPin.add("6");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                            onPressed: () {
                              setState(() {
                                if (inputPin.length < 4) {
                                  inputPin.add("7");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length < 4) {
                                  inputPin.add("8");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length < 4) {
                                  inputPin.add("9");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                                if (inputPin.length >= 1) {
                                  inputPin.removeLast();
                                  isWrong = false;
                                }
                              });

                              print(inputPin);
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
                                if (inputPin.length < 4) {
                                  inputPin.add("0");
                                }
                              });

                              print(inputPin);
                            },
                            child: const SizedBox(
                              child: Center(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
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
                            onPressed: inputPin.length == 4
                                ? () {
                                    if (userPin != inputPin.join()) {
                                      setState(() {
                                        isWrong = true;
                                      });
                                      print(["user pin ", userPin.split('')]);
                                      print(["input pin ", inputPin.join()]);
                                      print(isWrong);
                                    } else {
                                      setState(() {
                                        authState().state = 0;
                                      });
                                    }
                                  }
                                : null,
                            child: SizedBox(
                              child: Center(
                                  child: Icon(Icons.check,
                                      color: inputPin.length == 4
                                          ? Colors.white
                                          : Color.fromARGB(
                                              106, 255, 255, 255))),
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
        ));
  }
}
