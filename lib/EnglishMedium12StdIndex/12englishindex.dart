import 'package:flutter/material.dart';

class EnglishIndex extends StatefulWidget {
  const EnglishIndex({super.key});

  @override
  State<EnglishIndex> createState() => _EnglishIndexState();
}

class _EnglishIndexState extends State<EnglishIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
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
