import 'package:flutter/material.dart';

class bankingtest extends StatefulWidget {
  const bankingtest({Key? key}) : super(key: key);

  @override
  State<bankingtest> createState() => _bankingtestState();
}

class _bankingtestState extends State<bankingtest> {
  Color dark = Colors.black;
  Color light = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: light,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
          )
        ],
      ),
    );
  }
}
