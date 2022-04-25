import 'package:flutter/material.dart';

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
      child: Stack(children: [Column()]),
    );
  }
}
