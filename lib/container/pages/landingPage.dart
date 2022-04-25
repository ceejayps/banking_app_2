import 'package:flutter/material.dart';

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromARGB(255, 84, 81, 214),
            Color.fromARGB(255, 68, 48, 179)
          ])),
      child: Stack(children: []),
    );
  }
}
