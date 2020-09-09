import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 3,
      child: Container(
          padding: EdgeInsets.all(10.0),
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
          child: Icon(
            Icons.person,
            size: 200.0,
          )),
    );
  }
}
