import 'package:flutter/material.dart';

class PhysicsIndex extends StatefulWidget {
  const PhysicsIndex({super.key});

  @override
  State<PhysicsIndex> createState() => _PhysicsIndexState();
}

class _PhysicsIndexState extends State<PhysicsIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Physics"),
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
