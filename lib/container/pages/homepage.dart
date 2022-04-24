import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 106, 90, 217),
              Color.fromARGB(255, 68, 48, 179)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            leading: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            backgroundColor: Colors.transparent,
            title: const Text(''),
          ),
          body: SingleChildScrollView(
            //controller: controller,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi Chester",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "6 Tasks are pending",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 84, 81, 214),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Monthly Review",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Container(
                        child: Icon(Icons.calendar_month_sharp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 84, 81, 214),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 160,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 84, 81, 214),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 160,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 84, 81, 214),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 84, 81, 214),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
