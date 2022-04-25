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
        child: Scaffold(
            //appBar: AppBar(),
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image(image: AssetImage("assets/images/u.png")),
                  ),
                  Text(
                    "Manage your \n daily tasks",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )));
  }
}
