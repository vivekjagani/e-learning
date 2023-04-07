import 'package:e_learning/admin/add%20pdf/pdf_cnt.dart';
import 'package:e_learning/dashboard_screens/screens/books/pdf_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BooksList extends StatelessWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(PdfCnt());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Books List'),
        ),
        body: Obx(
          () => ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(PdfViewerScreen(
                      url: cnt.syllabusList[index].url,
                      title: cnt.syllabusList[index].title,
                    ));
                  },
                  child: Container(
                    height: 60,
                    width: Get.width,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[200],
                    ),
                    child: ListTile(
                      title: Text(cnt.syllabusList[index].title),
                      subtitle: Text(cnt.syllabusList[index].subtitle),
                    ),
                  ),
                ),
              );
            },
            itemCount: cnt.syllabusList.length,
          ),
        ));
  }
}
