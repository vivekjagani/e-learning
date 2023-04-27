import 'package:e_learning/admin/add%20pdf/pdf_list.dart';
import 'package:e_learning/admin/add%20video/video_list.dart';
import 'package:e_learning/admin/faculti_list.dart';
import 'package:e_learning/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appYellowWhite,
      appBar: AppBar(
        backgroundColor: appPrimaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Admin',
          style: TextStyle(color: appBlackColor),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 36, 111, 103)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Facultielist(),
                        ));
                  },
                  child: const Center(
                      child: Text(
                    'Faculties',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 36, 111, 103)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoList(),
                        ));
                  },
                  child: const Center(
                      child: Text(
                    'add video',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 36, 111, 103)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfListScreen(),
                        ));
                  },
                  child: const Center(
                      child: Text(
                    'add pdf',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 36, 111, 103)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Center(
                      child: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
