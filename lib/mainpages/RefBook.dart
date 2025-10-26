import 'package:flutter/material.dart';

class Refbook extends StatelessWidget {
  const Refbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text("RefBook",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
