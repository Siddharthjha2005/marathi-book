import 'package:flutter/material.dart';

class Class9 extends StatefulWidget {
  const Class9({super.key});

  @override
  State<Class9> createState() => _Class9State();
}

class _Class9State extends State<Class9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 9"),
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
