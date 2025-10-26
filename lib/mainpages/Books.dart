import 'package:flutter/material.dart';
import 'package:marathi_books/mainpages/ClassDetail.dart';

class Books extends StatefulWidget {
  const Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {

  List<String> medium = ['Marathi\nMedium','Urdu\nMedium','Hindi\nMedium','English\nMedium','Syllabus','Previous\nYear\nPaper','Notes','English\nNCERT\nBooks','Hindi\nNCERT\nBooks','Urdu\nNCERT\nBooks','NCERT\nSolution'];

  List<Color> bgcolor = [Colors.deepPurple,Colors.blueGrey,Colors.green,
    Colors.pink,Colors.orange,Colors.grey,Colors.deepPurple,Colors.red,Colors.pinkAccent,Colors.green,Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 11,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context,int index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => ClassDetail(indexOfMedium: index),));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: bgcolor[index],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(medium[index],style: TextStyle
                        (color: Colors.white,fontSize: 35,fontWeight:
                      FontWeight.bold)
                        ,),
                    ),
                  ),
                ),
              ),
            );
          },
      ),
    );
  }
}
