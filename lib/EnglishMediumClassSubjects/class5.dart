import 'package:flutter/material.dart';

class Class5 extends StatefulWidget {
  const Class5({super.key});

  @override
  State<Class5> createState() => _Class5State();
}

class _Class5State extends State<Class5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 5"),
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
