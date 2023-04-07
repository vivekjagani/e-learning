import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PdfCnt extends GetxController {
  TextEditingController titleController = TextEditingController();
  TextEditingController subTitleController = TextEditingController();
  TextEditingController urlController = TextEditingController();

  List<SyllabusModel> syllabusList = [
    SyllabusModel(
        subtitle: 'data',
        title: 'title',
        url: 'https://www.clickdimensions.com/links/TestPDFfile.pdf'),
    SyllabusModel(
        subtitle: 'data',
        title: 'title',
        url: 'https://www.clickdimensions.com/links/TestPDFfile.pdf'),
    SyllabusModel(
        subtitle: 'data',
        title: 'title',
        url: 'https://www.clickdimensions.com/links/TestPDFfile.pdf'),
    SyllabusModel(
        subtitle: 'data',
        title: 'title',
        url: 'https://www.clickdimensions.com/links/TestPDFfile.pdf'),
  ].obs;
}

class SyllabusModel {
  String url;
  String title;
  String subtitle;

  SyllabusModel(
      {required this.subtitle, required this.title, required this.url});
}
