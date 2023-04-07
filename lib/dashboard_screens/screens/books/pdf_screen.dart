import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerScreen extends StatelessWidget {
  String title;
  String url;
  PdfViewerScreen({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    var pdfViewerController = PdfViewerController();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const PDF().cachedFromUrl(
          'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf'),
    );
  }
}
