import 'package:flutter/material.dart';

class HindiIndex extends StatefulWidget {
  const HindiIndex({super.key});

  @override
  State<HindiIndex> createState() => _HindiIndexState();
}

class _HindiIndexState extends State<HindiIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hindi"),
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
