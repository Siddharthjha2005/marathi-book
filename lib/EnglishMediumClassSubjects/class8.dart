import 'package:flutter/material.dart';

class Class8 extends StatefulWidget {
  const Class8({super.key});

  @override
  State<Class8> createState() => _Class8State();
}

class _Class8State extends State<Class8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 8"),
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
