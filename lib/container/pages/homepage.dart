import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
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
              // leading: const IconButton(
              //     onPressed: null,
              //     icon: Icon(
              //       Icons.arrow_back,
              //       color: Colors.white,
              //     )),
              backgroundColor: Colors.transparent,
              title: const Text(''),
            ),
            body: Center()));
  }
}
