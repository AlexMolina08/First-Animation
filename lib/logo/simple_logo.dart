import 'package:flutter/material.dart';
import 'dart:math';

class Logo extends StatefulWidget {

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin{
  AnimationController animCtrl;
  Animation anim ;

  @override
  void initState() {
    super.initState();
    animCtrl = AnimationController(
      duration: Duration(seconds: 5), //Lo que dura la animacion en completarse
      vsync: this
    );


    anim = Tween<double>(begin: 0 , end: 2 * pi)
        .animate(animCtrl)
        ..addListener(() {
          setState(() {}); //Cada vez que el animated cambia , se llama a setState
        })..addStatusListener((status) {
          if(status == AnimationStatus.completed) //si la animacion termina
            animCtrl.reverse(); //llamamos al metodo reverse (animCtrll va de 1 a 0)
          else if (status == AnimationStatus.dismissed)
            animCtrl.forward();
      });

    animCtrl.forward(); //comienza la animacion
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: anim.value,
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

  @override
  void dispose() {
    animCtrl.dispose();
    super.dispose();
  }

}
