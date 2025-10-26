import 'package:flutter/material.dart';

class Class6 extends StatefulWidget {
  const Class6({super.key});

  @override
  State<Class6> createState() => _Class6State();
}

class _Class6State extends State<Class6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 6"),
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
