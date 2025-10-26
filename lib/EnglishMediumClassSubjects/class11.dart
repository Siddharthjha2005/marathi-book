import 'package:flutter/material.dart';

class Class11 extends StatefulWidget {
  const Class11({super.key});

  @override
  State<Class11> createState() => _Class11State();
}

class _Class11State extends State<Class11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 11"),
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
