import 'package:flutter/material.dart';
import 'package:first_animation/logo/simple_logo.dart';

void main() => runApp(FirstAnimation());

class FirstAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Animation',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          alignment: Alignment.center,
          child: Logo(),
        ),
      ),
    );
  }
}
