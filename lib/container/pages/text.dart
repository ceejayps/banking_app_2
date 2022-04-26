import 'package:flutter/material.dart';

class bankingtest extends StatefulWidget {
  const bankingtest({Key? key}) : super(key: key);

  @override
  State<bankingtest> createState() => _bankingtestState();
}

class _bankingtestState extends State<bankingtest> {
  Color dark = Colors.white;
  Color light = Colors.black;
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
                  ))
            ],
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            radius: 26,
                            backgroundColor: Color.fromARGB(255, 255, 96, 96)),
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
                          ),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.black12,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.black12,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.46,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Quick Commands")
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
