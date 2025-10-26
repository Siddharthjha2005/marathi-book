import 'package:flutter/material.dart';

class Class10 extends StatefulWidget {
  const Class10({super.key});

  @override
  State<Class10> createState() => _Class10State();
}

class _Class10State extends State<Class10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 10"),
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
