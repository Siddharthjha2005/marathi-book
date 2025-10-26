import 'package:flutter/material.dart';

class Maths2Index extends StatefulWidget {
  const Maths2Index({super.key});

  @override
  State<Maths2Index> createState() => _Maths2IndexState();
}

class _Maths2IndexState extends State<Maths2Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mathematics And Stati..."),
        elevation: 5,
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
