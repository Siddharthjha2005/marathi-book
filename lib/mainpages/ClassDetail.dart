import 'package:flutter/material.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class1.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class10.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class11.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class12.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class2.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class3.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class4.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class5.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class6.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class7.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class8.dart';
import 'package:marathi_books/EnglishMediumClassSubjects/class9.dart';

class ClassDetail extends StatefulWidget {
  final int indexOfMedium;
  const ClassDetail({super.key,required this.indexOfMedium});

  @override
  State<ClassDetail> createState() => _ClassDetailState();
}

class _ClassDetailState extends State<ClassDetail> {

  List<String> medium = ['Marathi Medium','Urdu Medium','Hindi Medium','English Medium','Syllabus','Previous Year Paper','Notes','English NCERT Books','Hindi NCERT Books','Urdu NCERT Books','NCERT Solution'];

  List<String> std = ["XII","XI","X","IX","VIII","VII","VI","V","IV","III","II","I"];

  List<String> classes = ["Class 12","Class 11","Class 10","Class 9","Class 8","Class 7","Class 6","Class 5","Class 4","Class 3","Class 2","Class 1"];

  void mediumClass(int index) {
    if(medium[widget.indexOfMedium]=="Marathi Medium") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="Urdu Medium") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="Hindi Medium") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="English Medium") {
      if(classes[index] == "Class 12") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class12(),));
      }
      else if(classes[index] == "Class 11") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class11(),));
      }
      else if(classes[index] == "Class 10") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class10(),));
      }
      else if(classes[index] == "Class 9") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class9(),));
      }
      else if(classes[index] == "Class 8") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class8(),));
      }
      else if(classes[index] == "Class 7") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class7(),));
      }
      else if(classes[index] == "Class 6") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class6(),));
      }
      else if(classes[index] == "Class 5") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class5(),));
      }
      else if(classes[index] == "Class 4") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class4(),));
      }
      else if(classes[index] == "Class 3") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class3(),));
      }
      else if(classes[index] == "Class 2") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class2(),));
      }
      else if(classes[index] == "Class 1") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Class1(),));
      }
    }
    else if(medium[widget.indexOfMedium]=="Syllabus") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="Previous Year Paper") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="Notes") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="English NCERT Books") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="Hindi NCERT Books") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="Urdu NCERT Books") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
    else if(medium[widget.indexOfMedium]=="NCERT Solution") {
      if(classes[index] == "Class 12") {

      }
      else if(classes[index] == "Class 11") {

      }
      else if(classes[index] == "Class 10") {

      }
      else if(classes[index] == "Class 9") {

      }
      else if(classes[index] == "Class 8") {

      }
      else if(classes[index] == "Class 7") {

      }
      else if(classes[index] == "Class 6") {

      }
      else if(classes[index] == "Class 5") {

      }
      else if(classes[index] == "Class 4") {

      }
      else if(classes[index] == "Class 3") {

      }
      else if(classes[index] == "Class 2") {

      }
      else if(classes[index] == "Class 1") {

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(medium[widget.indexOfMedium]),
            bottom: TabBar(
              tabs: [
                Tab(text: "New",),
                Tab(text: "Old",),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: GridView.builder(
                  itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (BuildContext context,int index) {
                      return GestureDetector(
                        onTap: (){
                          mediumClass(index);
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
              Padding(
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
            ],
          ),
        ),
    );
  }
}
