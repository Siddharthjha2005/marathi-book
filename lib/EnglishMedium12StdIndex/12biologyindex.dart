import 'package:flutter/material.dart';

class BiologyIndex extends StatefulWidget {
  const BiologyIndex({super.key});

  @override
  State<BiologyIndex> createState() => _BiologyIndexState();
}

class _BiologyIndexState extends State<BiologyIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biology"),
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
