import 'dart:io';

import 'package:e_learning/admin/add_faculties.dart';
import 'package:e_learning/admin/facultis_cnt.dart';
import 'package:e_learning/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Facultielist extends StatelessWidget {
  const Facultielist({super.key});

  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(FacultiesCnt());
    return Scaffold(
        backgroundColor: appYellowWhite,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: appBlackColor),
          backgroundColor: appPrimaryColor,
          title: const Text(
            'Facultie List',
            style: TextStyle(color: appBlackColor),
          ),
        ),
        body: Obx(
          () => Column(
            children: [
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: cnt.facultiesData.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 70,
                      width: double.infinity,
                      child: ListTile(
                        trailing: IconButton(
                          icon: const Icon(Icons.cancel),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Delete Profile'),
                                content: const Text(
                                    "Are you sure you wan't to delete profile??"),
                                actions: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Cancel')),
                                  ElevatedButton(
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  appPrimaryColor)),
                                      onPressed: () {
                                        cnt.facultiesData.removeAt(index);
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Delete')),
                                ],
                              ),
                            );
                          },
                        ),
                        leading: Container(
                          height: 70,
                          width: 70,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: cnt.facultiesData[index].image.isEmpty
                              ? const Icon(Icons.person)
                              : Image.file(File(cnt.facultiesData[index].image),
                                  fit: BoxFit.cover),
                        ),
                        title: Text(cnt.facultiesData[index].name),
                        subtitle: Text(cnt.facultiesData[index].email),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddFaculties(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.black),
                  ),
                  child: const Text(
                    'add Faculties',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
