import 'package:flutter/material.dart';

class Splesh extends StatefulWidget {
  const Splesh({Key? key}) : super(key: key);

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, 'dash');
    },);
    return Scaffold(
      body: Center(
         child: Image.asset("assets/images/13.jpeg"),
      ),
    );
  }
}
