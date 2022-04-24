import 'package:banking_app_2/container/pages/pin.dart';
import 'package:flutter/material.dart';

class authState extends StatefulWidget {
  authState({Key? key}) : super(key: key);
  int state = 0;
  @override
  State<authState> createState() => _authStateState();
}

class _authStateState extends State<authState> {
  @override
  Widget build(BuildContext context) {
    return widget.state == 0 ? pin(title: "title") : Container();
  }
}
