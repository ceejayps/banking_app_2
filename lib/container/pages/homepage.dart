import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with TickerProviderStateMixin {
  int currentValue = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  late AnimationController _controller2;
  late Animation<double> _animation2;

  late AnimationController _controller3;
  late Animation<double> _animation3;

  late AnimationController _controller4;
  late Animation<double> _animation4;

  late AnimationController _controller5;
  late Animation<double> _animation5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });

    _controller2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation2 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller2,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });

    _controller3 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation3 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller3,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });

    _controller4 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation4 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller4,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });

    _controller5 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation5 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller5,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double tileWith = 165;
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 84, 81, 214),
              Color.fromARGB(255, 68, 48, 179)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
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
            leading: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            backgroundColor: Colors.transparent,
            title: const Text(''),
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                //controller: controller,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
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
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "6 Tasks are pending",
                            style:
                                TextStyle(color: Colors.white54, fontSize: 18),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 130,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 84, 81, 214),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile App Development",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Chester And Paula",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 16),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Monthly Review",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const CircleAvatar(
                            child: Icon(Icons.date_range_rounded),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: tileWith,
                                height: tileWith,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 84, 81, 214),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: tileWith,
                                height: 110,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 84, 81, 214),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: tileWith,
                                height: 110,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 84, 81, 214),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: tileWith,
                                height: tileWith,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 84, 81, 214),
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
              SizedBox(
                height: size.height,
                width: size.width,
                child: null,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: size.width * .14,
                  width: size.width,
                  margin: EdgeInsets.all(size.width * .04),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      const Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home,
                          color: currentValue == 0
                              ? const Color.fromARGB(255, 84, 81, 214)
                              : Colors.black38,
                          size: _animation.value,
                        ),
                        onPressed: () {
                          setState(() {
                            currentValue = 0;
                            _controller.forward();
                            _controller2.reverse();
                            _controller3.reverse();
                            _controller4.reverse();
                            _controller5.reverse();
                            HapticFeedback.lightImpact();
                          });
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.insert_drive_file_rounded,
                          color: currentValue == 1
                              ? const Color.fromARGB(255, 84, 81, 214)
                              : Colors.black38,
                          size: _animation2.value,
                        ),
                        onPressed: () {
                          setState(() {
                            currentValue = 1;
                            _controller2.forward();
                            _controller.reverse();
                            _controller3.reverse();
                            _controller4.reverse();
                            _controller5.reverse();
                            HapticFeedback.lightImpact();
                          });
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add_box_rounded,
                          color: currentValue == 2
                              ? const Color.fromARGB(255, 84, 81, 214)
                              : Colors.black38,
                          size: _animation3.value,
                        ),
                        onPressed: () {
                          setState(() {
                            currentValue = 2;
                            _controller3.forward();
                            _controller.reverse();
                            _controller2.reverse();
                            _controller4.reverse();
                            _controller5.reverse();
                            HapticFeedback.lightImpact();
                          });
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.person_rounded,
                          color: currentValue == 3
                              ? const Color.fromARGB(255, 84, 81, 214)
                              : Colors.black38,
                          size: _animation4.value,
                        ),
                        onPressed: () {
                          setState(() {
                            currentValue = 3;
                            _controller4.forward();
                            _controller.reverse();
                            _controller2.reverse();
                            _controller3.reverse();
                            _controller5.reverse();
                            HapticFeedback.lightImpact();
                          });
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: currentValue == 4
                              ? const Color.fromARGB(255, 84, 81, 214)
                              : Colors.black38,
                          size: _animation5.value,
                        ),
                        onPressed: () {
                          setState(() {
                            currentValue = 4;
                            _controller5.forward();
                            _controller.reverse();
                            _controller2.reverse();
                            _controller3.reverse();
                            _controller4.reverse();
                            HapticFeedback.lightImpact();
                          });
                        },
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
