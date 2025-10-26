import 'package:flutter/material.dart';

class Solutions extends StatefulWidget {
  const Solutions({super.key});

  @override
  State<Solutions> createState() => _SolutionsState();
}

class _SolutionsState extends State<Solutions> {

  List<String> std = ["XII","XI","X","IX","VIII","VII","VI","V","IV","III","II","I"];

  List<String> classes = ["Class 12","Class 11","Class 10","Class 9","Class 8","Class 7","Class 6","Class 5","Class 4","Class 3","Class 2","Class 1"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solution"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context,int index) {
            return GestureDetector(
              onTap: (){

              },
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    child: Center(child: Text(std[index],style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
                  ),
                  Text(classes[index],style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

