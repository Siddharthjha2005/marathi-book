import 'package:flutter/material.dart';

class Class2 extends StatefulWidget {
  const Class2({super.key});

  @override
  State<Class2> createState() => _Class2State();
}

class _Class2State extends State<Class2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 2"),
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
