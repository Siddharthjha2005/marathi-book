import 'package:flutter/material.dart';

class ChemistryIndex extends StatefulWidget {
  const ChemistryIndex({super.key});

  @override
  State<ChemistryIndex> createState() => _ChemistryIndexState();
}

class _ChemistryIndexState extends State<ChemistryIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chemistry"),
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
