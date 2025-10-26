import 'package:flutter/material.dart';
import 'package:marathi_books/EnglishMedium12StdBasicPdf/basicpdf.dart';
import 'package:url_launcher/url_launcher.dart';


class Maths1Index extends StatefulWidget {
  const Maths1Index({super.key});

  @override
  State<Maths1Index> createState() => _Maths1IndexState();
}

class _Maths1IndexState extends State<Maths1Index> {

  List<String> number = ["1","2","3","4","5","6","7","8"];

  List<String> chaptername = ["Prelims","1. Mathematical Logic","2. Matrices","3. Trigonometric Functions","4. Pair of Straight Lines","5. Vectors","6. Line and Plane","7. Linear Programming"];

  List<String> views = ["55.09K views","38.47K views","45.99K views","38.47K "
      "views","63.52K views","67.87K views","56.88K views","55.09K views"];

  List<Color> bgcolor = [Colors.yellow,Colors.red,Colors.purple,Colors
      .orange,Colors.green,Colors.blue,Colors.deepOrangeAccent,Colors.pinkAccent];

  // void advancedPdf(int index) {
  //   final List<String> driveFileIds = [
  //     '1aOyLEDU9xKjdtuPedDdmZJVd7ZTKgUoG', // Prelims
  //     '1_b-fohPHUzlELPTcrvA7L9IC3gONUutX', // 1. Logic
  //     '1_b8mRv4US7KVkSBiqGUC_gwQcE1JQz8l', // 2. Matrices
  //     '1aOaeYs5Aeg6Q7Z7J5h8FJRQGvRgzp6TP', // 3. Trigonometry
  //     '', '', '', '' // Fill rest later
  //   ];
  //
  //   if(index < driveFileIds.length && driveFileIds[index].isNotEmpty) {
  //     // final url = 'https://drive.google.com/uc?export=view&id=${driveFileIds[index]}';
  //     final url = 'https://drive.google'
  //         '.com/file/d/${driveFileIds[index]}/view?usp=drivesdk';
  //     openWithGoogleDriveViewer(url);
  //   }
  //   else {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This pdf isn't available right now")));
  //   }
  // }


  Future<void> openWithGoogleDriveViewer(BuildContext context, int index) async {
    final List<String> driveFileIds = [
      '1aOyLEDU9xKjdtuPedDdmZJVd7ZTKgUoG',
      '1_b-fohPHUzlELPTcrvA7L9IC3gONUutX',
      '1_b8mRv4US7KVkSBiqGUC_gwQcE1JQz8l',
      '1aOaeYs5Aeg6Q7Z7J5h8FJRQGvRgzp6TP',
      '', '', '', ''
    ];

    if (index < driveFileIds.length && driveFileIds[index].isNotEmpty) {
      final driveViewerUrl = 'https://drive.google.com/file/d/${driveFileIds[index]}/view?usp=drivesdk';
      final Uri driveUri = Uri.parse(driveViewerUrl);
      print("Attempting to open: $driveViewerUrl");

      if (!await launchUrl(driveUri, mode: LaunchMode.externalApplication)) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Could not open the PDF")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This PDF isn't available right now")));
    }
  }

  // Future<void> openWithGoogleDriveViewer() async {
  //   final driveViewerUrl = 'https://drive.google.com/file/d/1_b-fohPHUzlELPTcrvA7L9IC3gONUutX/view?usp=drivesdk';
  //
  //   if (await canLaunchUrl(Uri.parse(driveViewerUrl))) {
  //     await launchUrl(Uri.parse(driveViewerUrl), mode: LaunchMode
  //         .externalApplication);
  //   } else {
  //     throw 'Could not launch Google Drive Viewer';
  //   }
  // }


  void basicPdf(int index) {
    if(index==0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          Basicpdf(pdfpath: 'assets/pdf/Prelims.pdf'),));
    }
    else if(index==1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Basicpdf(pdfpath: 'assets/pdf/1. Mathematical Logic.pdf'),));
    }
    else if(index==2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          Basicpdf(pdfpath: 'assets/pdf/2. Matrices.pdf'),));
    }
    else if(index==3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          Basicpdf(pdfpath: 'assets/pdf/3. Trigonometric Functions.pdf'),));
    }
    else if(index==4) {

    }
    else if(index==5) {

    }
    else if(index==6) {

    }
    else if(index==7) {

    }
  }


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
      body: ListView.builder(
        itemCount: chaptername.length,
        itemBuilder: (BuildContext context,int index) {
          return Padding(
            padding: EdgeInsets.all(4.0),
            child: Material(
              elevation: 3,
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 4,vertical: 0),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: bgcolor[index],
                  child: Text(number[index],style: TextStyle(color: Colors.white),),
                ),
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(chaptername[index],style: TextStyle(fontWeight:
                        FontWeight.bold,fontSize: 14),),
                        Row(
                          children: [
                            Icon(Icons.remove_red_eye_outlined,color: Colors
                                .grey,size: 14,),
                            SizedBox(width: 5,),
                            Text(views[index],style: TextStyle(color: Colors.grey,
                                fontSize:
                                14),),
                          ],
                        ),
                      ],
                    ),
                    Divider(thickness: 1,),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              openWithGoogleDriveViewer(context,index);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4,
                                  vertical: 2),
                              decoration: BoxDecoration(
                                color: Color(0xFF7ae4e6),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text("ADVANCED PDF VIEWER",style: TextStyle
                                (fontSize: 12,color: Colors.black,fontWeight:
                              FontWeight.bold),),
                            ),
                          ),
                          SizedBox(width: 10,),
                          VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                            width: 2,
                          ),
                          SizedBox(width: 15,),
                          GestureDetector(
                            onTap: () {
                              basicPdf(index);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4,
                                  vertical: 2),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text("BASIC PDF VIEWER",style: TextStyle
                                (fontSize: 12,color: Colors.black,fontWeight:
                              FontWeight.bold),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
