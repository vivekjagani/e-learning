import 'package:e_learning/admin/add%20pdf/add_pdf.dart';
import 'package:e_learning/admin/add%20pdf/pdf_cnt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PdfListScreen extends StatelessWidget {
  const PdfListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(PdfCnt());
    return Scaffold(
      appBar: AppBar(title: const Text('Pdf List')),
      body: Column(
        children: [
          SizedBox(
              height: Get.height * 0.79,
              child: Obx(
                () => ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        height: 70,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: ListTile(
                          title: Text(cnt.syllabusList[index].title),
                          subtitle: Text(cnt.syllabusList[index].subtitle),
                          trailing: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () {
                              cnt.syllabusList.remove(cnt.syllabusList[index]);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: cnt.syllabusList.length,
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: SizedBox(
                width: Get.width,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    child: const Text(
                      'Add Pdf',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Get.to(const AddPdf());
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
