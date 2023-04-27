import 'dart:io';

import 'package:e_learning/admin/facultis_cnt.dart';
import 'package:e_learning/constant.dart';
import 'package:e_learning/controller.dart';
import 'package:e_learning/facultie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddFaculties extends StatelessWidget {
  const AddFaculties({super.key});

  @override
  Widget build(BuildContext context) {
    // XFile? pickedFile;

    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController qualificationController = TextEditingController();
    TextEditingController experianceController = TextEditingController();

    final cnt = Get.put(FacultiesCnt());
    final imageCnt = Get.put(ImageCnt());

    return Scaffold(
        backgroundColor: appYellowWhite,
        appBar: AppBar(
          backgroundColor: appPrimaryColor,
          iconTheme: const IconThemeData(color: appBlackColor),
          title: const Text(
            'Add Faculties',
            style: TextStyle(color: appBlackColor),
          ),
        ),
        body: Obx(
          () => SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(appPrimaryColor)),
                            onPressed: () {
                              // cnt.getImageValue();
                              imageCnt.getPicker(
                                  context: context, source: ImageSource.camera);
                            },
                            child: const Text(
                              'Camera',
                              style: TextStyle(color: appBlackColor),
                            )),
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(appPrimaryColor)),
                            onPressed: () {
                              // cnt.getImageValue();
                              imageCnt.getPicker(
                                  context: context,
                                  source: ImageSource.gallery);
                            },
                            child: const Text(
                              'Gallery',
                              style: TextStyle(color: appBlackColor),
                            )),
                      ],
                    ),

                    imageCnt.getImage == ''
                        ? const SizedBox()
                        : Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: appPrimaryColor),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                File(imageCnt.getImage),
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        cursorColor: appBlackColor,
                        controller: nameController,
                        // keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            hintText: 'Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        cursorColor: appBlackColor,
                        controller: emailController,
                        // keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        cursorColor: appBlackColor,
                        controller: numberController,
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            hintText: 'number',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        cursorColor: appBlackColor,
                        controller: qualificationController,
                        // keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            hintText: 'Qualifications',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        cursorColor: appBlackColor,
                        controller: experianceController,
                        // keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: appBlackColor, width: 2),
                            ),
                            hintText: 'Experiance',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(appPrimaryColor),
                          ),
                          child: const Text(
                            'Add Faculties',
                            style: TextStyle(color: appBlackColor),
                          ),
                          onPressed: () {
                            cnt.facultiesData.add(
                              FacultiesData(
                                image: imageCnt.getImage.toString(),
                                name: nameController.text,
                                email: emailController.text,
                                number: int.parse(numberController.text),
                                degree: qualificationController.text,
                                experiance: experianceController.text,
                              ),
                            );
                            Navigator.pop(context);
                            imageCnt.getImage = '';
                          },
                        ),
                      ),
                    ),
                    // Image.file(imageFile),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
