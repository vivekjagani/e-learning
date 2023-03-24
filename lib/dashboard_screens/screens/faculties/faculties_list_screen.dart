import 'dart:io';

import 'package:e_learning/admin/facultis_cnt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'faculties.dart';

class FacultiesListScreen extends StatelessWidget {
  const FacultiesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(FacultiesCnt());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Faculties",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FacultiesScreen(
                          image: cnt.facultiesData[index].image,
                          email: cnt.facultiesData[index].email,
                          name: cnt.facultiesData[index].name,
                          number: cnt.facultiesData[index].number,
                        ),
                      ));
                },
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 220, 220, 220)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100]),
                            child: cnt.facultiesData[index].image.isEmpty
                                ? const Icon(Icons.person)
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.file(
                                        File(cnt.facultiesData[index].image),
                                        fit: BoxFit.cover),
                                  ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name : ${cnt.facultiesData[index].name}'),
                            Text(
                                'Number : ${cnt.facultiesData[index].number.toString()}'),
                          ],
                        )),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: cnt.facultiesData.length),
    );
  }
}
