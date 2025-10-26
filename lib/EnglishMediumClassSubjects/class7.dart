import 'package:flutter/material.dart';

class Class7 extends StatefulWidget {
  const Class7({super.key});

  @override
  State<Class7> createState() => _Class7State();
}

class _Class7State extends State<Class7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 7"),
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
