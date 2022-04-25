import 'package:flutter/material.dart';

class ongoing extends StatefulWidget {
  const ongoing({Key? key}) : super(key: key);

  @override
  State<ongoing> createState() => _ongoingState();
}

class _ongoingState extends State<ongoing> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 249, 250, 254),
              Color.fromARGB(255, 175, 190, 206),
              Color.fromARGB(255, 180, 201, 221)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 84, 81, 214),
                      )),
                  child: const Icon(Icons.nat)),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: CircleAvatar(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/chester.jpg'),
                    radius: 20,
                  ),
                  radius: 22,
                  backgroundColor: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
