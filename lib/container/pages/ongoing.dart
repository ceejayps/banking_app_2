import 'dart:ui';

import 'package:flutter/material.dart';

class ongoing extends StatefulWidget {
  const ongoing({Key? key}) : super(key: key);

  @override
  State<ongoing> createState() => _ongoingState();
}

class _ongoingState extends State<ongoing> {
  List days = ["Wed", 'Thur', 'Fri', 'Sat', 'Sun', 'Mon', 'Tue', 'Wed'];
  List time = [
    "9 AM",
    "10 AM",
    "11 AM",
    "12 PM",
    "1 PM",
    "2 PM",
    "3 PM",
    "4 PM",
  ];
  List title = [
    "Mobile App Development",
    "Web Development",
    "Web Development",
    "UI/UX Over Look",
    "Mobile App Development",
    "Web Development",
    "Web Development",
    "UI/UX Over Look",
    "Mobile App Development",
    "Web Development",
    "Web Development",
    "UI/UX Over Look",
  ];

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
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return index != 1
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 115,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      child: Column(
                                        children: [
                                          Text(time[index + 0]),
                                          Spacer(),
                                          Text(time[index + 1])
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 115,
                                      width: MediaQuery.of(context).size.width *
                                          0.74,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              title[index],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              "Chester and Paula",
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 16),
                                              textAlign: TextAlign.left,
                                            ),
                                            const Spacer(),
                                            Row(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Container(
                                                      width: 60,
                                                    ),
                                                    const CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      radius: 14,
                                                      child: CircleAvatar(
                                                        radius: 13,
                                                        backgroundImage: AssetImage(
                                                            'assets/images/chester.jpg'),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                        left: 25,
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          radius: 14,
                                                          child: CircleAvatar(
                                                            radius: 13,
                                                            backgroundImage:
                                                                AssetImage(
                                                                    'assets/images/paula.jpg'),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                                const Spacer(),
                                                Text(
                                                  time[index] +
                                                      "-" +
                                                      time[index + 1],
                                                  style: TextStyle(
                                                      color: Colors.white54),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 84, 81, 214),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    )
                                  ],
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 115 / 2.5,
                                child: Row(
                                  children: [
                                    Text(time[index]),
                                    Spacer(),
                                    Stack(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 9,
                                          child: CircleAvatar(
                                            radius: 4.5,
                                            backgroundColor: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Container(
                                        height: 1.3,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.68,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                              ),
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
