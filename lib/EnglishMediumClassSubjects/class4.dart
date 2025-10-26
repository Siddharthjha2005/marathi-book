import 'package:flutter/material.dart';

class Class4 extends StatefulWidget {
  const Class4({super.key});

  @override
  State<Class4> createState() => _Class4State();
}

class _Class4State extends State<Class4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 4"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.download),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
