import 'dart:ui';

import 'package:flutter/material.dart';

class ongoing extends StatefulWidget {
  const ongoing({Key? key}) : super(key: key);

  @override
  State<ongoing> createState() => _ongoingState();
}

class _ongoingState extends State<ongoing> {
  List days = ["Wed", 'Thur', 'Fri', 'Sat', 'Sun', 'Mon', 'Tue', 'Wed'];
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: Padding(
                padding:
                    const EdgeInsets.only(top: 7.5, bottom: 7.5, right: 15),
                child: Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 1.2,
                          color: Color.fromARGB(68, 23, 22, 83),
                        )),
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 30,
                      color: Color.fromARGB(255, 23, 22, 83),
                    )),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: const [
                CircleAvatar(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/chester.jpg'),
                    radius: 20,
                  ),
                  radius: 20,
                  backgroundColor: Colors.white,
                )
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Icon(Icons.arrow_back),
                        Text(
                          "  Mar",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 23, 22, 83),
                          ),
                        )
                      ],
                    )),
                    Spacer(),
                    Text(
                      "April",
                      style: TextStyle(
                          color: Color.fromARGB(255, 23, 22, 83),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Spacer(),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          "May  ",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 23, 22, 83),
                          ),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 125,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: days.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 70,
                          decoration: BoxDecoration(
                              color: index != 0
                                  ? Colors.white
                                  : Color.fromARGB(255, 68, 48, 179),
                              borderRadius: BorderRadius.circular(40)),
                          child: Column(children: [
                            Spacer(),
                            Text(
                              '${13 + index}',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: index == 0
                                      ? Colors.white
                                      : Color.fromARGB(255, 68, 48, 179),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              days[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: index == 0
                                      ? Colors.white
                                      : Color.fromARGB(255, 68, 48, 179),
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer()
                          ]),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Ongoing",
                  style: TextStyle(
                      color: Color.fromARGB(255, 23, 22, 83),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                //Spacer()
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 120),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
