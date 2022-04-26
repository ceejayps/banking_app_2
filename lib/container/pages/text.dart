import 'package:flutter/material.dart';

class bankingtest extends StatefulWidget {
  const bankingtest({Key? key}) : super(key: key);

  @override
  State<bankingtest> createState() => _bankingtestState();
}

class _bankingtestState extends State<bankingtest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
