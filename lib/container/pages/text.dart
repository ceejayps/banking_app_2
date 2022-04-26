import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class bankingtest extends StatefulWidget {
  const bankingtest({Key? key}) : super(key: key);

  @override
  State<bankingtest> createState() => _bankingtestState();
}

class _bankingtestState extends State<bankingtest> {
  Color dark = Color.fromARGB(255, 255, 255, 255);
  Color light = Color.fromARGB(255, 10, 18, 57);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 25,
                  child: Row(
                    children: [
                      Container(
                        color: light,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                      Container(
                        color: dark,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                    ],
                  )),
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Container(
                        color: light,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                      Container(
                        color: dark,
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2,
                      )
                    ],
                  ))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 25,
                  child: Container(
                    decoration: BoxDecoration(
                        color: dark,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(60))),
                  )),
              Expanded(
                  flex: 10,
                  child: Container(
                      decoration: BoxDecoration(
                          color: light,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(60))),
                      child: Scaffold(
                          backgroundColor: Color.fromARGB(0, 0, 0, 0),
                          body: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 40),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Withdrawals",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.account_balance),
                                        radius: 26,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Apr 29",
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "HBSC ATM",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.arrow_downward,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      "26 USD",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.account_balance),
                                        radius: 26,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Apr 23",
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Cashpoint",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.arrow_downward,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      "11 USD",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ]),
                          ))))
            ],
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Color.fromARGB(255, 255, 96, 96),
                            child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.import_export_rounded,
                                  color: Colors.white,
                                  size: 34,
                                )),
                          ),
                          Container(
                            color: Colors.black12,
                            width: 2,
                            height: 52,
                          ),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.black12,
                            child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.house_rounded,
                                  color: Colors.grey[350],
                                  size: 25,
                                )),
                          ),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.black12,
                            child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.credit_card_rounded,
                                  color: Colors.grey[350],
                                  size: 25,
                                )),
                          ),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.black12,
                            child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.person_rounded,
                                  color: Colors.grey[350],
                                  size: 25,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        "Quick Commands",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 32, 16, 213),
                                radius: 36,
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                  size: 34,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Show Pin",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 36,
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                  size: 34,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Lock Card",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                                radius: 36,
                                child: Icon(
                                  Icons.timelapse_rounded,
                                  color: Colors.white,
                                  size: 34,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Limit",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
