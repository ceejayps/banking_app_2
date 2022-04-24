import 'dart:ffi';

import 'package:banking_app_2/container/auth-state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'container/pages/pin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final bool auth = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: authState(),
    );
  }
}
