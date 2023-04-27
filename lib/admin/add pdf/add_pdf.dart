import 'package:e_learning/admin/add%20pdf/pdf_cnt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class AddPdf extends StatelessWidget {
  const AddPdf({super.key});

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(PdfCnt());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Pdf'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: cnt.titleController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'Add Link of Pdf',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            // ElevatedButton(onPressed: () {}, child: const Text('picked Pdf')),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: cnt.subTitleController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'Title',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: cnt.urlController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'SubTitle',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  child: const Text(
                    'Add Pdf',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    cnt.syllabusList.add(SyllabusModel(
                        title: cnt.titleController.text,
                        subtitle: cnt.subTitleController.text,
                        url: cnt.urlController.text));
                    Get.back();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
