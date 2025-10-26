import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Basicpdf extends StatefulWidget {
  final String pdfpath;
  const Basicpdf({super.key,required this.pdfpath});

  @override
  State<Basicpdf> createState() => _BasicpdfState();
}

class _BasicpdfState extends State<Basicpdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF"),
        actions: [
          Icon(Icons.fullscreen),
          SizedBox(width: 15,),
          Icon(Icons.copy),
          SizedBox(width: 15,),
          Icon(Icons.more_vert),
          SizedBox(width: 10,),
        ],
      ),
      body: SfPdfViewer.asset(widget.pdfpath),
    );
  }
}
