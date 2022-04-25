import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 249, 250, 254),
              Color.fromARGB(255, 180, 201, 221)
            ])),
        child: Scaffold(
            appBar: AppBar(),
            backgroundColor: Colors.black,
            body: Column(
              children: [
                SliderButton(
                  action: () {
                    ///Do something here
                  },
                  label: Text(
                    'Slide to cancel Event',
                    style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: Text(
                    'x',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 40,
                    ),
                  ),
                  buttonColor: Colors.black,
                ),
              ],
            )));
  }
}
