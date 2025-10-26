import 'package:flutter/material.dart';
import 'package:marathi_books/EnglishMedium12StdIndex/12biologyindex.dart';
import 'package:marathi_books/EnglishMedium12StdIndex/12chemistryindex.dart';
import 'package:marathi_books/EnglishMedium12StdIndex/12englishindex.dart';
import 'package:marathi_books/EnglishMedium12StdIndex/12hindiindex.dart';
import 'package:marathi_books/EnglishMedium12StdIndex/12maths1index.dart';
import 'package:marathi_books/EnglishMedium12StdIndex/12maths2index.dart';
import 'package:marathi_books/EnglishMedium12StdIndex/12physicsindex.dart';

class Class12 extends StatefulWidget {
  const Class12({super.key});

  @override
  State<Class12> createState() => _Class12State();
}

class _Class12State extends State<Class12> {

  List<String> subjectname = ["Mathematics And Statistics\n(Arts And Science)"
      " Part - I","Mathematics And Statistics\n(Arts And Science) Part - II",
    "English","Hindi","Physics","Chemistry","Biology"];

  List<String> number = ["1","2","3","4","5","6","7"];

  List<String> views = ["55.09K views","38.47K views","45.99K views","38.47K "
  "views","63.52K views","67.87K views","56.88K views"];

  List<Color> bgcolor = [Colors.yellow,Colors.red,Colors.purple,Colors
      .orange,Colors.green,Colors.blue,Colors.deepOrangeAccent];

  void selectSubject(int index) {
    if(index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Maths1Index(),));
    }
    else if(index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Maths2Index(),));
    }
    else if(index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => EnglishIndex(),));
    }
    else if(index == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HindiIndex(),));
    }
    else if(index == 4) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => PhysicsIndex(),));
    }
    else if(index == 5) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ChemistryIndex(),));
    }
    else if(index == 6) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => BiologyIndex(),));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 12"),
        elevation: 5,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20,),
          Icon(Icons.download),
          SizedBox(width: 10,),
        ],
      ),
      body: ListView.builder(
        itemCount: subjectname.length,
          itemBuilder: (BuildContext context,int index) {
            return  GestureDetector(
              onTap: () {
                selectSubject(index);
              },
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Material(
                  elevation: 3,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 6),
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text(number[index],style: TextStyle(color: Colors.white),),
                        backgroundColor: bgcolor[index],
                      ),
                      title: Text(subjectname[index],style: TextStyle
                        (fontWeight: FontWeight.bold,fontSize: 13),),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.remove_red_eye_outlined,color: Colors
                              .grey,size: 12,),
                          SizedBox(width: 5,),
                          Text(views[index],style: TextStyle(color: Colors.grey,
                              fontSize:
                          12),),
                        ],
                      ),
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